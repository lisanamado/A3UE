/*
	Macro: ERROR_WITH_TITLE()

	Parameters:
	0: CLASSNAME - Classname of item
	1: PRICE - Default item price
	2: STOCK - Default item stock
__________________________________________________________________*/
#define ITEM(CLASSNAME, PRICE, STOCK)\
	class CLASSNAME {\
		price = PRICE;\
		stock = STOCK;\
	};

#define MAGAZINE_STOCK 100
#define LAUNCHER_STOCK 5
#define PISTOL_STOCK 25
#define RIFLE_STOCK 25
#define MZ_STOCK 50
#define NN_STOCK 50
#define PN_STOCK 25
#define MISC_STOCK 50

class cfgHALsStore 
{
	class categories 
	{
		#include "config\BLN.hpp"
	};

	class stores 
	{
		class BLN_stock_CUP
				{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsBLN",
				"riflesBLN", 
				"sniperRiflesBLN", 
				"smgBLN",
				"launchersBLN",
				"launcherMagazinesBLN",
				"navigationBLN",
				"muzzlesBLN",
				"opticsBLN",
				"magazinesBLN",  
				"miscBLN"
			};
		};
	};
};
