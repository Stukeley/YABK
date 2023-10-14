// Wyglada jak plik odpowiedzialny za "AI" przeciwnika.

var int l2_ehrenpunktchoice;
var int ki_type_2;
var int merc_count_2;
var int l2_erstewachegebaut;
var int l2_ersterarbeiter;

func void b_lagerzweinotsoeldner()
{
	if(L2_HAVEGOLD >= SOELDNERLEVEL4_COST)
	{
		L2_HAVEGOLD -= SOELDNERLEVEL4_COST;
		L2_CURRENT_MERCLEVEL = 4;
		b_debug("Ich baue einen meisterhaften Söldner für ",SOELDNERLEVEL4_COST);
		B_Message("NEWS_Gegner_Soeldner");
		B_SpawnSoeldner(GIL_DJG);
	}
	else if(L2_HAVEGOLD >= SOELDNERLEVEL3_COST)
	{
		L2_HAVEGOLD -= SOELDNERLEVEL3_COST;
		L2_CURRENT_MERCLEVEL = 3;
		b_debug("Ich baue einen starken Söldner für ",SOELDNERLEVEL3_COST);
		B_Message("NEWS_Gegner_Soeldner");
		B_SpawnSoeldner(GIL_DJG);
	};
};

func void b_lagerzweiki_wirtschaft()
{
	var int cost;
	var int zusaetzlichewachen;
	var int klaugold;
	var int havegold;
	if(Npc_IsInState(djg_2000_king,ZS_Attack) && (L1_SOLDIER_LEVEL >= 5))
	{
		b_debug("Hilfe, mein König ist in Not!",0);
		b_lagerzweinotsoeldner();
	};
	if(REACTONMERCS > 0)
	{
		if(L2_HAVEGOLD >= SOELDNERLEVEL3_COST)
		{
			b_lagerzweinotsoeldner();
			REACTONMERCS = REACTONMERCS - 1;
		};
	};
	if((L2_HAVEGOLD >= MINENCOST) && (L2_MINE_ERBAUT != TRUE) && ((SCHWIERIGKEIT >= DIFF_NORMAL) || (L2_SOLDIER_LEVEL >= 1)))
	{
		b_debug("Ich kaufe mir die Mine für ",MINENCOST);
		L2_HAVEGOLD -= MINENCOST;
		L2_MINE_ERBAUT = TRUE;
	};
	if((MAP == MACHTL_MAP) || (MAP == VARUS_MAP))
	{
		if((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) && (L2_LEBENDEMINENARBEITER < (BIGMINE_GOLD / 2)) && (L2_HAVEGOLD >= MINENARBEITERSOELDNER) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L2_ERSTERARBEITER == FALSE) && (L2_MINENLEUTE < MAXMINENLEUTE))
		{
			L2_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L2_LEBENDEMINENARBEITER += 1;
			L2_MINENLEUTE += 1;
			L2_ERSTERARBEITER = TRUE;
		};
		if((SCHWIERIGKEIT >= DIFF_NORMAL) && (L2_ERSTEWACHEGEBAUT == FALSE) && (L2_HAVEGOLD >= MINENWACHE) && (L1_LEBENDEMINENARBEITER > 0) && (L2_MINENLEUTE < MAXMINENLEUTE))
		{
			L2_HAVEGOLD -= MINENWACHE;
			Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			B_Message("NEWS_Gegner_Minenwachen");
			L2_LEBENDEMINENWACHEN += 1;
			L2_MINENLEUTE += 1;
			L2_ERSTEWACHEGEBAUT = TRUE;
		};
	};
	if((L2_HAVEWEAPONS >= 3) && (L2_HAVEGOLD >= SMITHCOST) && (L2_SCHMIEDE_ERBAUT == TRUE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		b_debug("Waffenupgrate für ",SMITHCOST);
		L2_USED_WEAPON += 1;
		L2_HAVEGOLD -= SMITHCOST;
		L2_HAVEWEAPONS = 0;
		if(L2_USED_WEAPON >= MAXWEAPONSTEP)
		{
			L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
		};
	};
	if((L2_HAVEARMORS >= 3) && (L2_HAVEGOLD >= SMITHCOST) && (L2_SCHMIEDE_ERBAUT == TRUE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		b_debug("Rüstungsupgrate für ",SMITHCOST);
		L2_USED_ARMOR += 1;
		L2_HAVEGOLD -= SMITHCOST;
		L2_HAVEARMORS = 0;
		if(L2_USED_ARMOR >= MAXARMORSTEP)
		{
			L2_SCHMIEDGEGENSTAND = SCHMIED_WAFFEN;
		};
	};
	if(SCHWIERIGKEIT >= DIFF_NORMAL)
	{
		cost = L2_SOLDIER_LEVEL * COSTPERLEVELSTEP;
	}
	else
	{
		cost = L2_SOLDIER_LEVEL * (COSTPERLEVELSTEP + 10);
	};
	if((L2_HAVEGOLD > cost) && (L2_SOLDIER_LEVEL < 7) && ((L2_MINE_ERBAUT == TRUE) || (SCHWIERIGKEIT <= DIFF_LIGHT)) && ((L2_MINE == 3) || (SCHWIERIGKEIT <= DIFF_NORMAL)) && (L2_SCHMIEDE_ERBAUT == TRUE))
	{
		if((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || ((MAP != MACHTL_MAP) && (MAP != VARUS_MAP)) || (L2_SOLDIER_LEVEL <= 3))
		{
			L2_HAVEGOLD -= cost;
			b_debug("Soldaten-Upgrade für ",cost);
			L2_SOLDIER_LEVEL += 1;
		};
	};
	if((L2_HAVEGOLD >= MINENARBEITERCOST) && (L2_MINE > 0) && (L2_MINE < 3) && (L2_SOLDIER_LEVEL >= 0))
	{
		L2_HAVEGOLD -= MINENARBEITERCOST;
		L2_MINE += 1;
		if(L2_MINE == 2)
		{
			Wld_InsertNpc(djg_2009_minenarbeiter,"L2_MINE_GOLD_2");
		};
		if(L2_MINE == 3)
		{
			Wld_InsertNpc(djg_2010_minenarbeiter,"L2_MINE_GOLD_3");
		};
		b_debug("Ich kaufe mir einen Minenarbeiter für ",MINENARBEITERCOST);
	};
	if((L2_HAVEGOLD > SMITHCOST) && (L2_SCHMIEDE_ERBAUT == FALSE) && (L2_MINE > 1) && (L2_SOLDIER_LEVEL >= 1) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L2_SCHMIEDE_ERBAUT = TRUE;
		L2_HAVEGOLD -= SMITHCOST;
		b_debug("Ich kaufe mir die Schmiede für ",SMITHCOST);
	};
	if(((MAP == MACHTL_MAP) || (MAP == VARUS_MAP)) && (L2_MINE >= 1) && (REACTONMERCS == 0))
	{
		if((L2_LEBENDEMINENWACHEN <= L1_LEBENDEMINENWACHEN) && (((L2_LEBENDEMINENWACHEN + 2) > L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_LIGHT)) && (L2_HAVEGOLD >= MINENWACHE) && (L2_MINENLEUTE < MAXMINENLEUTE))
		{
			L2_HAVEGOLD -= MINENWACHE;
			Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			B_Message("NEWS_Gegner_Minenwachen");
			L2_LEBENDEMINENWACHEN += 1;
			L2_MINENLEUTE += 1;
		};
		zusaetzlichewachen = ((L1_LEBENDEMINENWACHEN - L2_LEBENDEMINENWACHEN) + SCHWIERIGKEIT) - 1;
		if((zusaetzlichewachen + L2_MINENLEUTE) >= MAXMINENLEUTE)
		{
			zusaetzlichewachen = MAXMINENLEUTE - L2_MINENLEUTE;
		};
		if((L2_LEBENDEMINENWACHEN <= (L1_LEBENDEMINENWACHEN - 2)) && (L2_HAVEGOLD >= (MINENWACHE * zusaetzlichewachen)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
		{
			L2_HAVEGOLD -= MINENWACHE * zusaetzlichewachen;
			if(zusaetzlichewachen >= 1)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 2)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 3)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 4)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 5)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 6)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 7)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 8)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 9)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 10)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			B_Message("NEWS_Gegner_Minenwachen");
			L2_LEBENDEMINENWACHEN += zusaetzlichewachen;
			L2_MINENLEUTE += zusaetzlichewachen;
		};
		if((L2_LEBENDEMINENWACHEN > L1_LEBENDEMINENWACHEN) && (L2_LEBENDEMINENARBEITER < BIGMINE_GOLD) && (L2_HAVEGOLD >= MINENARBEITERSOELDNER) && (L2_MINENLEUTE < MAXMINENLEUTE))
		{
			L2_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L2_MINENLEUTE += 1;
			L2_LEBENDEMINENARBEITER += 1;
		};
	};
	if((L2_HAVEGOLD > MAGECOST) && (L2_MAGIE_ERBAUT == FALSE) && (L2_SOLDIER_LEVEL >= 2) && (L2_MINE >= 3) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L2_MAGIE_ERBAUT = TRUE;
		L2_HAVEGOLD -= MAGECOST;
		b_debug("Ich kaufe mir den Gelehrten für ",MAGECOST);
	};
	if((L2_HAVEGOLD > GOLD_UPDATE) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_SOLDIER_LEVEL >= 2) && (L2_GOLD_UPDATE == FALSE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L2_TRANK_ERFORSCHEN = POTION_GOLDUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= GOLD_UPDATE;
		b_debug("Ich kaufe mir das Gold-Upgrade für ",GOLD_UPDATE);
	};
	if((L2_HAVEGOLD > GOLD_UPDATE) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_SOLDIER_LEVEL >= 2) && (L2_EHRE_UPDATE == FALSE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L2_TRANK_ERFORSCHEN = POTION_EHRENUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= GOLD_UPDATE;
		b_debug("Ich kaufe mir das Ehren-Upgrade für ",GOLD_UPDATE);
	};
	if((L2_MINE >= 3) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || ((MAP != VARUS_MAP) && (MAP != MACHTL_MAP))) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L2_HELD_SPAWNED == FALSE) && (L2_HAVEGOLD >= HERO_COST) && (L2_SOLDIER_LEVEL >= 2))
	{
		B_ReviveDjgHero();
		B_Message("NEWS_Gegner_Held");
		L2_HAVEGOLD -= HERO_COST;
		L2_HELD_SPAWNED = TRUE;
	};
	if((MAP == VARUS_MAP) && (L2_MINE >= 3) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L2_LEBENDEHOEHLENSOELDNER < MAXHOEHLENWACHEN) && (L2_SOLDIER_LEVEL >= 2) && (REACTONMERCS == 0))
	{
		if((L1_LEBENDEHOEHLENSOELDNER == 0) && (L2_LEBENDEHOEHLENSOELDNER == 0))
		{
			if(L2_HAVEGOLD >= (HOEHLENSOELDNER * 3))
			{
				L2_HAVEGOLD -= HOEHLENSOELDNER * 3;
				L2_LEBENDEHOEHLENSOELDNER += 3;
				Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
				Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
				Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
				B_Message("NEWS_Gegner_HoehlenSoeldner");
			};
		}
		else if((((L1_LEBENDEHOEHLENSOELDNER + SCHWIERIGKEIT) - 1) >= L2_LEBENDEHOEHLENSOELDNER) || (SKELETONKONTROLL == GIL_PAL))
		{
			if(L2_HAVEGOLD >= HOEHLENSOELDNER)
			{
				L2_HAVEGOLD -= HOEHLENSOELDNER;
				Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
				L2_LEBENDEHOEHLENSOELDNER += 1;
				B_Message("NEWS_Gegner_HoehlenSoeldner");
			};
		};
	};
	if((L2_HAVEGOLD > SMITHUPGRADE_COST) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_SOLDIER_LEVEL >= 4) && (L2_SCHMIEDESTEP == SCHMIEDESTEP) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_TRANK_ERFORSCHEN = POTION_SMITHUPGRADE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= SMITHUPGRADE_COST;
		b_debug("Ich verbessere meinen Schmied für ",SMITHUPGRADE_COST);
	};
	if(((djg_2160_wache.attribute[ATR_HITPOINTS] == 0) || (djg_2161_wache.attribute[ATR_HITPOINTS] == 0)) && (L2_HAVEGOLD > WACHE_COST) && (L2_SOLDIER_LEVEL >= 4) && (L1_SOLDIER_LEVEL >= 3) && (L2_MAGIE > 0) && (L1_SOLDIER_LEVEL < (L2_WACHEN_LEVEL + 4)) && (L2_GOLD_UPDATE == TRUE) && (L2_WACHEN_LEVEL >= 3) && ((MAP == MAP01) || (MAP == VARUS_MAP)))
	{
		L2_HAVEGOLD -= WACHE_COST;
		if(Npc_IsDead(djg_2161_wache))
		{
			Wld_InsertNpc(djg_2161_wache,"L2_WACHE_02");
		}
		else if(Npc_IsDead(djg_2160_wache))
		{
			Wld_InsertNpc(djg_2160_wache,"L2_WACHE_01");
		};
		b_debug("Ich kauf mir ne Wache für ",WACHE_COST);
	};
	if((L2_HAVEGOLD > (L2_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL)) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_WACHEN_LEVEL < 4) && (L2_SOLDIER_LEVEL >= 3) && (L2_GOLD_UPDATE == TRUE) && (L2_SOLDIER_LEVEL >= 4) && ((MAP == MAP01) || (MAP == VARUS_MAP)))
	{
		L2_TRANK_ERFORSCHEN = POTION_WACHENUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= L2_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL;
		b_debug("Ich verbessere meine Wachen für ",L2_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL);
	};
	if((L2_HAVEGOLD > MAGIERUPDATE_COST) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_SOLDIER_LEVEL >= 4) && (L2_MAGIERUPDATE == FALSE) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_TRANK_ERFORSCHEN = POTION_MAGIERUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= MAGIERUPDATE_COST;
		b_debug("Ich verbessere meine Magier für ",MAGIERUPDATE_COST);
	};
	if((L2_HAVEGOLD > BLITZSCHLAG_COST) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_BLITZSCHLAGERFORSCHT == FALSE) && (L2_SOLDIER_LEVEL >= 4) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_ZAUBER_ERFORSCHEN = SPELLBLITZSCHLAG;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		B_StartOtherRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= BLITZSCHLAG_COST;
		b_debug("Ich erforsche Blitzschlag für ",BLITZSCHLAG_COST);
	};
	if((L2_SOLDIER_LEVEL >= 5) && (L2_HAVEGOLD >= HERO_RUESTUNGSUPGRADE) && (L2_HELD_RUESTUNGLEVEL < 2) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_HELD_RUESTUNGLEVEL += 1;
		L2_HAVEGOLD -= HERO_RUESTUNGSUPGRADE;
		if(L2_HELD_RUESTUNGLEVEL == 1)
		{
			if(FRAKTION_L2 == DJG)
			{
				CreateInvItems(djg_2012_hero,itar_djg_l,1);
			}
			else if(FRAKTION_L2 == PAL)
			{
				CreateInvItems(djg_2012_hero,ItAr_PAL_M,1);
			}
			else if(FRAKTION_L2 == TMP)
			{
				CreateInvItems(djg_2012_hero,itar_tmp_m,1);
			};
		};
		if(L2_HELD_RUESTUNGLEVEL == 2)
		{
			if(FRAKTION_L2 == DJG)
			{
				CreateInvItems(djg_2012_hero,itar_djg_h,1);
			}
			else if(FRAKTION_L2 == PAL)
			{
				CreateInvItems(djg_2012_hero,ItAr_PAl_H,1);
			}
			else if(FRAKTION_L2 == TMP)
			{
				CreateInvItems(djg_2012_hero,itar_tmp_h,1);
			};
		};
		AI_EquipBestArmor(djg_2012_hero);
	};
	if((L2_SOLDIER_LEVEL >= 5) && (L2_HAVEGOLD >= HERO_WAFFENUPGRADE) && (L2_HELD_SCHWERTLEVEL < 3) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_HELD_SCHWERTLEVEL += 1;
		L2_HAVEGOLD -= HERO_WAFFENUPGRADE;
		if(L2_HELD_SCHWERTLEVEL == 1)
		{
			djg_2012_hero.HitChance[NPC_TALENT_1H] = 54;
			djg_2012_hero.HitChance[NPC_TALENT_2H] = 54;
			CreateInvItem(djg_2012_hero,itmw_hero_2);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST1.mds");
		};
		if(L2_HELD_SCHWERTLEVEL == 2)
		{
			djg_2012_hero.HitChance[NPC_TALENT_1H] = 77;
			djg_2012_hero.HitChance[NPC_TALENT_2H] = 77;
			CreateInvItem(djg_2012_hero,itmw_hero_3);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST2.mds");
		};
		if(L2_HELD_SCHWERTLEVEL >= 3)
		{
			djg_2012_hero.HitChance[NPC_TALENT_1H] = 100;
			djg_2012_hero.HitChance[NPC_TALENT_2H] = 100;
			CreateInvItem(djg_2012_hero,itmw_hero_4);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST2.mds");
		};
		AI_EquipBestMeleeWeapon(djg_2012_hero);
	};
	if((L2_SOLDIER_LEVEL >= 5) && (L2_HAVEGOLD >= HERO_ARMBRUSTUPGRADE) && (L2_HELD_ARMBRUSTLEVEL < 4) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_HELD_ARMBRUSTLEVEL += 1;
		L2_HAVEGOLD -= HERO_ARMBRUSTUPGRADE;
		if(L2_HELD_ARMBRUSTLEVEL == 1)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 30;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 30;
			CreateInvItems(djg_2012_hero,ItRw_Crossbow_L_02,1);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST1.mds");
		};
		if(L2_HELD_ARMBRUSTLEVEL == 2)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 54;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 54;
			CreateInvItems(djg_2012_hero,ItRw_Crossbow_M_01,1);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_BowT1.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_CBowT1.mds");
		};
		if(L2_HELD_ARMBRUSTLEVEL == 3)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 77;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 77;
			CreateInvItems(djg_2012_hero,ItRw_Crossbow_M_02,1);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_CBowT2.mds");
		};
		if(L2_HELD_ARMBRUSTLEVEL >= 4)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 100;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 100;
			CreateInvItems(djg_2012_hero,ItRw_Crossbow_H_01,1);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_CBowT2.mds");
		};
		AI_EquipBestRangedWeapon(djg_2012_hero);
	};
	if((L2_HAVEGOLD > HEILTRANK_COST) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_SOLDIER_LEVEL >= 5) && (L2_HEILTRANKERFORSCHT == FALSE) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_TRANK_ERFORSCHEN = POTION_HEILTRANK;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= HEILTRANK_COST;
		b_debug("Ich erforsche den Heiltrank für ",HEILTRANK_COST);
	};
	if((L2_HAVEGOLD > HEILUNG_COST) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_WUNDENHEILENERFORSCHT == FALSE) && (L2_SOLDIER_LEVEL >= 5) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_ZAUBER_ERFORSCHEN = SPELLHEILUNG;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		B_StartOtherRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= HEILUNG_COST;
		b_debug("Ich erforsche die Heilung für ",HEILUNG_COST);
	};
	if((L2_HAVEGOLD >= (SOELDNERLEVEL4_COST * 3)) && (L2_SOLDIER_LEVEL >= 7) && (NOMERCS_ON == FALSE) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_HAVEGOLD -= SOELDNERLEVEL4_COST * 3;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		b_debug("Ich kaufe drei meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 2);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if(Npc_IsInState(pal_1000_king,ZS_Attack) && (L2_EHRENPUNKTE >= BONUSHPPERK_COST) && (L2_BONUSHPPERK == FALSE) && (L2_SOLDIER_LEVEL >= 7) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_BONUSHPPERK = TRUE;
		L2_EHRENPUNKTE -= BONUSHPPERK_COST;
		b_debug("Der gegnerische König wird angegriffen, also leiste ich mir Unsterblichkeit für ",BONUSHPPERK_COST);
	};
	if (L2_BONUSHPPERK == FALSE && L2_EHRENPUNKTE >= BONUSHPPERK_COST && SCHWIERIGKEIT >= DIFF_NORMAL)
	{
		L2_EHRENPUNKTE -= BONUSHPPERK_COST;
		L2_BONUSHPPERK = TRUE;
		b_debug("Ich kaufe mir den Bonus-HP-Perk für: ", BONUSHPPERK_COST);
	};
	if((L2_EHRENPUNKTE >= REVIVE_COST) && ((L2_REVIVE == FALSE) && (FRAKTION_L2 == PAL)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_EHRENPUNKTE -= REVIVE_COST;
		L2_REVIVE = TRUE;
		L2_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir Wiederbelebungschance für: ",REVIVE_COST);
	};
	if((L2_EHRENPUNKTE >= VAMPIR_COST) && ((L2_VAMPIRSCHLAG == FALSE) && (FRAKTION_L2 == TMP)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_EHRENPUNKTE -= VAMPIR_COST;
		L2_VAMPIRSCHLAG = TRUE;
		L2_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir den Vampirschlag für: ",VAMPIR_COST);
	};
	if((L2_EHRENPUNKTE >= INSTANTKILL_COST) && (L2_INSTANTKILL == FALSE) && (FRAKTION_L2 == DJG) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_EHRENPUNKTE -= INSTANTKILL_COST;
		L2_VAMPIRSCHLAG = TRUE;
		L2_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir den Instantkill für: ",INSTANTKILL_COST);
	};
	if((L2_EHRENPUNKTE >= (BONUSHPPERK_COST + MERC_COST)) && (L2_EHRENPUNKTCHOICE == 1) && (SCHWIERIGKEIT >= DIFF_NORMAL) && ((L2_REVIVE == TRUE) || (L2_INSTANTKILL == TRUE) || (L2_VAMPIRSCHLAG == TRUE)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_EHRENPUNKTE -= MERC_COST;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		L2_EHRENPUNKTCHOICE = 0;
		b_debug("Ich hole mir zwei Söldner für soviele Ehrenpunkte: ",MERC_COST);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L2_EHRENPUNKTE >= (BONUSHPPERK_COST + KLAU_COST)) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L2_EHRENPUNKTCHOICE == 0) && ((L2_REVIVE == TRUE) || (L2_INSTANTKILL == TRUE) || (L2_VAMPIRSCHLAG == TRUE)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		havegold = Npc_HasItems(hero,ItMi_Gold);
		if(havegold >= KLAU_FUER_EHRENPUNKTE)
		{
			klaugold = KLAU_FUER_EHRENPUNKTE;
		}
		else
		{
			klaugold = havegold;
		};
		L2_HAVEGOLD += klaugold;
		Print(b_KlauString(klaugold));
		L2_EHRENPUNKTE -= KLAU_COST;
		if(NOMERCS_ON == FALSE)
		{
			L2_EHRENPUNKTCHOICE = 1;
		};
		b_debug("Ich klaue mir Gold für folgende Ehrenpunkte: ",KLAU_COST);
	};
};

func void b_lagerzweiki_held()
{
	var int cost;
	var int zusaetzlichewachen;
	var int klaugold;
	var int havegold;
	if(Npc_IsInState(djg_2000_king,ZS_Attack) && (L1_SOLDIER_LEVEL >= 5))
	{
		b_debug("Hilfe, mein König ist in Not!",0);
		b_lagerzweinotsoeldner();
	};
	if(REACTONMERCS > 0)
	{
		if(L2_HAVEGOLD >= SOELDNERLEVEL3_COST)
		{
			b_lagerzweinotsoeldner();
			REACTONMERCS = REACTONMERCS - 1;
		};
	};
	if((L2_HAVEGOLD >= MINENCOST) && (L2_MINE_ERBAUT != TRUE) && ((SCHWIERIGKEIT >= DIFF_NORMAL) || (L2_SOLDIER_LEVEL == 1)))
	{
		b_debug("Ich kaufe mir die Mine für ",MINENCOST);
		L2_HAVEGOLD -= MINENCOST;
		L2_MINE_ERBAUT = TRUE;
	};
	if((MAP == MACHTL_MAP) || (MAP == VARUS_MAP))
	{
		if((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) && (L2_LEBENDEMINENARBEITER < (BIGMINE_GOLD / 2)) && (L2_HAVEGOLD >= MINENARBEITERSOELDNER) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L2_ERSTERARBEITER == FALSE))
		{
			L2_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L2_LEBENDEMINENARBEITER += 1;
			L2_MINENLEUTE += 1;
			L2_ERSTERARBEITER = TRUE;
		};
		if((SCHWIERIGKEIT >= DIFF_NORMAL) && (L2_ERSTEWACHEGEBAUT == FALSE) && (L2_HAVEGOLD >= MINENWACHE) && (L1_LEBENDEMINENARBEITER > 0))
		{
			L2_HAVEGOLD -= MINENWACHE;
			Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			B_Message("NEWS_Gegner_Minenwachen");
			L2_MINENLEUTE += 1;
			L2_LEBENDEMINENWACHEN += 1;
			L2_ERSTEWACHEGEBAUT = TRUE;
		};
	};
	if((L2_HAVEWEAPONS >= 3) && (L2_HAVEGOLD >= SMITHCOST) && (L2_SCHMIEDE_ERBAUT == TRUE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		b_debug("Waffenupgrate für ",SMITHCOST);
		L2_USED_WEAPON += 1;
		L2_HAVEGOLD -= SMITHCOST;
		L2_HAVEWEAPONS = 0;
		if(L2_USED_WEAPON >= MAXWEAPONSTEP)
		{
			L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
		};
	};
	if((L2_HAVEARMORS >= 3) && (L2_HAVEGOLD >= SMITHCOST) && (L2_SCHMIEDE_ERBAUT == TRUE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		b_debug("Rüstungsupgrate für ",SMITHCOST);
		L2_USED_ARMOR += 1;
		L2_HAVEGOLD -= SMITHCOST;
		L2_HAVEARMORS = 0;
		if(L2_USED_ARMOR >= MAXARMORSTEP)
		{
			L2_SCHMIEDGEGENSTAND = SCHMIED_WAFFEN;
		};
	};
	if((L2_MINE >= 3) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || ((MAP != VARUS_MAP) && (MAP != MACHTL_MAP))) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L2_HELD_SPAWNED == FALSE) && (L2_HAVEGOLD >= HERO_COST))
	{
		B_ReviveDjgHero();
		B_Message("NEWS_Gegner_Held");
		L2_HAVEGOLD -= HERO_COST;
		L2_HELD_SPAWNED = TRUE;
	};
	if(SCHWIERIGKEIT >= DIFF_NORMAL)
	{
		cost = L2_SOLDIER_LEVEL * COSTPERLEVELSTEP;
	}
	else
	{
		cost = L2_SOLDIER_LEVEL * (COSTPERLEVELSTEP + 10);
	};
	if((L2_HAVEGOLD > cost) && (L2_SOLDIER_LEVEL < 7) && ((L2_MINE_ERBAUT == TRUE) || (SCHWIERIGKEIT <= DIFF_LIGHT)) && ((L2_MINE >= 3) || (SCHWIERIGKEIT <= DIFF_NORMAL)) && (L2_SCHMIEDE_ERBAUT == TRUE) && (L2_HELD_SPAWNED == TRUE))
	{
		if((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || ((MAP != MACHTL_MAP) && (MAP != VARUS_MAP)) || (L2_SOLDIER_LEVEL <= 3))
		{
			L2_HAVEGOLD -= cost;
			b_debug("Soldaten-Upgrade für ",cost);
			L2_SOLDIER_LEVEL += 1;
		};
	};
	if((L2_HAVEGOLD >= MINENARBEITERCOST) && (L2_MINE > 0) && (L2_MINE < 3))
	{
		L2_HAVEGOLD -= MINENARBEITERCOST;
		L2_MINE += 1;
		if(L2_MINE == 2)
		{
			Wld_InsertNpc(djg_2009_minenarbeiter,"L2_MINE_GOLD_2");
		};
		if(L2_MINE == 3)
		{
			Wld_InsertNpc(djg_2010_minenarbeiter,"L2_MINE_GOLD_3");
		};
		b_debug("Ich kaufe mir einen Minenarbeiter für ",MINENARBEITERCOST);
	};
	if(((MAP == MACHTL_MAP) || (MAP == VARUS_MAP)) && (L2_MINE >= 1))
	{
		if((L2_LEBENDEMINENWACHEN <= L1_LEBENDEMINENWACHEN) && (((L2_LEBENDEMINENWACHEN + 2) > L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_LIGHT)) && (L2_HAVEGOLD >= MINENWACHE) && (L2_MINENLEUTE < MAXMINENLEUTE))
		{
			L2_HAVEGOLD -= MINENWACHE;
			Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			B_Message("NEWS_Gegner_Minenwachen");
			L2_LEBENDEMINENWACHEN += 1;
			L2_MINENLEUTE += 1;
		};
		zusaetzlichewachen = ((L1_LEBENDEMINENWACHEN - L2_LEBENDEMINENWACHEN) + SCHWIERIGKEIT) - 1;
		if((zusaetzlichewachen + L2_MINENLEUTE) >= MAXMINENLEUTE)
		{
			zusaetzlichewachen = MAXMINENLEUTE - L2_MINENLEUTE;
		};
		if((L2_LEBENDEMINENWACHEN <= (L1_LEBENDEMINENWACHEN - 2)) && (L2_HAVEGOLD >= (MINENWACHE * zusaetzlichewachen)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
		{
			L2_HAVEGOLD -= MINENWACHE * zusaetzlichewachen;
			if(zusaetzlichewachen >= 1)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 2)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 3)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 4)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 5)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 6)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 7)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 8)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 9)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 10)
			{
				Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
			};
			L2_LEBENDEMINENWACHEN += zusaetzlichewachen;
			L2_MINENLEUTE += zusaetzlichewachen;
			B_Message("NEWS_Gegner_Minenwachen");
		};
		if((L2_LEBENDEMINENWACHEN > L1_LEBENDEMINENWACHEN) && (L2_LEBENDEMINENARBEITER < BIGMINE_GOLD) && (L2_HAVEGOLD >= MINENARBEITERSOELDNER) && (L2_MINENLEUTE < MAXMINENLEUTE))
		{
			L2_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L2_MINENLEUTE += 1;
			L2_LEBENDEMINENARBEITER += 1;
		};
	};
	if((L2_SOLDIER_LEVEL >= 2) && (L2_HAVEGOLD >= HERO_RUESTUNGSUPGRADE) && (L2_HELD_RUESTUNGLEVEL < 2) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN))
	{
		L2_HELD_RUESTUNGLEVEL += 1;
		L2_HAVEGOLD -= HERO_RUESTUNGSUPGRADE;
		if(L2_HELD_RUESTUNGLEVEL == 1)
		{
			if(FRAKTION_L2 == DJG)
			{
				CreateInvItems(djg_2012_hero,itar_djg_l,1);
			}
			else if(FRAKTION_L2 == PAL)
			{
				CreateInvItems(djg_2012_hero,ItAr_PAL_M,1);
			}
			else if(FRAKTION_L2 == TMP)
			{
				CreateInvItems(djg_2012_hero,itar_tmp_m,1);
			};
		};
		if(L2_HELD_RUESTUNGLEVEL == 2)
		{
			if(FRAKTION_L2 == DJG)
			{
				CreateInvItems(djg_2012_hero,itar_djg_h,1);
			}
			else if(FRAKTION_L2 == PAL)
			{
				CreateInvItems(djg_2012_hero,ItAr_PAl_H,1);
			}
			else if(FRAKTION_L2 == TMP)
			{
				CreateInvItems(djg_2012_hero,itar_tmp_h,1);
			};
		};
		AI_EquipBestArmor(djg_2012_hero);
	};
	if((L2_SOLDIER_LEVEL >= 2) && (L2_HAVEGOLD >= HERO_WAFFENUPGRADE) && (L2_HELD_SCHWERTLEVEL < 3) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN))
	{
		L2_HELD_SCHWERTLEVEL += 1;
		L2_HAVEGOLD -= HERO_WAFFENUPGRADE;
		if(L2_HELD_SCHWERTLEVEL == 1)
		{
			djg_2012_hero.HitChance[NPC_TALENT_1H] = 54;
			djg_2012_hero.HitChance[NPC_TALENT_2H] = 54;
			CreateInvItem(djg_2012_hero,itmw_hero_2);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST1.mds");
		};
		if(L2_HELD_SCHWERTLEVEL == 2)
		{
			djg_2012_hero.HitChance[NPC_TALENT_1H] = 77;
			djg_2012_hero.HitChance[NPC_TALENT_2H] = 77;
			CreateInvItem(djg_2012_hero,itmw_hero_3);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST2.mds");
		};
		if(L2_HELD_SCHWERTLEVEL >= 3)
		{
			djg_2012_hero.HitChance[NPC_TALENT_1H] = 100;
			djg_2012_hero.HitChance[NPC_TALENT_2H] = 100;
			CreateInvItem(djg_2012_hero,itmw_hero_4);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST2.mds");
		};
		AI_EquipBestMeleeWeapon(djg_2012_hero);
	};
	if((L2_SOLDIER_LEVEL >= 2) && (L2_HAVEGOLD >= HERO_ARMBRUSTUPGRADE) && (L2_HELD_ARMBRUSTLEVEL < 4) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN))
	{
		L2_HELD_ARMBRUSTLEVEL += 1;
		L2_HAVEGOLD -= HERO_ARMBRUSTUPGRADE;
		if(L2_HELD_ARMBRUSTLEVEL == 1)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 30;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 30;
			CreateInvItems(djg_2012_hero,ItRw_Crossbow_L_02,1);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST1.mds");
		};
		if(L2_HELD_ARMBRUSTLEVEL == 2)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 54;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 54;
			CreateInvItems(djg_2012_hero,ItRw_Crossbow_M_01,1);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_BowT1.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_CBowT1.mds");
		};
		if(L2_HELD_ARMBRUSTLEVEL == 3)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 77;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 77;
			CreateInvItems(djg_2012_hero,ItRw_Crossbow_M_02,1);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_CBowT2.mds");
		};
		if(L2_HELD_ARMBRUSTLEVEL >= 4)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 100;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 100;
			CreateInvItems(djg_2012_hero,ItRw_Crossbow_H_01,1);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_CBowT2.mds");
		};
		AI_EquipBestRangedWeapon(djg_2012_hero);
	};
	if((L1_SOLDIER_LEVEL >= 2) && (L1_HAVEGOLD >= HERO_QUICKREVIVE) && (L1_HELD_QUICKREVIVE == FALSE) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L1_HELD_QUICKREVIVE = TRUE;
		L1_HAVEGOLD -= HERO_QUICKREVIVE;
	};
	if((L2_HAVEGOLD > SMITHCOST) && (L2_SCHMIEDE_ERBAUT == FALSE) && (L2_MINE > 1) && (L2_HELD_SPAWNED == TRUE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L2_SCHMIEDE_ERBAUT = TRUE;
		L2_HAVEGOLD -= SMITHCOST;
		b_debug("Ich kaufe mir die Schmiede für ",SMITHCOST);
	};
	if((L2_HAVEGOLD > MAGECOST) && (L2_MAGIE_ERBAUT == FALSE) && (L2_SOLDIER_LEVEL >= 3) && (L2_MINE >= 3) && (L2_HELD_SPAWNED == TRUE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L2_MAGIE_ERBAUT = TRUE;
		L2_HAVEGOLD -= MAGECOST;
		b_debug("Ich kaufe mir den Gelehrten für ",MAGECOST);
	};
	if((L2_HAVEGOLD > GOLD_UPDATE) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_SOLDIER_LEVEL >= 3) && (L2_GOLD_UPDATE == FALSE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L2_TRANK_ERFORSCHEN = POTION_GOLDUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= GOLD_UPDATE;
		b_debug("Ich kaufe mir das Gold-Upgrade für ",GOLD_UPDATE);
	};
	if((L2_HAVEGOLD > GOLD_UPDATE) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_SOLDIER_LEVEL >= 3) && (L2_EHRE_UPDATE == FALSE) && ((L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L2_TRANK_ERFORSCHEN = POTION_EHRENUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= GOLD_UPDATE;
		b_debug("Ich kaufe mir das Ehren-Upgrade für ",GOLD_UPDATE);
	};
	if((MAP == VARUS_MAP) && (L2_MINE >= 3) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L2_SOLDIER_LEVEL >= 4) && (L2_HELD_SPAWNED == TRUE))
	{
		if((((L1_LEBENDEHOEHLENSOELDNER + SCHWIERIGKEIT) - 1) >= L2_LEBENDEHOEHLENSOELDNER) || (SKELETONKONTROLL == GIL_DJG))
		{
			if(L2_HAVEGOLD >= HOEHLENSOELDNER)
			{
				L2_HAVEGOLD -= HOEHLENSOELDNER;
				Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
				L2_LEBENDEHOEHLENSOELDNER += 1;
				B_Message("NEWS_Gegner_HoehlenSoeldner");
			};
		};
	};
	if((L2_HAVEGOLD > SMITHUPGRADE_COST) && (L2_MAGIE > 0) && (L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0) && (L2_SOLDIER_LEVEL >= 4) && (L2_SCHMIEDESTEP == SCHMIEDESTEP) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L2_TRANK_ERFORSCHEN = POTION_SMITHUPGRADE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(djg_2004_magier,"BUCH");
		L2_HAVEGOLD -= SMITHUPGRADE_COST;
		b_debug("Ich verbessere meinen Schmied für ",SMITHUPGRADE_COST);
	};
	if((L2_HAVEGOLD >= (SOELDNERLEVEL4_COST * 3)) && (NOMERCS_ON == FALSE) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) && (L2_HELD_ARMBRUSTLEVEL >= 4) && (L2_HELD_SCHWERTLEVEL >= 3) && (L2_HELD_RUESTUNGLEVEL >= 2) && (SCHWIERIGKEIT <= DIFF_NORMAL))
	{
		L2_HAVEGOLD -= SOELDNERLEVEL4_COST * 3;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		b_debug("Ich kaufe drei meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 2);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L2_HAVEGOLD >= (SOELDNERLEVEL4_COST * 5)) && (NOMERCS_ON == FALSE) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) && (L2_HELD_ARMBRUSTLEVEL >= 4) && (L2_HELD_SCHWERTLEVEL >= 3) && (L2_HELD_RUESTUNGLEVEL >= 2) && (SCHWIERIGKEIT == DIFF_HEAVY))
	{
		L2_HAVEGOLD -= SOELDNERLEVEL4_COST * 5;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		b_debug("Ich kaufe fünf meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 2);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L2_HAVEGOLD >= (SOELDNERLEVEL4_COST * 8)) && (NOMERCS_ON == FALSE) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN) && (L2_HELD_ARMBRUSTLEVEL >= 4) && (L2_HELD_SCHWERTLEVEL >= 3) && (L2_HELD_RUESTUNGLEVEL >= 2) && (SCHWIERIGKEIT >= DIFF_HORROR))
	{
		L2_HAVEGOLD -= SOELDNERLEVEL4_COST * 8;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		b_debug("Ich kaufe acht meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 2);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if(Npc_IsInState(pal_1000_king,ZS_Attack) && (L2_EHRENPUNKTE >= BONUSHPPERK_COST) && (L2_BONUSHPPERK == FALSE) && (L2_SOLDIER_LEVEL >= 7) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_BONUSHPPERK = TRUE;
		L2_EHRENPUNKTE -= BONUSHPPERK_COST;
		b_debug("Der gegnerische König wird angegriffen, also leiste ich mir Unsterblichkeit für ",BONUSHPPERK_COST);
	};
	if (L2_BONUSHPPERK == FALSE && L2_EHRENPUNKTE >= BONUSHPPERK_COST && SCHWIERIGKEIT >= DIFF_NORMAL)
	{
		L2_EHRENPUNKTE -= BONUSHPPERK_COST;
		L2_BONUSHPPERK = TRUE;
		b_debug("Ich kaufe mir den Bonus-HP-Perk für: ", BONUSHPPERK_COST);
	};
	if((L2_EHRENPUNKTE >= REVIVE_COST) && ((L2_REVIVE == FALSE) && (FRAKTION_L2 == DJG)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_EHRENPUNKTE -= REVIVE_COST;
		L2_REVIVE = TRUE;
		L2_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir Wiederbelebungschance für: ",REVIVE_COST);
	};
	if((L2_EHRENPUNKTE >= VAMPIR_COST) && ((L2_VAMPIRSCHLAG == FALSE) && (FRAKTION_L2 == TMP)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_EHRENPUNKTE -= VAMPIR_COST;
		L2_VAMPIRSCHLAG = TRUE;
		L2_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir den Vampirschlag für: ",VAMPIR_COST);
	};
	if((L2_EHRENPUNKTE >= INSTANTKILL_COST) && (L2_INSTANTKILL == FALSE) && (FRAKTION_L2 == PAL) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_EHRENPUNKTE -= INSTANTKILL_COST;
		L2_VAMPIRSCHLAG = TRUE;
		L2_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir den Instantkill für: ",INSTANTKILL_COST);
	};
	if((L2_EHRENPUNKTE >= (BONUSHPPERK_COST + MERC_COST)) && (L2_EHRENPUNKTCHOICE == 1) && ((L2_REVIVE == TRUE) || (L2_INSTANTKILL == TRUE) || (L2_VAMPIRSCHLAG == TRUE)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L2_EHRENPUNKTE -= MERC_COST;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		L2_EHRENPUNKTCHOICE = 0;
		b_debug("Ich hole mir zwei Söldner für soviele Ehrenpunkte: ",MERC_COST);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L2_EHRENPUNKTE >= (BONUSHPPERK_COST + KLAU_COST)) && (L2_EHRENPUNKTCHOICE == 0) && ((L2_REVIVE == TRUE) || (L2_INSTANTKILL == TRUE) || (L2_VAMPIRSCHLAG == TRUE)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		havegold = Npc_HasItems(hero,ItMi_Gold);
		if(havegold >= KLAU_FUER_EHRENPUNKTE)
		{
			klaugold = KLAU_FUER_EHRENPUNKTE;
		}
		else
		{
			klaugold = havegold;
		};
		L2_HAVEGOLD += klaugold;
		Print(b_KlauString(klaugold));
		L2_EHRENPUNKTE -= KLAU_COST;
		if(NOMERCS_ON == FALSE)
		{
			L2_EHRENPUNKTCHOICE = 1;
		};
		b_debug("Ich klaue mir Gold für folgende Ehrenpunkte: ",KLAU_COST);
	};
};

func void b_lagerzweiki_soeldner()
{
	if((MAP == MACHTL_MAP) || (MAP == VARUS_MAP))
	{
		if((L1_LEBENDEMINENWACHEN == 0) && (L2_LEBENDEMINENARBEITER < (BIGMINE_GOLD / 2)) && (L2_HAVEGOLD >= MINENARBEITERSOELDNER))
		{
			L2_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L2_LEBENDEMINENARBEITER += 1;
		};
	};
	if((L2_HAVEGOLD >= MINENCOST) && (L2_MINE_ERBAUT != TRUE))
	{
		L2_HAVEGOLD -= MINENCOST;
		L2_MINE_ERBAUT = TRUE;
		b_debug("Ich kaufe mir eine Mine für ",MINENCOST);
	};
	if((L2_SCHMIEDE_ERBAUT == TRUE) && (L2_SCHMIEDGEGENSTAND != SCHMIED_GOLD))
	{
		L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
	};
	if((L2_HAVEGOLD >= MINENARBEITERCOST) && (L2_MINE > 0) && (L2_MINE < 3) && (L2_SOLDIER_LEVEL >= 1))
	{
		L2_HAVEGOLD -= MINENARBEITERCOST;
		L2_MINE += 1;
		if(L2_MINE == 2)
		{
			Wld_InsertNpc(djg_2009_minenarbeiter,"L2_MINE_GOLD_2");
		};
		if(L2_MINE == 3)
		{
			Wld_InsertNpc(djg_2010_minenarbeiter,"L2_MINE_GOLD_3");
		};
		b_debug("Ich kaufe mir einen Minenarbeiter für ",MINENARBEITERCOST);
	};
	if((L2_HAVEGOLD >= (SOELDNERLEVEL4_COST * 2)) && (SCHWIERIGKEIT == DIFF_LIGHT))
	{
		L2_HAVEGOLD -= SOELDNERLEVEL4_COST * 2;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		b_debug("Ich kaufe mir zwei meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 3);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L2_HAVEGOLD >= (SOELDNERLEVEL4_COST * 3)) && (SCHWIERIGKEIT == DIFF_NORMAL))
	{
		L2_HAVEGOLD -= SOELDNERLEVEL4_COST * 3;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		b_debug("Ich kaufe mir drei meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 3);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L2_HAVEGOLD >= (SOELDNERLEVEL4_COST * 5)) && (SCHWIERIGKEIT == DIFF_HEAVY))
	{
		L2_HAVEGOLD -= SOELDNERLEVEL4_COST * 5;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		b_debug("Ich kaufe mir fünf meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 3);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L2_HAVEGOLD >= (SOELDNERLEVEL4_COST * 10)) && (SCHWIERIGKEIT == DIFF_HORROR))
	{
		L2_HAVEGOLD -= SOELDNERLEVEL4_COST * 10;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		b_debug("Ich kaufe mir ZEHN meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 3);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if(Npc_IsInState(pal_1000_king,ZS_Attack) && (L2_EHRENPUNKTE >= BONUSHPPERK_COST) && (L2_BONUSHPPERK == FALSE))
	{
		L2_BONUSHPPERK = TRUE;
		L2_EHRENPUNKTE -= BONUSHPPERK_COST;
		b_debug("Der gegnerische König wird angegriffen, also leiste ich mir Unsterblichkeit für ",BONUSHPPERK_COST);
	};
	if((L2_HAVEGOLD > SMITHCOST) && (L2_SCHMIEDE_ERBAUT == FALSE) && (L2_MINE > 1) && (L2_SOLDIER_LEVEL >= 1))
	{
		L2_SCHMIEDE_ERBAUT = TRUE;
		L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
		L2_HAVEGOLD -= SMITHCOST;
	};
	if(Npc_IsInState(pal_1000_king,ZS_Attack) && (L2_EHRENPUNKTE >= BONUSHPPERK_COST) && (L2_BONUSHPPERK == FALSE))
	{
		L2_BONUSHPPERK = TRUE;
		L2_EHRENPUNKTE -= BONUSHPPERK_COST;
	};
	if(L2_EHRENPUNKTE >= MERC_COST)
	{
		L2_EHRENPUNKTE -= MERC_COST;
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		L2_EHRENPUNKTCHOICE = 0;
	};
};

func void b_lagerzweiki()
{
	var string concatText;
	if(KI_TYPE_2 == 0)
	{
		KI_TYPE_2 = Hlp_Random(6) + 1;
		if(DEBUG == TRUE)
		{
			if((KI_TYPE_2 == 1) && (NOMERCS_ON == FALSE))
			{
				concatText = "Ich möchte mit Söldnern spielen.";
			}
			else if(((KI_TYPE_2 > 1) && (KI_TYPE_2 < 6)) || (NOMERCS_ON == TRUE))
			{
				concatText = "Ich möchte wirtschaftlich spielen.";
			}
			else if(KI_TYPE_2 == 6)
			{
				concatText = "Ich möchte mit dem Helden spielen.";
			};
			AI_PrintScreen(concatText,5,5,FONT_ScreenSmall,5);
		};
	};
	if((KI_TYPE_2 == 1) && (NOMERCS_ON == FALSE))
	{
		b_lagerzweiki_soeldner();
	}
	else if(((KI_TYPE_2 > 1) && (KI_TYPE_2 < 6)) || (NOMERCS_ON == TRUE))
	{
		b_lagerzweiki_wirtschaft();
	}
	else if(KI_TYPE_2 == 6)
	{
		b_lagerzweiki_held();
	};
};

