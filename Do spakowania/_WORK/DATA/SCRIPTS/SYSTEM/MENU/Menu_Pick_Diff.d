
instance MENU_FIRST_PICK_DIFF(C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_FIRST_PICK_DIFF_HEADLINE";
	items[1] = "MENUITEM_FIRST_PICK_DIFF_EASY";
	items[2] = "MENUITEM_FIRST_PICK_DIFF_NORMAL";
	items[3] = "MENUITEM_FIRST_PICK_DIFF_HARD";
	items[4] = "MENUITEM_FIRST_PICK_DIFF_HORROR";
	defaultoutgame = 2;
	defaultingame = 2;
	flags = flags | MENU_SHOW_INFO;
};


instance MENUITEM_FIRST_PICK_DIFF_HEADLINE(C_MENU_ITEM_DEF)
{
	text[0] = "Wybierz poziom trudnoœci";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = 3400;
	dimx = 8100;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_TXT_CENTER;
};

instance MENUITEM_FIRST_PICK_DIFF_EASY(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Tak";
	text[1] = "Tak, jestem gotowy!";
	posx = 0;
	posy = 4400;
	dimx = 8100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "NEW_GAME";
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};

instance MENUITEM_FIRST_PICK_DIFF_NORMAL(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Nie";
	text[1] = "Nie, nie jestem gotowy.";
	posx = 0;
	posy = 5000;
	dimx = 8100;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};
instance MENUITEM_FIRST_PICK_DIFF_HARD(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Tak";
	text[1] = "Tak, jestem gotowy!";
	posx = 0;
	posy = 5600;
	dimx = 8100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "NEW_GAME";
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};

instance MENUITEM_FIRST_PICK_DIFF_HORROR(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Nie";
	text[1] = "Nie, nie jestem gotowy.";
	posx = 0;
	posy = 6200;
	dimx = 8100;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};