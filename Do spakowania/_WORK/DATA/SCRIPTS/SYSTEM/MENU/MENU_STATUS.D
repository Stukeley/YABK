instance MENU_STATUS (C_MENU_DEF)
{
	items[0]	= "MENU_ITEM_STATUS_HEADING";
	// ---------------------------------------------
	items[2]	= "MENU_ITEM_LEVEL";
	items[4]	= "MENU_ITEM_EXP";
	items[6]	= "MENU_ITEM_LEVEL_NEXT";
	
};

instance MENU_ITEM_STATUS_HEADING(C_MENU_ITEM_DEF)
{
	
};

instance MENU_ITEM_LEVEL(C_MENU_ITEM_DEF)
{
	posx 		= 60;				posy = 60;
	fontName	= STAT_FONT_BRAK;
	flags		= flags & ~IT_SELECTABLE;
};

INSTANCE MENU_ITEM_EXP(C_MENU_ITEM_DEF)
{
	posx 		= 60;				posy = 60;
	fontName 	= STAT_FONT_BRAK;
	flags		= flags & ~IT_SELECTABLE;
};

INSTANCE MENU_ITEM_LEVEL_NEXT(C_MENU_ITEM_DEF)
{
	posx 		= 60;				posy = 60;
	fontName 	= STAT_FONT_BRAK;
	flags		= flags & ~IT_SELECTABLE;
};