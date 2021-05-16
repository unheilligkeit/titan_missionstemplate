
params ["_row", "_column", "_pos"];

switch (_row) do {
//-----------------------------------------------------------------------------------
	//RWM
	case 11: {
		AS1001 = true;

		AS1100 = false;

		AS2101 = true; AS2102 = true; AS2103 = true; AS2104 = true;
		AS3101 = true; AS3102 = true; AS3103 = true;
		AS4101 = true; AS4102 = true;

		AS5101 = true; AS5201 = true;
	};
	case 12: {
		AS1001 = true;

		AS1200 = false;

		AS2201 = true; AS2202 = true; AS2203 = true; AS2204 = true;
		AS3201 = true; AS3202 = true; AS3203 = true;
		AS4201 = true; AS4202 = true;

		AS5101 = true; AS5201 = true; AS5301 = true;
	};
	case 13: {
		AS1001 = true;

		AS1300 = false;

		AS2301 = true; AS2302 = true; AS2303 = true; AS2304 = true;
		AS3301 = true; AS3302 = true; AS3303 = true;
		AS4301 = true; AS4302 = true;

		AS5201 = true; AS5301 = true; AS5401 = true;
	};
	case 14: {
		AS1001 = true;

		AS1400 = false;

		AS2401 = true; AS2402 = true; AS2403 = true; AS2404 = true;
		AS3401 = true; AS3402 = true; AS3403 = true;
		AS4401 = true; AS4402 = true;

		AS5301 = true; AS5401 = true;
	};

	//RWS
	case 21: {
		AS1001 = true;

		AS1100 = false;

		AS1101 = true; AS1102 = true; AS1103 = true;
		AS3101 = true; AS3102 = true; AS3103 = true;
		AS4101 = true; AS4102 = true;

		AS5101 = true; AS5201 = true;
	};
	case 22: {
		AS1001 = true;

		AS1200 = false;

		AS1201 = true; AS1202 = true; AS1203 = true;
		AS3201 = true; AS3202 = true; AS3203 = true;
		AS4201 = true; AS4202 = true;

		AS5101 = true; AS5201 = true; AS5301 = true;
	};
	case 23: {
		AS1001 = true;

		AS1300 = false;

		AS1301 = true; AS1302 = true; AS1303 = true;
		AS3301 = true; AS3302 = true; AS3303 = true;
		AS4301 = true; AS4302 = true;

		AS5201 = true; AS5301 = true; AS5401 = true;
	};
		case 24: {
		AS1001 = true;

		AS1400 = false;

		AS1401 = true; AS1402 = true; AS1403 = true;
		AS3401 = true; AS3402 = true; AS3403 = true;
		AS4401 = true; AS4402 = true;

		AS5301 = true; AS5401 = true;
	};

	//FWLS
	case 31: {
		AS1001 = true;

		AS1100 = false;

		AS1101 = true; AS1102 = true; AS1103 = true;
		AS2101 = true; AS2102 = true; AS2103 = true; AS2104 = true;
		AS4101 = true; AS4102 = true;

		AS5101 = true; AS5201 = true;
	};
	case 32: {
		AS1001 = true;

		AS1200 = false;

		AS1201 = true; AS1202 = true; AS1203 = true;
		AS2201 = true; AS2202 = true; AS2203 = true; AS2204 = true;
		AS4201 = true; AS4202 = true;

		AS5101 = true; AS5201 = true; AS5301 = true;
	};
	case 33: {
		AS1001 = true;

		AS1300 = false;

		AS1301 = true; AS1302 = true; AS1303 = true;
		AS2301 = true; AS2302 = true; AS2303 = true; AS2304 = true;
		AS4301 = true; AS4302 = true;

		AS5201 = true; AS5301 = true; AS5401 = true;
	};
	case 34: {
		AS1001 = true;

		AS1400 = false;

		AS1401 = true; AS1402 = true; AS1403 = true;
		AS2401 = true; AS2402 = true; AS2403 = true; AS2404 = true;
		AS4401 = true; AS4402 = true; AS4403 = true;

		AS5301 = true; AS5401 = true;
	};

	//FWSS
	case 41: {
		AS1001 = true;

		AS1100 = false;

		AS1101 = true; AS1102 = true; AS1103 = true;
		AS2101 = true; AS2102 = true; AS2103 = true; AS2104 = true;
		AS3101 = true; AS3102 = true; AS3103 = true;

		AS5101 = true; AS5201 = true;
	};
	case 42: {
		AS1001 = true;

		AS1200 = false;

		AS1201 = true; AS1202 = true; AS1203 = true;
		AS2201 = true; AS2202 = true; AS2203 = true; AS2204 = true;
		AS3201 = true; AS3202 = true; AS3202 = true;

		AS5101 = true; AS5201 = true; AS5301 = true;
	};
	case 43: {
		AS1001 = true;

		AS1300 = false;

		AS1301 = true; AS1302 = true; AS1303 = true;
		AS2301 = true; AS2302 = true; AS2303 = true; AS2304 = true;
		AS3301 = true; AS3302 = true; AS3303 = true;

		AS5201 = true; AS5301 = true; AS5401 = true;
	};
	case 44: {
		AS1001 = true;

		AS1400 = false;

		AS1401 = true; AS1402 = true; AS1403 = true;
		AS2401 = true; AS2402 = true; AS2403 = true; AS2404 = true;
		AS3401 = true; AS3402 = true; AS3403 = true;

		AS5301 = true; AS5401 = true;
	};

	//FWM
	case 51: {
		AS1001 = true;

		AS1100 = false;
		AS1200 = false;

		AS1101 = true; AS1102 = true; AS1103 = true;
		AS1201 = true; AS1202 = true; AS1203 = true;

		AS2101 = true; AS2102 = true; AS2103 = true; AS2104 = true;
		AS2201 = true; AS2202 = true; AS2203 = true; AS2204 = true;

		AS3101 = true; AS3102 = true; AS3103 = true;
		AS3201 = true; AS3202 = true; AS3203 = true;

		AS4101 = true; AS4102 = true;
		AS4201 = true; AS4202 = true;
	};
	case 52: {
		AS1001 = true;

		AS1100 = false;
		AS1200 = false;
		AS1300 = false;

		AS1101 = true; AS1102 = true; AS1103 = true;
		AS1201 = true; AS1202 = true; AS1203 = true;
		AS1301 = true; AS1302 = true; AS1303 = true;

		AS2101 = true; AS2102 = true; AS2103 = true; AS2104 = true;
		AS2201 = true; AS2202 = true; AS2203 = true; AS2204 = true;
		AS2301 = true; AS2302 = true; AS2303 = true; AS2304 = true;

		AS3101 = true; AS3102 = true; AS3103 = true;
		AS3201 = true; AS3202 = true; AS3203 = true;
		AS3301 = true; AS3302 = true; AS3303 = true;

	};
	case 53: {
		AS1001 = true;

		AS1200 = false;
		AS1300 = true;
		AS1400 = false;

		AS1201 = true; AS1202 = true; AS1203 = true;
		AS2201 = true; AS2202 = true; AS2203 = true; AS2204 = true;
		AS3201 = true; AS3202 = true; AS3203 = true;
 		AS4201 = true; AS4202 = true;

		AS1301 = true; AS1302 = true; AS1303 = true;
		AS2301 = true; AS2302 = true; AS2303 = true; AS2304 = true;
		AS3301 = true; AS3302 = true; AS3303 = true;
		AS4301 = true; AS4302 = true;

		AS1401 = true; AS1402 = true; AS1403 = true;
		AS2401 = true; AS2402 = true; AS2403 = true; AS2404 = true;
		AS3401 = true; AS3402 = true; AS3403 = true;
		AS4401 = true; AS4402 = true;

	};
	case 54: {
		AS1001 = true;

		AS1300 = false;
		AS1400 = false;

		AS1301 = true; AS1302 = true; AS1303 = true;
		AS2301 = true; AS2302 = true; AS2303 = true; AS2304 = true;
		AS3301 = true; AS3302 = true; AS3303 = true;
		AS4301 = true; AS4302 = true;

		AS1401 = true; AS1402 = true; AS1403 = true;
		AS2401 = true; AS2402 = true; AS2403 = true; AS2404 = true;
		AS3401 = true; AS3402 = true; AS3403 = true;
		AS4401 = true; AS4402 = true;
	};
};

switch (_column) do {
	//Slot 1
	case 110: {
		AS1100 = false; AS1101 = true; AS1102 = true; AS1103 = true;
		AS2101 = true; AS2102 = true; AS2103 = true; AS2104 = true;
		AS3101 = true; AS3102 = true; AS3103 = true;
		AS4101 = true; AS4102 = true;
		AS5101 = true;
	};

	//Slot 2
	case 120: {
		AS1200 = false; AS1201 = true; AS1202 = true; AS1203 = true;
		AS2201 = true; AS2202 = true; AS2203 = true; AS2204 = true;
		AS3201 = true; AS3202 = true; AS3203 = true;
		AS4201 = true; AS4202 = true;
		AS5201 = true;
	};

	//Slot 3
	case 130: {
		AS1300 = false; AS1301 = true; AS1302 = true; AS1303 = true;
		AS2301 = true; AS2302 = true; AS2303 = true; AS2304 = true;
		AS3301 = true; AS3302 = true; AS3303 = true;
		AS4301 = true; AS4302 = true;
		AS5301 = true;
	};
	//Slot 4
	case 140: {
		AS1400 = false; AS1401 = true; AS1402 = true; AS1403 = true;
		AS2401 = true; AS2402 = true; AS2403 = true; AS2404 = true;
		AS3401 = true; AS3402 = true; AS3403 = true;
		AS4401 = true; AS4402 = true;
		AS5401 = true;
	};

//---------------------------------------------------------------------------------
	case 111: {AS1100 = true; AS1101 = false; AS1102 = true; AS1103 = true;};
	case 112: {AS1100 = true; AS1101 = true; AS1102 = false; AS1103 = true;};
	case 113: {AS1100 = true; AS1101 = true; AS1102 = true;	AS1103 = false;};

	case 121: {AS1200 = true; AS1201 = false; AS1202 = true; AS1203 = true;};
	case 122: {AS1200 = true; AS1201 = true; AS1202 = false; AS1203 = true;};
	case 123: {AS1200 = true; AS1201 = true; AS1202 = true;	AS1203 = false;};

	case 131: {AS1300 = true; AS1301 = false; AS1302 = true; AS1303 = true;};
	case 132: {AS1300 = true; AS1301 = true; AS1302 = false; AS1303 = true;};
	case 133: {AS1300 = true; AS1301 = true; AS1302 = true;	AS1303 = false;};

	case 141: {AS1400 = true; AS1401 = false; AS1402 = true; AS1403 = true;};
	case 142: {AS1400 = true; AS1401 = true; AS1402 = false; AS1403 = true;};
	case 143: {AS1400 = true; AS1401 = true; AS1402 = true;	AS1403 = false;};

//---------------------------------------------------------------------------------
	case 211: {AS1100 = true; AS2101 = false; AS2102 = true; AS2103 = true; AS2104 = true;};
	case 212: {AS1100 = true; AS2101 = true; AS2102 = false; AS2103 = true; AS2104 = true;};
	case 213: {AS1100 = true; AS2101 = true; AS2102 = true;	AS2103 = false; AS2104 = true;};
	case 214: {AS1100 = true; AS2101 = true; AS2102 = true;	AS2103 = true; AS2104 = false;};

	case 221: {AS1200 = true; AS2201 = false; AS2202 = true; AS2203 = true; AS2204 = true;};
	case 222: {AS1200 = true; AS2201 = true; AS2202 = false; AS2203 = true; AS2204 = true;};
	case 223: {AS1200 = true; AS2201 = true; AS2202 = true;	AS2203 = false; AS2204 = true;};
	case 224: {AS1200 = true; AS2201 = true; AS2202 = true;	AS2203 = true; AS2204 = false;};

	case 231: {AS1300 = true; AS2301 = false; AS2302 = true; AS2303 = true; AS2304 = true;};
	case 232: {AS1300 = true; AS2301 = true; AS2302 = false; AS2303 = true; AS2304 = true;};
	case 233: {AS1300 = true; AS2301 = true; AS2302 = true;	AS2303 = false; AS2304 = true;};
	case 234: {AS1300 = true; AS2301 = true; AS2302 = true;	AS2303 = true; AS2304 = false;};

	case 241: {AS1400 = true; AS2401 = false; AS2402 = true; AS2403 = true; AS2404 = true;};
	case 242: {AS1400 = true; AS2401 = true; AS2402 = false; AS2403 = true; AS2404 = true;};
	case 243: {AS1400 = true; AS2401 = true; AS2402 = true;	AS2403 = false; AS2404 = true;};
	case 244: {AS1400 = true; AS2401 = true; AS2402 = true;	AS2403 = true; AS2404 = false;};

//---------------------------------------------------------------------------------
	case 311: {AS1100 = true; AS3101 = false; AS3102 = true; AS3103 = true;};
	case 312: {AS1100 = true; AS3101 = true; AS3102 = false; AS3103 = true;};
	case 313: {AS1100 = true; AS3101 = true; AS3102 = true;	AS3103 = false;};

	case 321: {AS1200 = true; AS3201 = false; AS3202 = true; AS3203 = true;};
	case 322: {AS1200 = true; AS3201 = true; AS3202 = false; AS3203 = true;};
	case 323: {AS1200 = true; AS3201 = true; AS3202 = true;	AS3203 = false;};

	case 331: {AS1300 = true; AS3301 = false; AS3302 = true; AS3303 = true;};
	case 332: {AS1300 = true; AS3301 = true; AS3302 = false; AS3303 = true;};
	case 333: {AS1300 = true; AS3301 = true; AS3302 = true;	AS3303 = false;};

	case 341: {AS1400 = true; AS3401 = false; AS3402 = true; AS3403 = true;};
	case 342: {AS1400 = true; AS3401 = true; AS3402 = false; AS3403 = true;};
	case 343: {AS1400 = true; AS3401 = true; AS3402 = true;	AS3403 = false;};

//---------------------------------------------------------------------------------
	case 411: {AS1100 = true; AS4101 = false; AS4102 = true};
	case 412: {AS1100 = true; AS4101 = true; AS4102 = false};

	case 421: {AS1200 = true; AS4201 = false; AS4202 = true};
	case 422: {AS1200 = true; AS4201 = true; AS4202 = false};

	case 431: {AS1300 = true; AS4301 = false; AS4302 = true};
	case 432: {AS1300 = true; AS4301 = true; AS4302 = false};

	case 441: {AS1400 = true; AS4401 = false; AS4402 = true};
	case 442: {AS1400 = true; AS4401 = true; AS4402 = false};


//---------------------------------------------------------------------------------
	case 511: {AS1100 = true; AS5101 = false};

	case 521: {AS1200 = true; AS5201 = false};

	case 531: {AS1300 = true; AS5301 = false};

	case 541: {AS1400 = true; AS5401 = false};
};

//set variable of SLOT X back to false if no FWM in use
if (AS5101 && AS1101 && AS1102 && AS1103 && AS2101 && AS2102 && AS2103 && AS2104 &&
	AS3101 && AS3102 && AS3103 && AS4101 && AS4102) then {AS1100 = false;};
if (AS5301 && AS1301 && AS1302 && AS1303 && AS2301 && AS2302 && AS2303 && AS2304 &&
	AS3301 && AS3302 && AS3303 && AS4301 && AS4302) then {AS1300 = false;};

//=============================== EXIT =============================================
if (true) exitWith {
	closeDialog 0;
	[] call titan_air_fnc_support_entry;
};
