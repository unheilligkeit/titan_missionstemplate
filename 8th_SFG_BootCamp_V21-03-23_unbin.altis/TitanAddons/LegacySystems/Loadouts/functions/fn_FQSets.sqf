//---------------------------------------------------------------------------------------------------------------------------
//	Festsetzung Frequenzen und Chanel Reihenfolge der Squads und FT 
//	
//	By Fallingstorm 17.01.2021
/*
	Long Range
		LR Chanel 1 = 				Eigenes Squads
		LR ADDITIONAL Chanel 1 = 	Platoon
		
	Short Range	
		SR Chanel 1 = 				Eigenes FT
		SR Chanel 2 =				Eigenes SQ 
		SR Chanel 3 = 				Platoon Lead (select 0)
		
*/
//
//---------------------------------------------------------------------------------------------------------------------------
// LR Radio
//		0		
// 		1		2		3		4		5
//  	6		7		8		9
	

_fqLW =[
	"78",
	"80.1", "80.2", "80.3", "80.4", "80.8", 
	"88", "88.1", "88.2", "88.3" 
];


T_1_0_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_1_0_LW_FQ";

T_2_0_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_2_0_LW_FQ";

T_2_1_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_2_1_LW_FQ";

T_2_2_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_2_2_LW_FQ";

T_2_3_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_2_3_LW_FQ";

T_3_0_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_3_0_LW_FQ";

T_3_1_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_3_1_LW_FQ";

T_3_2_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_3_2_LW_FQ";

T_3_3_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_3_3_LW_FQ";

T_4_0_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_4_0_LW_FQ";

T_4_1_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_4_1_LW_FQ";

T_4_2_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_4_2_LW_FQ";

T_4_3_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 4],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 3],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "T_4_3_LW_FQ";


//RECONS
TF_EAGLE_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 6],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 0],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 9],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "TF_EAGLE_LW_FQ";

TF_FALCON_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 0],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 9],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "TF_FALCON_LW_FQ";

TF_HAWK_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 0],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 9],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 0]		
	] ,0 , "_bluefor", -1,0
];
publicVariable "TF_HAWK_LW_FQ";

TF_VULTURE_LW_FQ = [
	0,6, [	
		format ["%1", _fqLW select 9],
		format ["%1", _fqLW select 5],
		format ["%1", _fqLW select 1],
		format ["%1", _fqLW select 0],
		format ["%1", _fqLW select 7],
		format ["%1", _fqLW select 8],
		format ["%1", _fqLW select 9],
		format ["%1", _fqLW select 2],
		format ["%1", _fqLW select 0]	
	] ,0 , "_bluefor", -1,0
];
publicVariable "TF_VULTURE_LW_FQ";

//-----------------------------------------------------------------------------------------------
// SR Radio
//	0		
//	1		
//	2		3		4		5		
//	6		7		8		9
//	10		11		12		13
//	14		15		16		17		18


_fqSW =[
	"80.1", 
	"81", 
	"82", "82.1", "82.2", "82.3", 
	"83", "83.1", "83.2", "83.3", 
	"84", "84.1", "84.2", "84.3",
	"88", "88.1", "88.2", "88.3","88.4"
];

T_1_0_SW_FQ = [
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 2],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_1_0_SW_FQ";

T_2_0_SW_FQ = [
	format ["%1", _fqSW select 2],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_2_0_SW_FQ";

T_2_1_SW_FQ = [
	format ["%1", _fqSW select 3],
	format ["%1", _fqSW select 2],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_2_1_SW_FQ";

T_2_2_SW_FQ = [
	format ["%1", _fqSW select 4],
	format ["%1", _fqSW select 2],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_2_2_SW_FQ";

T_2_3_SW_FQ = [
	format ["%1", _fqSW select 5],
	format ["%1", _fqSW select 2],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_2_3_SW_FQ";

T_3_0_SW_FQ = [
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_3_0_SW_FQ";

T_3_1_SW_FQ = [
	format ["%1", _fqSW select 7],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_3_1_SW_FQ";

T_3_2_SW_FQ = [
	format ["%1", _fqSW select 8],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_3_2_SW_FQ";

T_3_3_SW_FQ = [
	format ["%1", _fqSW select 9],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];

T_4_0_SW_FQ = [
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 16]
];
publicVariable "T_4_0_SW_FQ";

T_4_1_SW_FQ = [
	format ["%1", _fqSW select 11],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_4_1_SW_FQ";

T_4_2_SW_FQ = [
	format ["%1", _fqSW select 12],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_4_2_SW_FQ";

T_4_3_SW_FQ = [
	format ["%1", _fqSW select 13],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 1],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 16]
];
publicVariable "T_4_3_SW_FQ";


//RECONS
TF_EAGLE_SW_FQ = [
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 17],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14]
];
publicVariable "TF_EAGLE_SW_FQ";
TF_FALCON_SW_FQ = [
	format ["%1", _fqSW select 16],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 17],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14]
];
publicVariable "TF_FALCON_SW_FQ";
TF_HAWK_SW_FQ = [
	format ["%1", _fqSW select 15],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 17],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14]
];
publicVariable "TF_HAWK_SW_FQ";
TF_VULTURE_SW_FQ = [
	format ["%1", _fqSW select 17],
	format ["%1", _fqSW select 14],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 17],
	format ["%1", _fqSW select 0],
	format ["%1", _fqSW select 6],
	format ["%1", _fqSW select 10],
	format ["%1", _fqSW select 14]
];
publicVariable "TF_VULTURE_SW_FQ";


//-----------------------------------------------------------------------------------------------
// SR Radio
//	0		1		2		3		4	
//	5		6	  7		8	   9		



_fqSQSW =[
	"78", "78.1", "78.2", "78.3", "78.4",
	"81", "82", "83", "84", "88" 
];