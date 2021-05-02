#define PREFIX TitanAddons
#include "\x\cba\addons\main\script_macros_mission.hpp"

#define INIT_MODULE(var1) call compileFinal preprocessFileLineNumbers QUOTE(PREFIX\var1\init.sqf)
#define RELATIVE_PATH(var1) QUOTE(PREFIX\COMPONENT\var1)
