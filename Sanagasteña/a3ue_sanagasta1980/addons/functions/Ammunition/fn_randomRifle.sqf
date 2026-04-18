/*
    Override: A3A_fnc_randomRifle
    Extender: ArgVSChi1980

    WHY THIS EXISTS
    ---------------
    The vanilla implementation has two problems when used with FWA weapons:

    Problem 1 — Fallback chain dumps into SMGs too eagerly:
        fn_randomRifle falls: Rifles → SMGs → everything else.
        FWA rifles with ≤10 units in the arsenal are fully excluded from the
        "Rifles" pool (ITEM_MIN threshold in fn_generateRebelGear). When the
        pool is empty, riflemen and snipers fall straight into the SMG pool
        and get pistol-caliber weapons instead of long arms.

    Problem 2 — FWA weapon miscategorisation:
        If FWA defines some SMGs using type = "AssaultRifle" (type flag 1)
        in their CfgWeapons, fn_equipmentClassToCategories places them in
        the "Rifles" pool. Combined with any weight asymmetry, they can
        dominate the draw over actual FWA rifles.

    FIX
    ---
    - For long-arm roles (Rifles, SniperRifles, MachineGuns, GrenadeLaunchers):
      the fallback chain exhausts every other long-arm category before ever
      touching SMGs or Handguns.
    - Within each pool, weights are stripped and selectRandom is used,
      so a FWA rifle with only 5 units competes equally with anything else
      that made it into the pool — quantity asymmetry can no longer silently
      crowd it out.
    - SMG role (Medic) keeps its normal fallback to Rifles, matching intent.

    Parameters:
        0. <STRING> Preferred weapon type ("Rifles", "MachineGuns", etc.)

    Returns:
        <STRING> Weapon classname, or "" if nothing is available at all.

    Environment:
        Scheduled, any machine (matches original).
*/

params ["_weaponType"];

// Keep the sync call — makes sure rebelGear is up-to-date on this machine.
call A3A_fnc_fetchRebelGear;

// -----------------------------------------------------------------------
// Helper: extract classnames from a weighted [class, weight, ...] pool,
// dropping empty-string placeholders (used by armour slots, not weapons).
// -----------------------------------------------------------------------
private _fnc_classes = {
    params ["_pool"];
    private _out = [];
    for "_i" from 0 to (count _pool - 1) step 2 do {
        private _c = _pool select _i;
        if (_c != "") then { _out pushBack _c };
    };
    _out
};

// -----------------------------------------------------------------------
// Helper: merge multiple category pools into one flat classname list,
// skipping empty categories silently.
// -----------------------------------------------------------------------
private _fnc_merge = {
    params ["_types"];
    private _out = [];
    { _out append ([A3A_rebelGear get _x] call _fnc_classes) } forEach _types;
    _out
};

// -----------------------------------------------------------------------
// Build the candidate list for this role.
//
// Priority rule: every long-arm category is tried before SMGs/Handguns.
// -----------------------------------------------------------------------
private _candidates = [];

switch (_weaponType) do {

    // ── Rifleman, Grenadier, Squad Leader, etc. ──────────────────────────
    case "Rifles";
    case "GrenadeLaunchers": {
        // 1st: exactly what was asked for
        _candidates = ([A3A_rebelGear get _weaponType] call _fnc_classes);

        // 2nd: any other long arm before resorting to pistol-calibre
        if (_candidates isEqualTo []) then {
            _candidates = (["SniperRifles", "MachineGuns", "Shotguns", "GrenadeLaunchers", "Rifles"]
                          - [_weaponType]) call _fnc_merge;
        };

        // Last resort only: SMGs, then Handguns
        if (_candidates isEqualTo []) then {
            _candidates = (["SMGs", "Handguns"]) call _fnc_merge;
        };
    };

    // ── Sniper / Marksman ────────────────────────────────────────────────
    case "SniperRifles": {
        _candidates = ([A3A_rebelGear get "SniperRifles"] call _fnc_classes);

        if (_candidates isEqualTo []) then {
            // A marksman with a rifle is fine; anything beats an SMG
            _candidates = (["Rifles", "MachineGuns", "Shotguns"]) call _fnc_merge;
        };

        if (_candidates isEqualTo []) then {
            _candidates = (["SMGs", "Handguns"]) call _fnc_merge;
        };
    };

    // ── Machine Gunner ───────────────────────────────────────────────────
    case "MachineGuns": {
        _candidates = ([A3A_rebelGear get "MachineGuns"] call _fnc_classes);

        if (_candidates isEqualTo []) then {
            _candidates = (["Rifles", "SniperRifles", "Shotguns"]) call _fnc_merge;
        };

        if (_candidates isEqualTo []) then {
            _candidates = (["SMGs", "Handguns"]) call _fnc_merge;
        };
    };

    // ── Medic (intentionally uses SMGs) ──────────────────────────────────
    case "SMGs": {
        _candidates = ([A3A_rebelGear get "SMGs"] call _fnc_classes);

        // Medic with a rifle is still better than nothing
        if (_candidates isEqualTo []) then {
            _candidates = (["Rifles", "Shotguns"]) call _fnc_merge;
        };

        if (_candidates isEqualTo []) then {
            _candidates = (["SniperRifles", "MachineGuns", "Handguns"]) call _fnc_merge;
        };
    };

    // ── Any other type passed in (future-proofing) ───────────────────────
    default {
        _candidates = ([A3A_rebelGear get _weaponType] call _fnc_classes);

        if (_candidates isEqualTo []) then {
            _candidates = (["Rifles", "SniperRifles", "MachineGuns", "Shotguns"]) call _fnc_merge;
        };

        if (_candidates isEqualTo []) then {
            _candidates = (["SMGs", "Handguns"]) call _fnc_merge;
        };
    };
};

// -----------------------------------------------------------------------
// Guard: nothing unlocked at all — return empty string so the caller can
// handle the absence gracefully (matches original implicit behaviour).
// -----------------------------------------------------------------------
if (_candidates isEqualTo []) exitWith { "" };

// Equal-probability pick — quantity in the arsenal no longer skews the draw.
selectRandom _candidates
