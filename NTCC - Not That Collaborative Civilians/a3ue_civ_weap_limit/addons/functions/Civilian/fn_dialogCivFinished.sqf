/*
    Author:
        MaxxLite
    
    Description:
        Handles the intel/civ response from dialogCiv
    
    Params:
        _unit <Default: ObjNull>
        _caller <Default: ObjNull>
    
    Dependencies:
        N/A
    
    Scope:
        Server
    
    Environment:
        Unscheduled
    
    Usage:
        [_unit, _caller] call A3A_fnc_dialogCivFinished;
    
    Return:
        true (success) false (failure)
*/

//Catertico's  changes:
//Attempts to dialog can sum probabilities for a QRF call.
//The QRF chances will increase by:
    // 0 to 10% after each interaction
    // 10 to 75% after each failed attempt if not undercover
    // 0 to 25% after each failed attempt if undercover
//Mission chance was reduced from 50% to 35%

#include "..\script_component.hpp"
params [["_unit", ObjNull], ["_caller", ObjNull]];

if (_unit isEqualTo ObjNull || _caller isEqualTo ObjNull) exitWith {nil};

if (_unit getVariable ["A3U_civDialogHasSpoken", false]) exitWith {
    private _failMessage = selectRandom [
        localize "STR_antistasi_actions_talk_with_civ_fail_alreadyspoken1", 
        localize "STR_antistasi_actions_talk_with_civ_fail_alreadyspoken2"
    ];

    [_unit, _failMessage] remoteExec ["globalChat", _caller];
};


if (isNil "_QRFCivCallChance" || { _QRFCivCallChance <= 0 }) then {
    _QRFCivCallChance = 0;
};

private _possibleMarkers = [citiesX, _unit, true] call A3A_fnc_findIfNearAndHostile;

private _isDialogSuccessful = ((4 >= random 10) && (_possibleMarkers isNotEqualTo []));//deleted "captive _caller &&" so yo can talk to people even if not undercover  

if (_isDialogSuccessful) exitWith {
    private _roll = random 100;
    private _missionInProgress = missionNamespace getVariable ["A3U_dialogCivMissionInProgress", false];

    if (_roll > 65 && {_missionInProgress isEqualTo false}) then {
        private _civRequestedMissions = ["A3A_fnc_RES_Refugees", "A3A_fnc_RES_Informer", "A3A_fnc_RES_Prisoners"];
        if (tierWar >= 5) then {_civRequestedMissions pushBack "A3A_fnc_RES_Deserters"};
        
        private _civResponse = "";
        private _missionMarker = selectRandom _possibleMarkers;
        private _civRequestedMission = selectRandom _civRequestedMissions;
        switch (_civRequestedMission) do
        {
            case "A3A_fnc_RES_Refugees":
            {
                _civResponse = selectRandom [
                    "STR_antistasi_actions_talk_with_civ_success_ref1", 
                    "STR_antistasi_actions_talk_with_civ_success_ref2"
                ];
            };

            case "A3A_fnc_RES_Informer":
            {
                _civResponse = selectRandom [
                    "STR_antistasi_actions_talk_with_civ_success_info1", 
                    "STR_antistasi_actions_talk_with_civ_success_info2"
                ];
            };

            case "A3A_fnc_RES_Prisoners":
            {
                _civResponse = selectRandom [
                    "STR_antistasi_actions_talk_with_civ_success_prisoners1", 
                    "STR_antistasi_actions_talk_with_civ_success_prisoners2"
                ];
            };
            
            case "A3A_fnc_RES_Deserters":
            {
                _civResponse = selectRandom [
                    "STR_antistasi_actions_talk_with_civ_success_Deserters1", 
                    "STR_antistasi_actions_talk_with_civ_success_Deserters2"
                ];
            };
        };

        [_unit, (localize _civResponse)] remoteExec ["globalChat", _caller];
        [[_missionMarker], _civRequestedMission] remoteExec ["A3A_fnc_scheduler",2];
        missionNamespace setVariable ["A3U_dialogCivMissionInProgress", true, true];

        if (hideEnemyMarkers) then {
            if (30 >= (random 100)) then {
                [
                    {
                        private _message = selectRandom [
                            "STR_antistasi_actions_talk_with_civ_success_zone_reveal1", 
                            "STR_antistasi_actions_talk_with_civ_success_zone_reveal2"
                        ];

                        [(_this#0), (localize _message)] remoteExec ["globalChat", _caller];
                    },
                    [_unit], 
                    5 // 5s is around the time it takes me to read the entire paragraph
                ] call CBA_fnc_waitAndExecute;

                [1, "A civilian has revealed a zone"] call A3U_fnc_revealRandomZones;
            };
        };
    } else {
        private _intel = ["Civilian", Occupants] call A3A_fnc_selectIntel;
        private _intelMessage = "";

        switch (_intel) do 
        {
            case 502: // dealer
            {
                _intelMessage = selectRandom [
                    "STR_antistasi_actions_talk_with_civ_success_dealer1", 
                    "STR_antistasi_actions_talk_with_civ_success_dealer2"
                ];
            };
            case 300: // weapons
            {
                _intelMessage = selectRandom [
                    "STR_antistasi_actions_talk_with_civ_success_weapons1", 
                    "STR_antistasi_actions_talk_with_civ_success_weapons2"
                ];
            };
            case 301: // traitor
            {
                _intelMessage = selectRandom [
                    "STR_antistasi_actions_talk_with_civ_success_traitor1", 
                    "STR_antistasi_actions_talk_with_civ_success_traitor2"
                ];
            };
            case 302: // money
            {
                _intelMessage = selectRandom [
                    "STR_antistasi_actions_talk_with_civ_success_money1", 
                    "STR_antistasi_actions_talk_with_civ_success_money2"
                ];
            };
            case 102: // decryption key
            {
                _intelMessage = selectRandom [
                    "STR_antistasi_actions_talk_with_civ_success_decryption1", 
                    "STR_antistasi_actions_talk_with_civ_success_decryption2"
                ];
            };
            default {_intelMessage = "STR_antistasi_actions_talk_with_civ_fail1";
            _QRFCivCallChance = _QRFCivCallChance + (random 25); // adds 0 to 25% chances of a QRF being sent after each failed attempt
            };
        };
        
        [_unit, (localize _intelMessage)] remoteExec ["globalChat", _caller];
    };

    _unit setVariable ["A3U_civDialogHasSpoken", true, true];

    true
};

private _failMessage = selectRandom [
    "STR_antistasi_actions_talk_with_civ_fail1", 
    "STR_antistasi_actions_talk_with_civ_fail2", 
    "STR_antistasi_actions_talk_with_civ_fail3"
];

if !(captive _caller) then { // {aggressionOccupants >= random [30, 50, 70]}
    _failMessage = selectRandom [
        "STR_antistasi_actions_talk_with_civ_fail_notundercover1",
        "STR_antistasi_actions_talk_with_civ_fail_notundercover2"
    ];
    _QRFCivCallChance = _QRFCivCallChance + 25 + (random 75); // adds 25 to 75 chances of a QRF being sent after each attempt if not undercover
 };

    _QRFCivCallChance = _QRFCivCallChance + (random 10); // adds 0 to 10% chances of a QRF being sent after any attempt

//QRF calling
if (_QRFCivCallChance > random 100) then {
["QRF", Occupants, "attack", 300, player, getPosATL player, 0.8, 0] remoteExec ["A3A_fnc_createSupport", 2];
_QRFCivCallChance = 0; // reset chance after QRF call
};

[_unit, (localize _failMessage)] remoteExec ["globalChat", _caller];

_unit setVariable ["A3U_civDialogHasSpoken", true, true];

false