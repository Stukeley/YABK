/* 
AI_PrintScreen(
	string, <TEKST KT�RY WY�WIETLAMY NA EKRANIE> 
	odleg�o��OdLewejKraw�dzi, <PO PROSTU POSX>
	odleg�o��OdG�ry, <PO PROSTU POSY>
	FONT, <CZCIONECZKA Z PLICZKU>
	czasWy�wietlania <TUTAJ TO NIE WIEM, PRZY 0 NIE WIDA� TEKSTU, PRZY 1 TEKST MRYGA WI�C ZGADUJE �E CHODZI O CZAS WY�WIETLENIA>
)

*/

func void B_PrintSchleife()
{
	var string punkte;  // PUNKTY HONORU
	var string gold; // Z�OTO
	var string ore; // RUDA
	var string hp_own; // HP TWOJEGO KR�LA
	var string hp_other; // HP KR�LA PRZECIWNIKA
	var string concatText; // �ACZENIE TEKST�W (ZMIENNA POMOCNICZA)
	var int prozentangaberechts; // DO WYBRANIA POZYCJI X TEKST�W NA EKRANIE (DOMY�LNIE 0)
	var string heldenstufe; // init str Poziom bohatera
	var string heldennext; // init str Nast�pny poziom: 
	var string heldenschwert; // init str Poziom mieczy:
	var string heldenruessi; // init str Poziom zbroi:
	var string heldenarmbrust; // str Poziom kuszy:
	var int noetigekills; // ILO�� KILLI BOHATERA DO LICZENIA LVLA 
	var int prozent; // Procent do next lvl bohatera

	// PRZYPISANIE TESKT�W DO ZIMENNYCH 
	heldenstufe = PRINT_HELDENSTUFE; 
	heldennext = PRINT_HELDENNEXT; 
	heldenschwert = PRINT_HELDENSCHWERT; 
	heldenruessi = PRINT_HELDENRUESSI; 
	heldenarmbrust = PRINT_HELDENARMBRUST;

	// INIT GIERECZKI
	if(GIVERUNEN == FALSE)
	{
		if(NOSTARTMONEY == FALSE)
		{
			CreateInvItems(hero,ItMi_Gold,STARTGELD);
			L1_HAVEGOLD = STARTGELD;
			L2_HAVEGOLD = STARTGELD;
		};
		if(MAP == MACHTL_MAP)
		{
			CreateInvItems(hero,ItRu_TeleportSeaport,1);
			CreateInvItems(hero,ItRu_TeleportFarm,1);
			CreateInvItems(hero,ItRu_TeleportPassNW,1);
			CreateInvItems(hero,ItRu_TeleportMine,1);
		CreateInvItems(hero,ItRu_MonasteRune,1);
		}
		else if(MAP == MAP01)
		{
			CreateInvItems(hero,ItRu_TeleportSeaport,1);
			CreateInvItems(hero,ItRu_TeleportFarm,1);
			CreateInvItems(hero,ItRu_TeleportPassOW,1);
			CreateInvItems(hero,ItRu_TeleportMine,1);
		CreateInvItems(hero,ItRu_MonasteRune,1);
		}
		else if(MAP == VARUS_MAP)
		{
			CreateInvItems(hero,ItRu_TeleportSeaport,1);
			CreateInvItems(hero,ItRu_TeleportFarm,1);
			CreateInvItems(hero,ItRu_TeleportPassOW,1);
			CreateInvItems(hero,ItRu_TeleportPassNW,1);
			CreateInvItems(hero,ItRu_TeleportTaverne,1);
		};
		GIVERUNEN = TRUE;
	};


	// SPRAWDZENIE CZY I CZYJ KR�L JEST MARTWY (mo�e da si� lepiej ale co� mi nie dzia�a�o do sprawdzenia)
 	if((BOTK_GEWONNEN == 0) && Npc_IsDead(djg_2000_king))
	{
		if(LAGER == 2)
		{
			BOTK_GEWONNEN = 2;
		}
		else
		{
			BOTK_GEWONNEN = 1;
		};
	};
	if((BOTK_GEWONNEN == 0) && Npc_IsDead(pal_1000_king))
	{
		if(LAGER == 1)
		{
			BOTK_GEWONNEN = 2;
		}
		else
		{
			BOTK_GEWONNEN = 1;
		};
	};

	// KONIEC GIERECZKI
	if(BOTK_GEWONNEN > 0 && !(Npc_IsInState(hero,ZS_Talk) && (hero.aivar[AIV_INVINCIBLE] == FALSE) && (ISTALKING == FALSE) && InfoManager_HasFinished()))
	{
		if(BOTK_GEWONNEN == 1)
		{
			PlayVideo("PL_BotK_Wygrana.bik");
		}
		else
		{
			PlayVideo("PL_BotK_Przegrana.bik");
		};
		PlayVideo("PL_BotK_Credits.bik");
		ExitSession();
	};
	
	// SETUP HP KR�L�W, PUNKT�W HONORU I TESKST�W POZIOM�W BOHATERA
	if(LAGER == 1)
	{
		punkte = IntToString(L1_EHRENPUNKTE);
		hp_own = IntToString((pal_1000_king.attribute* 100) / pal_1000_king.attribute[ATR_HITPOINTS_MAX] );
		hp_other = IntToString((djg_2000_king.attribute * 100) / djg_2000_king.attribute[ATR_HITPOINTS_MAX]);

		noetigekills = L1_HELD_SKILLLEVEL;
		heldenschwert = ConcatStrings(heldenschwert,IntToString(L1_HELD_SCHWERTLEVEL + 1));
		heldenruessi = ConcatStrings(heldenruessi,IntToString(L1_HELD_RUESTUNGLEVEL + 1));
		heldenarmbrust = ConcatStrings(heldenarmbrust,IntToString(L1_HELD_ARMBRUSTLEVEL));
	}
	else if(LAGER == 2)
	{
		hp_own = IntToString((djg_2000_king.attribute * 100) / djg_2000_king.attribute[ATR_HITPOINTS_MAX]);
		hp_other = IntToString((pal_1000_king.attribute * 100) / pal_1000_king.attribute[ATR_HITPOINTS_MAX]);
		punkte = IntToString(L2_EHRENPUNKTE);


		noetigekills = L2_HELD_SKILLLEVEL;
		heldenschwert = ConcatStrings(heldenschwert,IntToString(L2_HELD_SCHWERTLEVEL + 1));
		heldenruessi = ConcatStrings(heldenruessi,IntToString(L2_HELD_RUESTUNGLEVEL + 1));
		heldenarmbrust = ConcatStrings(heldenarmbrust,IntToString(L2_HELD_ARMBRUSTLEVEL));
	};

	// GOLD NA SCREEN
	gold = IntToString(Npc_HasItems(hero,ItMi_Gold));
	concatText = ConcatStrings(ConcatStrings("Z�oto: ",""),gold);

		// Ruda NA SCREEN
	ore = IntToString(Npc_HasItems(hero,ItMi_Nugget));
	concatText = ConcatStrings(ConcatStrings("Magiczna Ruda: ",""),ore);

	// PUNKTY HONORU NA SCREEN
	concatText = ConcatStrings(ConcatStrings("Punkty Honoru: ",""),punkte);


	// HP KR�L�W W %  NA SCREEN
	concatText = ConcatStrings(PRINT_STATUSOWNKING,hp_own);
	concatText = ConcatStrings(concatText,"%");
	concatText = ConcatStrings(PRINT_STATUSOTHERKING,hp_other);
	concatText = ConcatStrings(concatText,"%");

	// AKUTALNY LVL BOHATERA NA SCREEN
	heldenstufe = ConcatStrings(heldenstufe, IntToString((noetigekills / TOTEGEGNERFUERSKILLLEVEL) + 1));

	// LICZENIE % DO NEXT LVLA
	prozent = noetigekills % TOTEGEGNERFUERSKILLLEVEL * 100;
	prozent = prozent / TOTEGEGNERFUERSKILLLEVEL;

	// STATYSTYKI BOHATERA ��CZONE W JEDN� LINI�
	heldenstufe = ConcatStrings(heldenstufe,PRINT_VON8);
	heldennext = ConcatStrings(heldennext,IntToString(prozent));
	heldennext = ConcatStrings(heldennext,PRINT_PERCENT);
	heldenschwert = ConcatStrings(heldenschwert,PRINT_VON4);
	heldenruessi = ConcatStrings(heldenruessi,PRINT_VON3);
	heldenarmbrust = ConcatStrings(heldenarmbrust,PRINT_VON4);

	// SPRAWDZANIE CZY MAMY BOHATERA I WY�WIETLANIE STAT�W
	if(((LAGER == 1) && (L1_HELD_SPAWNED == TRUE)) || ((LAGER == 2) && (L2_HELD_SPAWNED == TRUE)) && FALSE)
	{
		AI_PrintScreen(heldenstufe,5,12,FONT_ScreenSmall,5);
		AI_PrintScreen(heldennext,5,14,FONT_ScreenSmall,5);
		AI_PrintScreen(heldenschwert,5,16,FONT_ScreenSmall,5);
		AI_PrintScreen(heldenruessi,5,18,FONT_ScreenSmall,5);
		AI_PrintScreen(heldenarmbrust,5,20,FONT_ScreenSmall,5);
	};

	// POZOSTA�O�CI PO STARYM DEBUGOWANIU, MO�NA KORZYSTA� 
	if(LAGER == 2) {
		b_lagereinski();
	}
	else {
		b_lagerzweiki();
	};

};

