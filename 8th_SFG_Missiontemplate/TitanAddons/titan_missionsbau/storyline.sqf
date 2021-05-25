if (!isServer && hasInterface) exitWith {};

if !(isServer || hasInterface) then {titan_headless = 1;};
if (isServer) then {titan_headless = 0;};
publicVariable "titan_headless";

if (isNil "titan_taskVar") then { titan_taskVar = 0; };


waitUntil {sleep 1; titan_taskVar == 1};
