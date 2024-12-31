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
#define PISTOL_STOCK 20
#define RIFLE_STOCK 20
#define MZ_STOCK 50
#define NN_STOCK 50
#define PN_STOCK 25
#define MISC_STOCK 50

class cfgHALsStore 
{
	class categories 
	{
		#include "config\FAN.hpp"
	};

	class stores 
	{
		class stock_FAN
				{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"handgunsFAN",
				"riflesFAN", 
				"sniperRiflesFAN", 
				"mgFAN",
				"smgFAN",
				"launchersFAN",
				"launcherMagazinesFAN",
				"navigationFAN",
				"pointersFAN",
				"muzzlesFAN",
				"opticsFAN",
				"magazinesFAN",  
				"miscFAN"
			};
		};
	};
};
