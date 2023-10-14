func void NewMenu()
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

		var string heldenstufe; // init str Poziom bohatera
		var string heldennext; // init str Nastêpny poziom: 
		var string heldenschwert; // init str Poziom mieczy:
		var string heldenruessi; // init str Poziom zbroi:
		var string heldenarmbrust; // str Poziom kuszy:
		var int noetigekills; // ILOŒÆ KILLI BOHATERA DO LICZENIA LVLA 
		var int prozent; // Procent do next lvl bohatera
		var string PoziomBroniZolnierza;
		var string PoziomPancerzaZolnierza;
		var string PoziomZolnierza;
		var string Religia;

		Print_GetScreenSize();
		mult = divf(mkf(Print_Screen[PS_X]), mkf(Print_Screen[PS_Y]));

		texSizeX = currDam<<BLOODSPLAT_DAM;
		if(texSizeX > 6144) { texSizeX = 6144; };

			texSizeY = roundf(mulf(mkf(texSizeX), mult));

		// Norm. Treffer
		x = (PS_VMax + 1) /5 * 4;
		y = 1024 -(texSizeY>>1);
		xMenuStatystyk = (PS_VMax + 1) /5;
		xMenuStatystykEnd = (PS_VMax + 1) /5 * 4;
		yMenuStatystyk = (texSizeY/100)*10;
		yMenuStatystykEnd = texSizeY - (texSizeY/100)*50;
		xSoldierImage = (PS_VMax + 1) /100 * 22;
		xSoldierImageEnd = (PS_VMax + 1) /100 * 38;
		ySoldierImage = (texSizeY/100)*12;
		ySoldierImageEnd = (texSizeY/100)*30;
		DystansWOsiPoziomej = (PS_VMax + 1) /100 * 20;

		var int s; s = SB_New();
		
		SB ("SIDEMENU");
		SB (".TGA");
		//Obliczanie statystyk
		HPTwojegoKrola ="";
		HPWrogiegoKrola="";
		ZlotoPosiadane = IntToString(Npc_HasItems(hero,ItMi_Gold));
		PrzychodString = IntToString(Przychod);
		PrzychodString = ConcatStrings(PrzychodString,"/min");
		GoldZaKilla = IntToString(GOLDPERDEATH);
		GoldZaKilla = ConcatStrings(GoldZaKilla," szt. z³.");

		//Obliczanie statystyk bohatera

		// AKUTALNY LVL BOHATERA NA SCREEN
		heldenstufe = IntToString((noetigekills / TOTEGEGNERFUERSKILLLEVEL) + 1);
		heldenstufe = ConcatStrings(heldenstufe, "/8");

		// LICZENIE % DO NEXT LVLA


		// STATYSTYKI BOHATERA £¥CZONE W JEDN¥ LINIÊ
		heldennext = IntToString(prozent);
		if (LAGER == 1)
		{
			PunktyHonoru = IntToString(L1_EHRENPUNKTE);
			HPTwojegoKrola = IntToString((pal_1000_king.attribute));
			HPTwojegoKrola = ConcatStrings(HPTwojegoKrola,"/");
			HPTwojegoKrola = ConcatStrings(HPTwojegoKrola,IntToString(pal_1000_king.attribute[ATR_HITPOINTS_MAX]));
			HPWrogiegoKrola = IntToString(djg_2000_king.attribute);
			HPWrogiegoKrola = ConcatStrings(HPWrogiegoKrola,"/");
			HPWrogiegoKrola = ConcatStrings(HPWrogiegoKrola,IntToString(djg_2000_king.attribute[ATR_HITPOINTS_MAX]));


			noetigekills = L1_HELD_SKILLLEVEL;
			heldenschwert = IntToString(L1_HELD_SCHWERTLEVEL + 1);
			heldenruessi = IntToString(L1_HELD_RUESTUNGLEVEL + 1);
			heldenarmbrust = IntToString(L1_HELD_ARMBRUSTLEVEL);
			PoziomBroniZolnierza = IntToString(L1_USED_WEAPON) ;
			PoziomPancerzaZolnierza = IntToString(L1_USED_ARMOR);
			PoziomZolnierza = IntToString(L1_SOLDIER_LEVEL);
		}
		if(LAGER == 2)
		{
			PunktyHonoru = IntToString(L2_EHRENPUNKTE);
			HPWrogiegoKrola = IntToString((pal_1000_king.attribute));
			HPWrogiegoKrola = ConcatStrings(HPWrogiegoKrola,"/");
			HPWrogiegoKrola = ConcatStrings(HPWrogiegoKrola,IntToString(pal_1000_king.attribute[ATR_HITPOINTS_MAX]));
			HPTwojegoKrola = IntToString(djg_2000_king.attribute);
			HPTwojegoKrola = ConcatStrings(HPTwojegoKrola,"/");
			HPTwojegoKrola = ConcatStrings(HPTwojegoKrola,IntToString(djg_2000_king.attribute[ATR_HITPOINTS_MAX]));

			noetigekills = L2_HELD_SKILLLEVEL;
			heldenschwert = IntToString(L2_HELD_SCHWERTLEVEL + 1);
			heldenruessi = IntToString(L2_HELD_RUESTUNGLEVEL + 1);
			heldenarmbrust = IntToString(L2_HELD_ARMBRUSTLEVEL);
			PoziomBroniZolnierza = IntToString(L2_USED_WEAPON);
			PoziomPancerzaZolnierza = IntToString(L2_USED_ARMOR);
			PoziomZolnierza = IntToString(L2_SOLDIER_LEVEL);
		};
		prozent = noetigekills % TOTEGEGNERFUERSKILLLEVEL * 100;
		prozent = prozent / TOTEGEGNERFUERSKILLLEVEL;
		if (ReligionBeliar == TRUE)
		{
			Religia = "Beliar";
		}
		else if (ReligionInnos == TRUE)
		{
			Religia = "Innos";
		}
		else
		{
			Religia = "-";
		};

	if (MEM_KeyState(KEY_V) == KEY_PRESSED && (LAGER == 1 || LAGER == 2))
	{
		  var int czymenujestotwarte;//zmienna

		  if (czymenujestotwarte)
		  {
			View_Delete(ptr);
		  }
		  else
		  {
			ptr = View_Create(x, 0, x+texSizeX, texSizeY);
			View_Open(ptr);
			View_SetTexture(ptr, "BLOODSPLAT1.tga");

		//Ogolne statystyki
		View_AddText(ptr, (PS_VMax + 1)/100*10,(texSizeY/100)*2, "POSTAÆ", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*3, "Gildia:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*3, MojaGildia, PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*4, "Magia co", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*5, "Z³oto:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*5, ZlotoPosiadane, PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*6, "Przychód:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*6, PrzychodString, PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*7, "Honor:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*7, PunktyHonoru, PF_Font);


		//Info o Królu

		View_AddText(ptr, (PS_VMax + 1)/100*10,(texSizeY/100)*9, "OGÓLNE", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*10, "HP Króla:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*10, HPTwojegoKrola, PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*11, "HP Wroga:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*11, HPWrogiegoKrola, PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*12, "Za zabicie: ", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*12, GoldZaKilla, PF_Font);

		//Info o ¯o³nierzach

		View_AddText(ptr, (PS_VMax + 1)/100*10,(texSizeY/100)*14, "¯O£NIERZE", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*15, "Poziom:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*15, ConcatStrings(PoziomZolnierza,"/7"), PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*16, "Pancerz:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*16, ConcatStrings(PoziomPancerzaZolnierza,"/4"), PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*17, "Broñ:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*17, ConcatStrings(PoziomBroniZolnierza, "/4"), PF_Font);
		//Info o Magach

		View_AddText(ptr, (PS_VMax + 1)/100*10,(texSizeY/100)*19, "MAGOWIE", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*20, "Poziom:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*20, PoziomTwojegoMaga, PF_Font);



		//Info o Bohaterze

		View_AddText(ptr, (PS_VMax + 1)/100*10,(texSizeY/100)*22, "BOHATER", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*23, "Poziom:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*24, "Postêp:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*25, "Broñ:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*26, "Pancerz:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*27, "Kusza:", PF_Font);
		if(((LAGER == 1) && (L1_HELD_SPAWNED == TRUE)) || ((LAGER == 2) && (L2_HELD_SPAWNED == TRUE)))
		{
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*23, heldenstufe, PF_Font);
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*24, ConcatStrings(heldennext, "%"), PF_Font);
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*25, ConcatStrings(heldenschwert, "/4"), PF_Font);
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*26, ConcatStrings(heldenruessi, "/3"), PF_Font);
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*27, ConcatStrings(heldenarmbrust, "/4"), PF_Font);
		}
		else 
		{
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*23, "-", PF_Font);
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*24, "-", PF_Font);
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*25, "-", PF_Font);
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*26, "-", PF_Font);
			View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*27, "-", PF_Font);
		};

		//Inne

		View_AddText(ptr, (PS_VMax + 1)/100*10,(texSizeY/100)*29, "INNE", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*5,(texSizeY/100)*30, "Wyznanie:", PF_Font);
		View_AddText(ptr, (PS_VMax + 1)/100*15,(texSizeY/100)*30, Religia, PF_Font);


		};
		czymenujestotwarte = !czymenujestotwarte;
		statmenucheck = !statmenucheck;
	};



};

