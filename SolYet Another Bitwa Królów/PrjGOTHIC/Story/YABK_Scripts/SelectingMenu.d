func void StartingMenu()
{
	var int currDam;
	currDam = 50;

		var int ptr; var zCView v;
		var int DrugieMenu;
		var int MenuStatystyk;
		var int x; var int y; var int mult;
		var int texSizeX; var int texSizeY;
		var int xMenuStatystyk; var int yMenuStatystyk;
		var int xMenuStatystykEnd; var int yMenuStatystykEnd;
		var int SoldierImage;
		var int xSoldierImage; var int ySoldierImage;
		var int xSoldierImageEnd; var int ySoldierImageEnd;
		var int MageImage; var int SoldatImage;
		var int DystansWOsiPoziomej;

		Print_GetScreenSize();
		mult = divf(mkf(Print_Screen[PS_X]), mkf(Print_Screen[PS_Y]));

		texSizeX = currDam<<BLOODSPLAT_DAM;
		if(texSizeX > 6144) { texSizeX = 6144; };

			texSizeY = roundf(mulf(mkf(texSizeX), mult));

		// Norm. Treffer
		x = (PS_VMax + 1) ;
		y = 1024 -(texSizeY>>1);
		xMenuStatystyk = (PS_VMax + 1) /5;
		xMenuStatystykEnd = (PS_VMax + 1) /5 * 4;
		yMenuStatystyk = (texSizeY/100)*10;
		yMenuStatystykEnd = texSizeY - (texSizeY/100)*50;

		var int s; s = SB_New();
		
		SB ("SIDEMENU");
		SB (".TGA");
		//Obliczanie statystyk


	if (MEM_KeyState(KEY_T) == KEY_PRESSED)
	{
		  var int czymenujestotwarte;//zmienna

		  if (czymenujestotwarte)
		  {
			View_Delete(ptr);
		  }
		  else
		  {
			ptr = View_Create(0, 0, x, texSizeY);
			View_Open(ptr);
			View_SetTexture(ptr, "BLOODSPLAT1.tga");

		//Ogolne statystyki
		View_AddText(ptr, (PS_VMax + 1)/100*50,(texSizeY/100)*2, "Ustawienia", FONT_Screen);
		View_AddText(ptr, (PS_VMax + 1)/100*50,(texSizeY/100)*8, "POZIOM TRUDNOŒCI", FONT_Screen);

		};
		czymenujestotwarte = !czymenujestotwarte;
		statmenucheck = !statmenucheck;
	};



};

