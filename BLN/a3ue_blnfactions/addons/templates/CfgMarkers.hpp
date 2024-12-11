class CfgMarkers 
{
	class flag_NATO;

	class a3a_flag_BLN: flag_NATO 
	{
		name = "BLN";
		icon = QPATHTOFOLDER(Pictures\Markers\BLNmar.paa);
		texture = QPATHTOFOLDER(Templates\BLN\BLN.paa);
	};

	class a3a_flag_BLNe: a3a_flag_BLN 
	{
		name = "BLN ";
		icon = QPATHTOFOLDER(Pictures\Markers\BLNmare.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\BLNe.paa);
	};


	class a3a_flag_BLNex: a3a_flag_BLNe 
	{
		name = "BLN  ";
		icon = QPATHTOFOLDER(Pictures\Markers\BLNmarex.paa);
		texture = QPATHTOFOLDER(Pictures\Markers\BLNex.paa);
	};
};