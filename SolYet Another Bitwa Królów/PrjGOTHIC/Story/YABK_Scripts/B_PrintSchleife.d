/* 
AI_PrintScreen(
	string, <TEKST KTÓRY WYŒWIETLAMY NA EKRANIE> 
	odleg³oœæOdLewejKrawêdzi, <PO PROSTU POSX>
	odleg³oœæOdGóry, <PO PROSTU POSY>
	FONT, <CZCIONECZKA Z PLICZKU>
	czasWyœwietlania <TUTAJ TO NIE WIEM, PRZY 0 NIE WIDAÆ TEKSTU, PRZY 1 TEKST MRYGA WIÊC ZGADUJE ¯E CHODZI O CZAS WYŒWIETLENIA>
)

*/

func void B_PrintSchleife()
{
	var string punkte;  // PUNKTY HONORU
	var string gold; // Z£OTO
	var string ore; // RUDA
	var string hp_own; // HP TWOJEGO KRÓLA
	var string hp_other; // HP KRÓLA PRZECIWNIKA
	var string concatText; // £ACZENIE TEKSTÓW (ZMIENNA POMOCNICZA)
	var int prozentangaberechts; // DO WYBRANIA POZYCJI X TEKSTÓW NA EKRANIE (DOMYŒLNIE 0)
	var string heldenstufe; // init str Poziom bohatera
	var string heldennext; // init str Nastêpny poziom: 
	var string heldenschwert; // init str Poziom mieczy:
	var string heldenruessi; // init str Poziom zbroi:
	var string heldenarmbrust; // str Poziom kuszy:
	var int noetigekills; // ILOŒÆ KILLI BOHATERA DO LICZENIA LVLA 
	var int prozent; // Procent do next lvl bohatera

	// PRZYPISANIE TESKTÓW DO ZIMENNYCH 
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


	// SPRAWDZENIE CZY I CZYJ KRÓL JEST MARTWY (mo¿e da siê lepiej ale coœ mi nie dzia³a³o do sprawdzenia)
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
	
	// SETUP HP KRÓLÓW, PUNKTÓW HONORU I TESKSTÓW POZIOMÓW BOHATERA
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
	concatText = ConcatStrings(ConcatStrings("Z³oto: ",""),gold);

		// Ruda NA SCREEN
	ore = IntToString(Npc_HasItems(hero,ItMi_Nugget));
	concatText = ConcatStrings(ConcatStrings("Magiczna Ruda: ",""),ore);

	// PUNKTY HONORU NA SCREEN
	concatText = ConcatStrings(ConcatStrings("Punkty Honoru: ",""),punkte);


	// HP KRÓLÓW W %  NA SCREEN
	concatText = ConcatStrings(PRINT_STATUSOWNKING,hp_own);
	concatText = ConcatStrings(concatText,"%");
	concatText = ConcatStrings(PRINT_STATUSOTHERKING,hp_other);
	concatText = ConcatStrings(concatText,"%");

	// AKUTALNY LVL BOHATERA NA SCREEN
	heldenstufe = ConcatStrings(heldenstufe, IntToString((noetigekills / TOTEGEGNERFUERSKILLLEVEL) + 1));

	// LICZENIE % DO NEXT LVLA
	prozent = noetigekills % TOTEGEGNERFUERSKILLLEVEL * 100;
	prozent = prozent / TOTEGEGNERFUERSKILLLEVEL;

	// STATYSTYKI BOHATERA £¥CZONE W JEDN¥ LINIÊ
	heldenstufe = ConcatStrings(heldenstufe,PRINT_VON8);
	heldennext = ConcatStrings(heldennext,IntToString(prozent));
	heldennext = ConcatStrings(heldennext,PRINT_PERCENT);
	heldenschwert = ConcatStrings(heldenschwert,PRINT_VON4);
	heldenruessi = ConcatStrings(heldenruessi,PRINT_VON3);
	heldenarmbrust = ConcatStrings(heldenarmbrust,PRINT_VON4);

	// SPRAWDZANIE CZY MAMY BOHATERA I WYŒWIETLANIE STATÓW
	if(((LAGER == 1) && (L1_HELD_SPAWNED == TRUE)) || ((LAGER == 2) && (L2_HELD_SPAWNED == TRUE)) && FALSE)
	{
		AI_PrintScreen(heldenstufe,5,12,FONT_ScreenSmall,5);
		AI_PrintScreen(heldennext,5,14,FONT_ScreenSmall,5);
		AI_PrintScreen(heldenschwert,5,16,FONT_ScreenSmall,5);
		AI_PrintScreen(heldenruessi,5,18,FONT_ScreenSmall,5);
		AI_PrintScreen(heldenarmbrust,5,20,FONT_ScreenSmall,5);
	};

	// POZOSTA£OŒCI PO STARYM DEBUGOWANIU, MO¯NA KORZYSTAÆ 
	if(LAGER == 2) {
		b_lagereinski();
	}
	else {
		b_lagerzweiki();
	};

};

