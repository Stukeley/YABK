
func void b_printschleife()
{
	var string punkte;
	var string gold;
	var string hp_own;
	var string hp_other;
	var string concatText;
	var int prozentangaberechts;
	var string heldenstufe;
	var string heldennext;
	var string heldenschwert;
	var string heldenruessi;
	var string heldenarmbrust;
	var int noetigekills;
	var int prozent;
	var string prozentstring;
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
	if((BOTK_GEWONNEN > 0) && !(Npc_IsInState(hero,ZS_Talk) && (hero.aivar[AIV_INVINCIBLE] == FALSE) && (ISTALKING == FALSE) && InfoManager_HasFinished()))
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
		}
		else if(MAP == MAP01)
		{
			CreateInvItems(hero,ItRu_TeleportSeaport,1);
			CreateInvItems(hero,ItRu_TeleportFarm,1);
			CreateInvItems(hero,ItRu_TeleportPassOW,1);
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
	gold = IntToString(Npc_HasItems(hero,ItMi_Gold));
	concatText = ConcatStrings(ConcatStrings("Z³oto: ",""),gold);
	AI_PrintScreen(concatText,prozentangaberechts,2,FONT_ScreenSmall,2);
	if(LAGER == 1)
	{
		punkte = IntToString(L1_EHRENPUNKTE);
	}
	else if(LAGER == 2)
	{
		punkte = IntToString(L2_EHRENPUNKTE);
	};
	concatText = ConcatStrings(ConcatStrings("Punkty Honoru: ",""),punkte);
	AI_PrintScreen(concatText,prozentangaberechts,4,FONT_ScreenSmall,2);
	if(LAGER == 1)
	{
		hp_own = IntToString((pal_1000_king.attribute * 100) / pal_1000_king.attribute[ATR_HITPOINTS_MAX]);
	}
	else if(LAGER == 2)
	{
		hp_own = IntToString((djg_2000_king.attribute * 100) / djg_2000_king.attribute[ATR_HITPOINTS_MAX]);
	};
	concatText = ConcatStrings(PRINT_STATUSOWNKING,hp_own);
	concatText = ConcatStrings(concatText,"%");
	AI_PrintScreen(concatText,prozentangaberechts,6,FONT_ScreenSmall,2);
	if(LAGER == 1)
	{
		hp_other = IntToString((djg_2000_king.attribute * 100) / djg_2000_king.attribute[ATR_HITPOINTS_MAX]);
	}
	else if(LAGER == 2)
	{
		hp_other = IntToString((pal_1000_king.attribute * 100) / pal_1000_king.attribute[ATR_HITPOINTS_MAX]);
	};
	concatText = ConcatStrings(PRINT_STATUSOTHERKING,hp_other);
	concatText = ConcatStrings(concatText,"%");
	AI_PrintScreen(concatText,prozentangaberechts,8,FONT_ScreenSmall,2);
	heldenstufe = PRINT_HELDENSTUFE;
	heldennext = PRINT_HELDENNEXT;
	heldenschwert = PRINT_HELDENSCHWERT;
	heldenruessi = PRINT_HELDENRUESSI;
	heldenarmbrust = PRINT_HELDENARMBRUST;
	if(LAGER == 1)
	{
		noetigekills = L1_HELD_SKILLLEVEL;
		heldenschwert = ConcatStrings(heldenschwert,IntToString(L1_HELD_SCHWERTLEVEL + 1));
		heldenruessi = ConcatStrings(heldenruessi,IntToString(L1_HELD_RUESTUNGLEVEL + 1));
		heldenarmbrust = ConcatStrings(heldenarmbrust,IntToString(L1_HELD_ARMBRUSTLEVEL));
	}
	else if(LAGER == 2)
	{
		noetigekills = L2_HELD_SKILLLEVEL;
		heldenschwert = ConcatStrings(heldenschwert,IntToString(L2_HELD_SCHWERTLEVEL + 1));
		heldenruessi = ConcatStrings(heldenruessi,IntToString(L2_HELD_RUESTUNGLEVEL + 1));
		heldenarmbrust = ConcatStrings(heldenarmbrust,IntToString(L2_HELD_ARMBRUSTLEVEL));
	};
	if(noetigekills >= (7 * TOTEGEGNERFUERSKILLLEVEL))
	{
		heldenstufe = ConcatStrings(heldenstufe,"8");
	}
	else if(noetigekills >= (6 * TOTEGEGNERFUERSKILLLEVEL))
	{
		heldenstufe = ConcatStrings(heldenstufe,"7");
	}
	else if(noetigekills >= (5 * TOTEGEGNERFUERSKILLLEVEL))
	{
		heldenstufe = ConcatStrings(heldenstufe,"6");
	}
	else if(noetigekills >= (4 * TOTEGEGNERFUERSKILLLEVEL))
	{
		heldenstufe = ConcatStrings(heldenstufe,"5");
	}
	else if(noetigekills >= (3 * TOTEGEGNERFUERSKILLLEVEL))
	{
		heldenstufe = ConcatStrings(heldenstufe,"4");
	}
	else if(noetigekills >= (2 * TOTEGEGNERFUERSKILLLEVEL))
	{
		heldenstufe = ConcatStrings(heldenstufe,"3");
	}
	else if(noetigekills >= (1 * TOTEGEGNERFUERSKILLLEVEL))
	{
		heldenstufe = ConcatStrings(heldenstufe,"2");
	}
	else
	{
		heldenstufe = ConcatStrings(heldenstufe,"1");
	};
	if(LAGER == 1)
	{
		noetigekills = L1_HELD_SKILLLEVEL;
	}
	else if(LAGER == 2)
	{
		noetigekills = L2_HELD_SKILLLEVEL;
	};
	if(noetigekills >= TOTEGEGNERFUERSKILLLEVEL)
	{
		noetigekills = noetigekills - TOTEGEGNERFUERSKILLLEVEL;
	};
	if(noetigekills >= TOTEGEGNERFUERSKILLLEVEL)
	{
		noetigekills = noetigekills - TOTEGEGNERFUERSKILLLEVEL;
	};
	if(noetigekills >= TOTEGEGNERFUERSKILLLEVEL)
	{
		noetigekills = noetigekills - TOTEGEGNERFUERSKILLLEVEL;
	};
	if(noetigekills >= TOTEGEGNERFUERSKILLLEVEL)
	{
		noetigekills = noetigekills - TOTEGEGNERFUERSKILLLEVEL;
	};
	if(noetigekills >= TOTEGEGNERFUERSKILLLEVEL)
	{
		noetigekills = noetigekills - TOTEGEGNERFUERSKILLLEVEL;
	};
	if(noetigekills >= TOTEGEGNERFUERSKILLLEVEL)
	{
		noetigekills = noetigekills - TOTEGEGNERFUERSKILLLEVEL;
	};
	if(noetigekills >= TOTEGEGNERFUERSKILLLEVEL)
	{
		noetigekills = noetigekills - TOTEGEGNERFUERSKILLLEVEL;
	};
	if(noetigekills >= TOTEGEGNERFUERSKILLLEVEL)
	{
		noetigekills = noetigekills - TOTEGEGNERFUERSKILLLEVEL;
	};
	if(noetigekills >= TOTEGEGNERFUERSKILLLEVEL)
	{
		noetigekills = noetigekills - TOTEGEGNERFUERSKILLLEVEL;
	};
	prozent = noetigekills * 100;
	prozent = prozent / TOTEGEGNERFUERSKILLLEVEL;
	if(prozent >= 100)
	{
		prozent = prozent - 100;
	};
	prozentstring = IntToString(prozent);
	heldenstufe = ConcatStrings(heldenstufe,PRINT_VON8);
	heldennext = ConcatStrings(heldennext,prozentstring);
	heldennext = ConcatStrings(heldennext,PRINT_PERCENT);
	heldenschwert = ConcatStrings(heldenschwert,PRINT_VON4);
	heldenruessi = ConcatStrings(heldenruessi,PRINT_VON3);
	heldenarmbrust = ConcatStrings(heldenarmbrust,PRINT_VON4);
	if(((LAGER == 1) && (L1_HELD_SPAWNED == TRUE)) || ((LAGER == 2) && (L2_HELD_SPAWNED == TRUE)))
	{
		AI_PrintScreen(heldenstufe,5,12,FONT_ScreenSmall,5);
		AI_PrintScreen(heldennext,5,14,FONT_ScreenSmall,5);
		AI_PrintScreen(heldenschwert,5,16,FONT_ScreenSmall,5);
		AI_PrintScreen(heldenruessi,5,18,FONT_ScreenSmall,5);
		AI_PrintScreen(heldenarmbrust,5,20,FONT_ScreenSmall,5);
	};
	if(LAGER != 2)
	{
		b_lagerzweiki();
	}
	else if(LAGER != 1)
	{
		b_lagereinski();
	};
};

