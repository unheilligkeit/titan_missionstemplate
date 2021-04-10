#include "..\component_macros.hpp";
params["_playerName"];

if (_playerName in connectedPilots) exitWith { true };
false
