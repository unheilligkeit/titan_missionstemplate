# Titan Addons

## Installation
The addons are in separate git repositories so you need to get the respective submodules:
```bash
git submodule update --init --recursive
```

To use all Titan addons in your desired mission, you need to modify the `description.ext` and `init.sqf` files inside your mission directory accordingly:

**description.ext**
```c++
#include "TitanAddons\description.hpp"
```
**init.sqf**
```sqf
call compileFinal preprocessFileLineNumbers "TitanAddons\init.sqf";
```

## Customization
If you don't want to use all addons, simply comment out the ones you don't need in `TitanAddons/init.sqf`

### Example
You only want the SotacTabletSystem so you commented Addon1 and Addon2 out.
```sqf
#define DEBUG_MODE_FULL
#include "macros.hpp";

INIT_MODULE(SotacTabletSystem);
# INIT_MODULE(Addon1);
# INIT_MODULE(Addon2);
systemChat "Server successfully initialized";
```
