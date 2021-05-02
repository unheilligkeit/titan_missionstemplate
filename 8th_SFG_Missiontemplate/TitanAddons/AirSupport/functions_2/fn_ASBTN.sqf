/*
 * *** fn_ASBTN ***	
 *
 * Author: Fallingstorm, 8thSFG TITAN
 *
 * Define Buttons 
 *
 * Arguments:
 * 0: <STRING>
 * 1: <OBJECT>
 *
 * Return Value:
 * bool
 *
 * Example:
 * non
 *
 * Public: Yes
 */

//----------------------------------------------------------------------------------------------------
/*
	!!!!!!!!!! DON´T TOUCH THIS !!!!!!!!!!!!!!!!
*/
//----------------------------------------------------------------------------------------------------

if (isDedicated) exitWith {};
waitUntil {!(isNull player)};


//----------------------------------------------------------------------------------------------------
/*
	Definition Buttons
*/
//----------------------------------------------------------------------------------------------------
// Spawn Vehicle
AS5001 = false; publicVariable "AS5001";

// Slots Clear
AS5100 = false; publicVariable "AS5100";
AS5200 = false; publicVariable "AS5200"; 
AS5300 = false; publicVariable "AS5300"; 
AS5400 = false; publicVariable "AS5400"; 

//Rotary Wing mats
AS5101 = true; publicVariable "AS5101";
AS5102 = true; publicVariable "AS5102";
AS5103 = true; publicVariable "AS5103";

AS5201 = true; publicVariable "AS5201";
AS5202 = true; publicVariable "AS5202";
AS5203 = true; publicVariable "AS5203";

AS5301 = true; publicVariable "AS5301";
AS5302 = true; publicVariable "AS5302";
AS5303 = true; publicVariable "AS5303";

AS5401 = true; publicVariable "AS5401";
AS5402 = true; publicVariable "AS5402";
AS5403 = true; publicVariable "AS5403";

//Rotary Wing Strike
AS6101 = true; publicVariable "AS6101";
AS6102 = true; publicVariable "AS6102";
AS6103 = true; publicVariable "AS6103";
AS6104 = true; publicVariable "AS6104";

AS6201 = true; publicVariable "AS6201";
AS6202 = true; publicVariable "AS6202";
AS6203 = true; publicVariable "AS6203";
AS6204 = true; publicVariable "AS6204";

AS6301 = true; publicVariable "AS6301";
AS6302 = true; publicVariable "AS6302";
AS6303 = true; publicVariable "AS6303";
AS6304 = true; publicVariable "AS6304";

AS6401 = true; publicVariable "AS6401";
AS6402 = true; publicVariable "AS6402";
AS6403 = true; publicVariable "AS6403";
AS6404 = true; publicVariable "AS6404";

//Fixed Wing Land Strike
AS7101 = true; publicVariable "AS7101";
AS7102 = true; publicVariable "AS7102";
AS7103 = true; publicVariable "AS7103";

AS7201 = true; publicVariable "AS7201";
AS7202 = true; publicVariable "AS7202";
AS7203 = true; publicVariable "AS7203";

AS7301 = true; publicVariable "AS7301";
AS7302 = true; publicVariable "AS7302";
AS7303 = true; publicVariable "AS7303";

AS7401 = true; publicVariable "AS7401";
AS7402 = true; publicVariable "AS7402";
AS7403 = true; publicVariable "AS7403";

//Fixed Wing Sea Strike
AS8101 = true; publicVariable "AS8101";
AS8102 = true; publicVariable "AS8102";

AS8200 = false; publicVariable "AS8200";
AS8201 = true; publicVariable "AS8201";
AS8202 = true; publicVariable "AS8202";

AS8301 = true; publicVariable "AS8301";
AS8302 = true; publicVariable "AS8302";

AS8401 = true; publicVariable "AS8401";
AS8402 = true; publicVariable "AS8402";

//Fixed Wing mats
AS9101 = true; publicVariable "AS9101";

AS9201 = true; publicVariable "AS9201";

AS9301 = true; publicVariable "AS9301";

AS9401 = true; publicVariable "AS9401";

