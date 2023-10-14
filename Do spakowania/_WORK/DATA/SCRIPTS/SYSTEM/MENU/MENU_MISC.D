var int DifficultyLevel;
var int MenuLager;
var int MenuGuild;
instance MENU_LEAVE_GAME(C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_LEAVE_GAME_HEADLINE";
	items[1] = "MENUITEM_LEAVE_GAME_YES";
	items[2] = "MENUITEM_LEAVE_GAME_NO";
	defaultoutgame = 2;
	defaultingame = 2;
	flags = flags | MENU_SHOW_INFO;
};

instance MENUITEM_LEAVE_GAME_HEADLINE(C_MENU_ITEM_DEF)
{
	text[0] = "Czy na pewno chcesz wyjœæ?";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = 3400;
	dimx = 8100;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_TXT_CENTER;
};

instance MENUITEM_LEAVE_GAME_YES(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Tak";
	text[1] = "Tak, wróce tu kiedyœ!";
	posx = 0;
	posy = 4400;
	dimx = 8100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[0] = "LEAVE_GAME";
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};

instance MENUITEM_LEAVE_GAME_NO(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Nie";
	text[1] = "Nie, chce dalej graæ.";
	posx = 0;
	posy = 5000;
	dimx = 8100;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};




instance MENU_PLAY_SELECT(C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	items[0] = "MENUITEM_PLAY_SELECT_HEADLINE";
	items[1] = "MENUITEM_PLAY_SELECT_YES";
	items[2] = "MENUITEM_PLAY_SELECT_NO";
	defaultoutgame = 2;
	defaultingame = 2;
	flags = flags | MENU_SHOW_INFO;
};


instance MENUITEM_PLAY_SELECT_HEADLINE(C_MENU_ITEM_DEF)
{
	text[0] = "Jesteœ pewny?";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = 3400;
	dimx = 8100;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_TXT_CENTER;
};

instance MENUITEM_PLAY_SELECT_YES(C_MENU_ITEM_DEF)
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

instance MENUITEM_PLAY_SELECT_NO(C_MENU_ITEM_DEF)
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


////////////////////////////////////
///////Menu poziomu trudnosci///////
///////////////////////////////////


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
	text[0] = "£atwy";
	text[1] = "Poziom ³atwy";
	posx = 0;
	posy = 4400;
	dimx = 8100;
	dimy = 750;
	onselaction[0] = SEL_ACTION_CLOSE;
	onselaction_s[1] = "SetDiffEasy";
	onselaction_s[0] = "NEW_GAME";
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};

instance MENUITEM_FIRST_PICK_DIFF_NORMAL(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Normalny";
	text[1] = "Poziom normalny";
	posx = 0;
	posy = 5000;
	dimx = 8100;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};
instance MENUITEM_FIRST_PICK_DIFF_HARD(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Trudny";
	text[1] = "Poziom trudny";
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
	text[0] = "Horror";
	text[1] = "Poziom HORROR!";
	posx = 0;
	posy = 6200;
	dimx = 8100;
	dimy = 750;
	flags = IT_CHROMAKEYED | IT_TRANSPARENT | IT_MOVEABLE | IT_SELECTABLE | IT_TXT_CENTER;
};


func int SetDiffEasy()
{
	DifficultyLevel=1;
	return 1;
};

func int SetDiffNorm()
{
	DifficultyLevel=2;
	return 1;
};
func int SetDiffHard()
{
	DifficultyLevel=3;
	return 1;
};
func int SetDiffHorror()
{
	DifficultyLevel=4;
	return 1;
};
