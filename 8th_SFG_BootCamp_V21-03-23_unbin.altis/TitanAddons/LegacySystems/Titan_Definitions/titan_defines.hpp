//-----------------------------------------------------------------------------------------
//			TITAN base defines for GUI
// 
//
//-----------------------------------------------------------------------------------------
#define COLOR_ORANGE {0.988, 0.522, 0.118, 1} 				//#FC851E
#define COLOR_WHITE {1, 1, 1, 1}							//#FFFFFF
#define COLOR_WHITE_DIRTY {0.859, 0.859, 0.859, 0.8}		//#CCDBDBDB
#define COLOR_WHITE_DARK {0.753,0.753,0.753,0.2}			//#C0C0C0
#define COLOR_GRAY_LIGHTER {0.137, 0.137, 0.137, 1}			//#232323
#define COLOR_GRAY_LIGHTING {0.224,0.224,0.224,1}			//#393939
#define COLOR_GRAY_BLACK {0.098, 0.098, 0.098, 1}			//#191919
#define COLOR_BACKGROUND {0.067, 0.067, 0.067, 1}			//#111111
#define COLOR_GRAY_DARK {0.149, 0.149, 0.149, 1}			//#262626
#define COLOR_FOCUSED {0.329, 0.349, 0.373, 1}				//#54595F
#define COLOR_BLACK {0, 0, 0, 0}							//#000000


//---------------------------------------------------------------------------------------------
class TITANBackground: RscText
{
	colorBackground[] = COLOR_GRAY_LIGHTER;//COLOR_BACKGROUND;
};

class TITANHeader: RscText
{	
	type = 0;
	style = 2;
	

	colorBackground[] = COLOR_BLACK;
	colorText[] = COLOR_ORANGE;
	font = "PuristaMedium";
	sizeEx = 0.09;
};

class TITANLogo: RscPicture
{	
	type = 0;
	style = 48;
	
	colorBackground[] = COLOR_BLACK;
	colorText[] = COLOR_WHITE;
};


class TITANMade: RscText
{	
	text = "by Fallingstorm";
	sizeEx = 0.02;
	font = "PuristaMedium";
	
	colorText[] = COLOR_WHITE;
};

class TITANSlots: RscText
{
	type = 0;
	style = 162;
	font = "PuristaMedium";
	sizeEx = 0.04;//0.09;
	borderSize = 2;
	
	colorText[] = COLOR_WHITE;//COLOR_ORANGE;
	colorBackground[] = COLOR_GRAY_DARK;
};

class TITANBoxLow
{
	type = 0;
	style = ST_FRAME;
	font = "PuristaMedium";
	sizeEx = 0.03;
	shadow = 2;
	
	colorBackground[] = COLOR_BACKGROUND;
	colorText[] = COLOR_WHITE;
};

class TITAN_AS_Button: RscButton
{
	font = "PuristaMedium";
	
	period = 0;

	colorText[] = COLOR_WHITE_DIRTY; // Text color if button enebled
	colorDisabled[] = COLOR_WHITE_DARK; // Text color if button disabled
	colorBackground[] = COLOR_GRAY_DARK;
	colorBackgroundDisabled[] = COLOR_GRAY_BLACK;//COLOR_BLACK;
	colorBackgroundActive[] = COLOR_FOCUSED;
};

class TITAN_LO_Button: RscButton
{
	font = "PuristaMedium";
	
	period = 0;

	colorText[] = COLOR_WHITE_DIRTY; // Text color if button enebled
	colorDisabled[] = COLOR_WHITE_DARK; // Text color if button disabled
	colorBackground[] = COLOR_GRAY_DARK;
	colorBackgroundDisabled[] = COLOR_GRAY_BLACK;
	colorBackgroundActive[] = COLOR_FOCUSED;
};

class TITAN_TELE_Button: RscButton
{
	font = "PuristaMedium";
	
	period = 0;

	colorText[] = COLOR_WHITE_DIRTY; // Text color if button enebled
	colorDisabled[] = COLOR_WHITE_DARK; // Text color if button disabled
	colorBackground[] = COLOR_GRAY_DARK;
	colorBackgroundDisabled[] = COLOR_GRAY_BLACK;
	colorBackgroundActive[] = COLOR_FOCUSED;
};

class TITAN_Close_Button: RscButton
{
	access = 0;
	type = CT_BUTTON;
	text = "";
	colorText[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorBackgroundDisabled[] = {0,0,0,0};
	colorBackgroundActive[] = {0,0,0,0};
	colorFocused[] = {0,0,0,0};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	style = 2;	
	x = 0;	
	y = 0;	
	w = 0.095589;	
	h = 0.039216;	
	shadow = 2;	
	font = "PuristaMedium";	
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";	
	offsetX = 0.003;	
	offsetY = 0.003;	
	offsetPressedX = 0.002;	
	offsetPressedY = 0.002;	
	borderSize = 0;
};