
var int l1_ehrenpunktchoice;
var int ki_type_1;
var int merc_count_1;
var int l1_erstewachegebaut;
var int l1_ersterarbeiter;

func void b_lagereinsnotsoeldner()
{
	if(L1_HAVEGOLD >= SOELDNERLEVEL4_COST)
	{
		L1_HAVEGOLD -= SOELDNERLEVEL4_COST;
		L1_CURRENT_MERCLEVEL = 4;
		b_debug("Ich baue einen meisterhaften Söldner für ",SOELDNERLEVEL4_COST);
		B_Message("NEWS_Gegner_Soeldner");
		B_SpawnSoeldner(GIL_PAL);
	}
	else if(L1_HAVEGOLD >= SOELDNERLEVEL3_COST)
	{
		L1_HAVEGOLD -= SOELDNERLEVEL3_COST;
		L1_CURRENT_MERCLEVEL = 3;
		b_debug("Ich baue einen starken Söldner für ",SOELDNERLEVEL3_COST);
		B_Message("NEWS_Gegner_Soeldner");
		B_SpawnSoeldner(GIL_PAL);
	};
};

func void b_lagereinski_wirtschaft()
{
	var int cost;
	var int zusaetzlichewachen;
	var int klaugold;
	var int havegold;
	if(Npc_IsInState(pal_1000_king,ZS_Attack) && (L2_SOLDIER_LEVEL >= 5))
	{
		b_debug("Hilfe, mein König ist in Not!",0);
		b_lagereinsnotsoeldner();
	};
	if(REACTONMERCS > 0)
	{
		if(L1_HAVEGOLD >= SOELDNERLEVEL3_COST)
		{
			b_lagereinsnotsoeldner();
			REACTONMERCS = REACTONMERCS - 1;
		};
	};
	if((L1_HAVEGOLD >= MINENCOST) && (L1_MINE_ERBAUT != TRUE) && ((SCHWIERIGKEIT >= DIFF_NORMAL) || (L1_SOLDIER_LEVEL == 1)))
	{
		b_debug("Ich kaufe mir die Mine für ",MINENCOST);
		L1_HAVEGOLD -= MINENCOST;
		L1_MINE_ERBAUT = TRUE;
	};
	if((MAP == MACHTL_MAP) || (MAP == VARUS_MAP))
	{
		if((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) && (L1_LEBENDEMINENARBEITER < (BIGMINE_GOLD / 2)) && (L1_HAVEGOLD >= MINENARBEITERSOELDNER) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L1_ERSTERARBEITER == FALSE) && (L1_MINENLEUTE < MAXMINENLEUTE))
		{
			L1_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L1_LEBENDEMINENARBEITER += 1;
			L1_MINENLEUTE += 1;
			L1_ERSTERARBEITER = TRUE;
		};
		if((SCHWIERIGKEIT >= DIFF_NORMAL) && (L1_ERSTEWACHEGEBAUT == FALSE) && (L1_HAVEGOLD >= MINENWACHE) && (L2_LEBENDEMINENARBEITER > 0) && (L1_MINENLEUTE < MAXMINENLEUTE))
		{
			L1_HAVEGOLD -= MINENWACHE;
			Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			B_Message("NEWS_Gegner_Minenwachen");
			L1_LEBENDEMINENWACHEN += 1;
			L1_MINENLEUTE += 1;
			L1_ERSTEWACHEGEBAUT = TRUE;
		};
	};
	if((L1_HAVEWEAPONS >= 3) && (L1_HAVEGOLD >= SMITHCOST) && (L1_SCHMIEDE_ERBAUT == TRUE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		b_debug("Waffenupgrate für ",SMITHCOST);
		L1_USED_WEAPON += 1;
		L1_HAVEGOLD -= SMITHCOST;
		L1_HAVEWEAPONS = 0;
		if(L1_USED_WEAPON >= MAXWEAPONSTEP)
		{
			L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
		};
	};
	if((L1_HAVEARMORS >= 3) && (L1_HAVEGOLD >= SMITHCOST) && (L1_SCHMIEDE_ERBAUT == TRUE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		b_debug("Rüstungsupgrate für ",SMITHCOST);
		L1_USED_ARMOR += 1;
		L1_HAVEGOLD -= SMITHCOST;
		L1_HAVEARMORS = 0;
		if(L1_USED_ARMOR >= MAXARMORSTEP)
		{
			L1_SCHMIEDGEGENSTAND = SCHMIED_WAFFEN;
		};
	};
	if(SCHWIERIGKEIT >= DIFF_NORMAL)
	{
		cost = L1_SOLDIER_LEVEL * COSTPERLEVELSTEP;
	}
	else
	{
		cost = L1_SOLDIER_LEVEL * (COSTPERLEVELSTEP + 10);
	};
	if((L1_HAVEGOLD > cost) && (L1_SOLDIER_LEVEL < 7) && ((L1_MINE_ERBAUT == TRUE) || (SCHWIERIGKEIT <= DIFF_LIGHT)) && ((L1_MINE == 3) || (SCHWIERIGKEIT <= DIFF_NORMAL)) && (L1_SCHMIEDE_ERBAUT == TRUE))
	{
		if((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || ((MAP != MACHTL_MAP) && (MAP != VARUS_MAP)) || (L1_SOLDIER_LEVEL <= 3))
		{
			L1_HAVEGOLD -= cost;
			b_debug("Soldaten-Upgrade für ",cost);
			L1_SOLDIER_LEVEL += 1;
		};
	};
	if((L1_HAVEGOLD >= MINENARBEITERCOST) && (L1_MINE > 0) && (L1_MINE < 3) && (L1_SOLDIER_LEVEL >= 0))
	{
		L1_HAVEGOLD -= MINENARBEITERCOST;
		L1_MINE += 1;
		if(L1_MINE == 2)
		{
			Wld_InsertNpc(pal_1009_minenarbeiter,"L1_MINE_GOLD_2");
		};
		if(L1_MINE == 3)
		{
			Wld_InsertNpc(pal_1010_minenarbeiter,"L1_MINE_GOLD_3");
		};
		b_debug("Ich kaufe mir einen Minenarbeiter für ",MINENARBEITERCOST);
	};
	if((L1_HAVEGOLD > SMITHCOST) && (L1_SCHMIEDE_ERBAUT == FALSE) && (L1_MINE > 1) && (L1_SOLDIER_LEVEL >= 1) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L1_SCHMIEDE_ERBAUT = TRUE;
		L1_HAVEGOLD -= SMITHCOST;
		b_debug("Ich kaufe mir die Schmiede für ",SMITHCOST);
	};
	if(((MAP == MACHTL_MAP) || (MAP == VARUS_MAP)) && (L1_MINE >= 1) && (REACTONMERCS == 0))
	{
		if((L1_LEBENDEMINENWACHEN <= L2_LEBENDEMINENWACHEN) && (((L1_LEBENDEMINENWACHEN + 2) > L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_LIGHT)) && (L1_HAVEGOLD >= MINENWACHE) && (L1_MINENLEUTE < MAXMINENLEUTE))
		{
			L1_HAVEGOLD -= MINENWACHE;
			Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			B_Message("NEWS_Gegner_Minenwachen");
			L1_LEBENDEMINENWACHEN += 1;
			L1_MINENLEUTE += 1;
		};
		zusaetzlichewachen = ((L2_LEBENDEMINENWACHEN - L1_LEBENDEMINENWACHEN) + SCHWIERIGKEIT) - 1;
		if((L1_MINENLEUTE + zusaetzlichewachen) >= MAXMINENLEUTE)
		{
			zusaetzlichewachen = MAXMINENLEUTE - L1_MINENLEUTE;
		};
		if((L1_LEBENDEMINENWACHEN <= (L2_LEBENDEMINENWACHEN - 2)) && (L1_HAVEGOLD >= (MINENWACHE * zusaetzlichewachen)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
		{
			L1_HAVEGOLD -= MINENWACHE * zusaetzlichewachen;
			if(zusaetzlichewachen >= 1)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 2)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 3)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 4)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 5)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 6)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 7)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 8)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 9)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 10)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			L1_LEBENDEMINENWACHEN += zusaetzlichewachen;
			L1_MINENLEUTE += zusaetzlichewachen;
			B_Message("NEWS_Gegner_Minenwachen");
		};
		if((L1_LEBENDEMINENWACHEN > L2_LEBENDEMINENWACHEN) && (L1_LEBENDEMINENARBEITER < BIGMINE_GOLD) && (L1_HAVEGOLD >= MINENARBEITERSOELDNER) && (L1_MINENLEUTE < MAXMINENLEUTE))
		{
			L1_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L1_LEBENDEMINENARBEITER += 1;
			L1_MINENLEUTE += 1;
		};
	};
	if((L1_HAVEGOLD > MAGECOST) && (L1_MAGIE_ERBAUT == FALSE) && (L1_SOLDIER_LEVEL >= 2) && (L1_MINE >= 3) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L1_MAGIE_ERBAUT = TRUE;
		L1_HAVEGOLD -= MAGECOST;
		b_debug("Ich kaufe mir den Gelehrten für ",MAGECOST);
	};
	if((L1_HAVEGOLD > GOLD_UPDATE) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_SOLDIER_LEVEL >= 2) && (L1_GOLD_UPDATE == FALSE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L1_TRANK_ERFORSCHEN = POTION_GOLDUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= GOLD_UPDATE;
		b_debug("Ich kaufe mir das Gold-Upgrade für ",GOLD_UPDATE);
	};
	if((L1_HAVEGOLD > GOLD_UPDATE) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_SOLDIER_LEVEL >= 2) && (L1_EHRE_UPDATE == FALSE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L1_TRANK_ERFORSCHEN = POTION_EHRENUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= GOLD_UPDATE;
		b_debug("Ich kaufe mir das Ehren-Upgrade für ",GOLD_UPDATE);
	};
	if((L1_MINE >= 3) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || ((MAP != VARUS_MAP) && (MAP != MACHTL_MAP))) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L1_HELD_SPAWNED == FALSE) && (L1_HAVEGOLD >= HERO_COST) && (L1_SOLDIER_LEVEL >= 2))
	{
		B_RevivePalHero();
		B_Message("NEWS_Gegner_Held");
		L1_HAVEGOLD -= HERO_COST;
		L1_HELD_SPAWNED = TRUE;
	};
	if((MAP == VARUS_MAP) && (L1_MINE >= 3) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L1_SOLDIER_LEVEL >= 2) && (REACTONMERCS == 0))
	{
		if((L2_LEBENDEHOEHLENSOELDNER == 0) && (L1_LEBENDEHOEHLENSOELDNER == 0))
		{
			if(L1_HAVEGOLD >= (HOEHLENSOELDNER * 3))
			{
				L1_HAVEGOLD -= HOEHLENSOELDNER * 3;
				L1_LEBENDEHOEHLENSOELDNER += 3;
				Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
				Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
				Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
				B_Message("NEWS_Gegner_HoehlenSoeldner");
			};
		}
		else if((((L2_LEBENDEHOEHLENSOELDNER + SCHWIERIGKEIT) - 1) >= L1_LEBENDEHOEHLENSOELDNER) || (SKELETONKONTROLL == GIL_DJG))
		{
			if(L1_HAVEGOLD >= HOEHLENSOELDNER)
			{
				L1_HAVEGOLD -= HOEHLENSOELDNER;
				Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
				L1_LEBENDEHOEHLENSOELDNER += 1;
				B_Message("NEWS_Gegner_HoehlenSoeldner");
			};
		};
	};
	if((L1_HAVEGOLD > SMITHUPGRADE_COST) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_SOLDIER_LEVEL >= 4) && (L1_SCHMIEDESTEP == SCHMIEDESTEP) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN))
	{
		L1_TRANK_ERFORSCHEN = POTION_SMITHUPGRADE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= SMITHUPGRADE_COST;
		b_debug("Ich verbessere meinen Schmied für ",SMITHUPGRADE_COST);
	};
	if(((pal_1160_wache.attribute[ATR_HITPOINTS] == 0) || (pal_1161_wache.attribute[ATR_HITPOINTS] == 0)) && (L1_HAVEGOLD > WACHE_COST) && (L1_SOLDIER_LEVEL >= 4) && (L2_SOLDIER_LEVEL >= 3) && (L1_MAGIE > 0) && (L2_SOLDIER_LEVEL < (L1_WACHEN_LEVEL + 4)) && (L1_GOLD_UPDATE == TRUE) && (L1_WACHEN_LEVEL >= 3) && ((MAP == MAP01) || (MAP == VARUS_MAP)))
	{
		L1_HAVEGOLD -= WACHE_COST;
		if(Npc_IsDead(pal_1161_wache))
		{
			Wld_InsertNpc(pal_1161_wache,"L1_WACHE_02");
		}
		else if(Npc_IsDead(pal_1160_wache))
		{
			Wld_InsertNpc(pal_1160_wache,"L1_WACHE_01");
		};
		b_debug("Ich kauf mir ne Wache für ",WACHE_COST);
	};
	if((L1_HAVEGOLD > (L1_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL)) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_WACHEN_LEVEL < 4) && (L1_SOLDIER_LEVEL >= 3) && (L1_GOLD_UPDATE == TRUE) && (L1_SOLDIER_LEVEL >= 4) && ((MAP == MAP01) || (MAP == VARUS_MAP)))
	{
		L1_TRANK_ERFORSCHEN = POTION_WACHENUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= L1_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL;
		b_debug("Ich verbessere meine Wachen für ",L1_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL);
	};
	if((L1_HAVEGOLD > MAGIERUPDATE_COST) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_SOLDIER_LEVEL >= 4) && (L1_MAGIERUPDATE == FALSE) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN))
	{
		L1_TRANK_ERFORSCHEN = POTION_MAGIERUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= MAGIERUPDATE_COST;
		b_debug("Ich verbessere meine Magier für ",MAGIERUPDATE_COST);
	};
	if((L1_HAVEGOLD > BLITZSCHLAG_COST) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_BLITZSCHLAGERFORSCHT == FALSE) && (L1_SOLDIER_LEVEL >= 4) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN))
	{
		L1_ZAUBER_ERFORSCHEN = SPELLBLITZSCHLAG;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		B_StartOtherRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= BLITZSCHLAG_COST;
		b_debug("Ich erforsche Blitzschlag für ",BLITZSCHLAG_COST);
	};
	if((L1_SOLDIER_LEVEL >= 5) && (L1_HAVEGOLD >= HERO_RUESTUNGSUPGRADE) && (L1_HELD_RUESTUNGLEVEL < 2) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L1_HELD_RUESTUNGLEVEL += 1;
		L1_HAVEGOLD -= HERO_RUESTUNGSUPGRADE;
		if(L1_HELD_RUESTUNGLEVEL == 1)
		{
			if(FRAKTION_L1 == DJG)
			{
				CreateInvItems(pal_1012_hero,itar_djg_l,1);
			}
			else if(FRAKTION_L1 == PAL)
			{
				CreateInvItems(pal_1012_hero,ItAr_PAL_M,1);
			}
			else if(FRAKTION_L1 == TMP)
			{
				CreateInvItems(pal_1012_hero,itar_tmp_m,1);
			};
		};
		if(L1_HELD_RUESTUNGLEVEL == 2)
		{
			if(FRAKTION_L1 == DJG)
			{
				CreateInvItems(pal_1012_hero,itar_djg_h,1);
			}
			else if(FRAKTION_L1 == PAL)
			{
				CreateInvItems(pal_1012_hero,ItAr_PAl_H,1);
			}
			else if(FRAKTION_L1 == TMP)
			{
				CreateInvItems(pal_1012_hero,itar_tmp_h,1);
			};
		};
		AI_EquipBestArmor(pal_1012_hero);
	};
	if((L1_SOLDIER_LEVEL >= 5) && (L1_HAVEGOLD >= HERO_WAFFENUPGRADE) && (L1_HELD_SCHWERTLEVEL < 3) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L1_HELD_SCHWERTLEVEL += 1;
		L1_HAVEGOLD -= HERO_WAFFENUPGRADE;
		if(L1_HELD_SCHWERTLEVEL == 1)
		{
			pal_1012_hero.HitChance[NPC_TALENT_1H] = 54;
			pal_1012_hero.HitChance[NPC_TALENT_2H] = 54;
			CreateInvItem(pal_1012_hero,itmw_hero_2);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST1.mds");
		};
		if(L1_HELD_SCHWERTLEVEL == 2)
		{
			pal_1012_hero.HitChance[NPC_TALENT_1H] = 77;
			pal_1012_hero.HitChance[NPC_TALENT_2H] = 77;
			CreateInvItem(pal_1012_hero,itmw_hero_3);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST2.mds");
		};
		if(L1_HELD_SCHWERTLEVEL >= 3)
		{
			pal_1012_hero.HitChance[NPC_TALENT_1H] = 100;
			pal_1012_hero.HitChance[NPC_TALENT_2H] = 100;
			CreateInvItem(pal_1012_hero,itmw_hero_4);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST2.mds");
		};
		AI_EquipBestMeleeWeapon(pal_1012_hero);
	};
	if((L1_SOLDIER_LEVEL >= 5) && (L1_HAVEGOLD >= HERO_ARMBRUSTUPGRADE) && (L1_HELD_ARMBRUSTLEVEL < 4) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L1_HELD_ARMBRUSTLEVEL += 1;
		L1_HAVEGOLD -= HERO_ARMBRUSTUPGRADE;
		if(L1_HELD_ARMBRUSTLEVEL == 1)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 30;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 30;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_L_02,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST1.mds");
		};
		if(L1_HELD_ARMBRUSTLEVEL == 2)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 54;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 54;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_M_01,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_BowT1.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_CBowT1.mds");
		};
		if(L1_HELD_ARMBRUSTLEVEL == 3)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 77;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 77;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_M_02,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_CBowT2.mds");
		};
		if(L1_HELD_ARMBRUSTLEVEL >= 4)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 100;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 100;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_H_01,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_CBowT2.mds");
		};
		AI_EquipBestRangedWeapon(pal_1012_hero);
	};
	if((L1_HAVEGOLD > HEILTRANK_COST) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_SOLDIER_LEVEL >= 5) && (L1_HEILTRANKERFORSCHT == FALSE) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN))
	{
		L1_TRANK_ERFORSCHEN = POTION_HEILTRANK;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= HEILTRANK_COST;
		b_debug("Ich erforsche den Heiltrank für ",HEILTRANK_COST);
	};
	if((L1_HAVEGOLD > HEILUNG_COST) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_WUNDENHEILENERFORSCHT == FALSE) && (L1_SOLDIER_LEVEL >= 5) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN))
	{
		L1_ZAUBER_ERFORSCHEN = SPELLHEILUNG;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		B_StartOtherRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= HEILUNG_COST;
		b_debug("Ich erforsche die Heilung für ",HEILUNG_COST);
	};
	if((L1_HAVEGOLD >= (SOELDNERLEVEL4_COST * 3)) && (L1_SOLDIER_LEVEL >= 7) && (NOMERCS_ON == FALSE) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN))
	{
		L1_HAVEGOLD -= SOELDNERLEVEL4_COST * 3;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		b_debug("Ich kaufe drei meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 2);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if(Npc_IsInState(djg_2000_king,ZS_Attack) && (L1_EHRENPUNKTE >= UNSTERBLICHKEIT_COST) && (L1_UNSTERBLICHKEIT == FALSE) && (L1_SOLDIER_LEVEL >= 7) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		b_mach_unsterblich_1();
		L1_EHRENPUNKTE -= UNSTERBLICHKEIT_COST;
		b_debug("Der gegnerische König wird angegriffen, also leiste ich mir Unsterblichkeit für ",UNSTERBLICHKEIT_COST);
	};
	if((L1_EHRENPUNKTE >= REVIVE_COST) && ((L1_REVIVE == FALSE) && (FRAKTION_L1 == DJG)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L1_EHRENPUNKTE -= REVIVE_COST;
		L1_REVIVE = TRUE;
		L1_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir Wiederbelebungschance für: ",REVIVE_COST);
	};
	if((L1_EHRENPUNKTE >= VAMPIR_COST) && ((L1_VAMPIRSCHLAG == FALSE) && (FRAKTION_L1 == TMP)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L1_EHRENPUNKTE -= VAMPIR_COST;
		L1_VAMPIRSCHLAG = TRUE;
		L1_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir den Vampirschlag für: ",VAMPIR_COST);
	};
	if((L1_EHRENPUNKTE >= INSTANTKILL_COST) && (L1_INSTANTKILL == FALSE) && (FRAKTION_L1 == PAL) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L1_EHRENPUNKTE -= INSTANTKILL_COST;
		L1_VAMPIRSCHLAG = TRUE;
		L1_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir den Instantkill für: ",INSTANTKILL_COST);
	};
	if((L1_EHRENPUNKTE >= (UNSTERBLICHKEIT_COST + MERC_COST)) && (L1_EHRENPUNKTCHOICE == 1) && ((L1_REVIVE == TRUE) || (L1_INSTANTKILL == TRUE) || (L1_VAMPIRSCHLAG == TRUE)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L1_EHRENPUNKTE -= MERC_COST;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		L1_EHRENPUNKTCHOICE = 0;
		b_debug("Ich hole mir zwei Söldner für soviele Ehrenpunkte: ",MERC_COST);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L1_EHRENPUNKTE >= (UNSTERBLICHKEIT_COST + KLAU_COST)) && (L1_EHRENPUNKTCHOICE == 0) && ((L1_REVIVE == TRUE) || (L1_INSTANTKILL == TRUE) || (L1_VAMPIRSCHLAG == TRUE)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
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
		L1_HAVEGOLD += klaugold;
		Print(b_KlauString(klaugold));
		L1_EHRENPUNKTE -= KLAU_COST;
		if(NOMERCS_ON == FALSE)
		{
			L1_EHRENPUNKTCHOICE = 1;
		};
		b_debug("Ich klaue mir Gold für folgende Ehrenpunkte: ",KLAU_COST);
	};
};

func void b_lagereinski_held()
{
	var int cost;
	var int zusaetzlichewachen;
	var int klaugold;
	var int havegold;
	if(Npc_IsInState(pal_1000_king,ZS_Attack) && (L2_SOLDIER_LEVEL >= 5))
	{
		b_debug("Hilfe, mein König ist in Not!",0);
		b_lagereinsnotsoeldner();
	};
	if(REACTONMERCS > 0)
	{
		if(L1_HAVEGOLD >= SOELDNERLEVEL3_COST)
		{
			b_lagereinsnotsoeldner();
			REACTONMERCS = REACTONMERCS - 1;
		};
	};
	if((L1_HAVEGOLD >= MINENCOST) && (L1_MINE_ERBAUT != TRUE) && ((SCHWIERIGKEIT >= DIFF_NORMAL) || (L1_SOLDIER_LEVEL == 1)))
	{
		b_debug("Ich kaufe mir die Mine für ",MINENCOST);
		L1_HAVEGOLD -= MINENCOST;
		L1_MINE_ERBAUT = TRUE;
	};
	if((MAP == MACHTL_MAP) || (MAP == VARUS_MAP))
	{
		if((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) && (L1_LEBENDEMINENARBEITER < (BIGMINE_GOLD / 2)) && (L1_HAVEGOLD >= MINENARBEITERSOELDNER) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L1_ERSTERARBEITER == FALSE) && (L1_MINENLEUTE < MAXMINENLEUTE))
		{
			L1_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L1_LEBENDEMINENARBEITER += 1;
			L1_MINENLEUTE += 1;
			L1_ERSTERARBEITER = TRUE;
		};
		if((SCHWIERIGKEIT >= DIFF_NORMAL) && (L1_ERSTEWACHEGEBAUT == FALSE) && (L1_HAVEGOLD >= MINENWACHE) && (L2_LEBENDEMINENARBEITER > 0) && (L1_MINENLEUTE < MAXMINENLEUTE))
		{
			L1_HAVEGOLD -= MINENWACHE;
			Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			B_Message("NEWS_Gegner_Minenwachen");
			L1_LEBENDEMINENWACHEN += 1;
			L1_MINENLEUTE += 1;
			L1_ERSTEWACHEGEBAUT = TRUE;
		};
	};
	if((L1_HAVEWEAPONS >= 3) && (L1_HAVEGOLD >= SMITHCOST) && (L1_SCHMIEDE_ERBAUT == TRUE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		b_debug("Waffenupgrate für ",SMITHCOST);
		L1_USED_WEAPON += 1;
		L1_HAVEGOLD -= SMITHCOST;
		L1_HAVEWEAPONS = 0;
		if(L1_USED_WEAPON >= MAXWEAPONSTEP)
		{
			L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
		};
	};
	if((L1_HAVEARMORS >= 3) && (L1_HAVEGOLD >= SMITHCOST) && (L1_SCHMIEDE_ERBAUT == TRUE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		b_debug("Rüstungsupgrate für ",SMITHCOST);
		L1_USED_ARMOR += 1;
		L1_HAVEGOLD -= SMITHCOST;
		L1_HAVEARMORS = 0;
		if(L1_USED_ARMOR >= MAXARMORSTEP)
		{
			L1_SCHMIEDGEGENSTAND = SCHMIED_WAFFEN;
		};
	};
	if((L1_MINE >= 3) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || ((MAP != VARUS_MAP) && (MAP != MACHTL_MAP))) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L1_HELD_SPAWNED == FALSE) && (L1_HAVEGOLD >= HERO_COST))
	{
		B_RevivePalHero();
		B_Message("NEWS_Gegner_Held");
		L1_HAVEGOLD -= HERO_COST;
		L1_HELD_SPAWNED = TRUE;
	};
	if(SCHWIERIGKEIT >= DIFF_NORMAL)
	{
		cost = L1_SOLDIER_LEVEL * COSTPERLEVELSTEP;
	}
	else
	{
		cost = L1_SOLDIER_LEVEL * (COSTPERLEVELSTEP + 10);
	};
	if((L1_HAVEGOLD > cost) && (L1_SOLDIER_LEVEL < 7) && ((L1_MINE_ERBAUT == TRUE) || (SCHWIERIGKEIT <= DIFF_LIGHT)) && ((L1_MINE >= 3) || (SCHWIERIGKEIT <= DIFF_NORMAL)) && (L1_SCHMIEDE_ERBAUT == TRUE) && (L1_HELD_SPAWNED == TRUE))
	{
		if((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || ((MAP != MACHTL_MAP) && (MAP != VARUS_MAP)) || (L1_SOLDIER_LEVEL <= 3))
		{
			L1_HAVEGOLD -= cost;
			b_debug("Soldaten-Upgrade für ",cost);
			L1_SOLDIER_LEVEL += 1;
		};
	};
	if((L1_HAVEGOLD >= MINENARBEITERCOST) && (L1_MINE > 0) && (L1_MINE < 3) && (L1_SOLDIER_LEVEL >= 0))
	{
		L1_HAVEGOLD -= MINENARBEITERCOST;
		L1_MINE += 1;
		if(L1_MINE == 2)
		{
			Wld_InsertNpc(pal_1009_minenarbeiter,"L1_MINE_GOLD_2");
		};
		if(L1_MINE == 3)
		{
			Wld_InsertNpc(pal_1010_minenarbeiter,"L1_MINE_GOLD_3");
		};
		b_debug("Ich kaufe mir einen Minenarbeiter für ",MINENARBEITERCOST);
	};
	if(((MAP == MACHTL_MAP) || (MAP == VARUS_MAP)) && (L1_MINE >= 2) && (L1_HELD_SPAWNED == TRUE))
	{
		if((L1_LEBENDEMINENWACHEN <= L2_LEBENDEMINENWACHEN) && (((L1_LEBENDEMINENWACHEN + 2) > L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_LIGHT)) && (L1_HAVEGOLD >= MINENWACHE) && (L1_MINENLEUTE < MAXMINENLEUTE))
		{
			L1_HAVEGOLD -= MINENWACHE;
			Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			B_Message("NEWS_Gegner_Minenwachen");
			L1_LEBENDEMINENWACHEN += 1;
			L1_MINENLEUTE += 1;
		};
		zusaetzlichewachen = ((L2_LEBENDEMINENWACHEN - L1_LEBENDEMINENWACHEN) + SCHWIERIGKEIT) - 1;
		if((zusaetzlichewachen + L1_MINENLEUTE) >= MAXMINENLEUTE)
		{
			zusaetzlichewachen = MAXMINENLEUTE - L1_MINENLEUTE;
		};
		if((L1_LEBENDEMINENWACHEN <= (L2_LEBENDEMINENWACHEN - 2)) && (L1_HAVEGOLD >= (MINENWACHE * zusaetzlichewachen)) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L1_HELD_SPAWNED == TRUE))
		{
			L1_HAVEGOLD -= MINENWACHE * zusaetzlichewachen;
			if(zusaetzlichewachen >= 1)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 2)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 3)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 4)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 5)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 6)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 7)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 8)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 9)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			if(zusaetzlichewachen >= 10)
			{
				Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
			};
			L1_LEBENDEMINENWACHEN += zusaetzlichewachen;
			L1_MINENLEUTE += zusaetzlichewachen;
			B_Message("NEWS_Gegner_Minenwachen");
		};
		if((L1_LEBENDEMINENWACHEN > L2_LEBENDEMINENWACHEN) && (L1_LEBENDEMINENARBEITER < BIGMINE_GOLD) && (L1_HAVEGOLD >= MINENARBEITERSOELDNER) && (L1_HELD_SPAWNED == TRUE) && (L1_MINENLEUTE < MAXMINENLEUTE))
		{
			L1_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L1_LEBENDEMINENARBEITER += 1;
			L1_MINENLEUTE += 1;
		};
	};
	if((L1_SOLDIER_LEVEL >= 2) && (L1_HAVEGOLD >= HERO_RUESTUNGSUPGRADE) && (L1_HELD_RUESTUNGLEVEL < 2) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L1_HELD_RUESTUNGLEVEL += 1;
		L1_HAVEGOLD -= HERO_RUESTUNGSUPGRADE;
		if(L1_HELD_RUESTUNGLEVEL == 1)
		{
			if(FRAKTION_L1 == DJG)
			{
				CreateInvItems(pal_1012_hero,itar_djg_l,1);
			}
			else if(FRAKTION_L1 == PAL)
			{
				CreateInvItems(pal_1012_hero,ItAr_PAL_M,1);
			}
			else if(FRAKTION_L1 == TMP)
			{
				CreateInvItems(pal_1012_hero,itar_tmp_m,1);
			};
		};
		if(L1_HELD_RUESTUNGLEVEL == 2)
		{
			if(FRAKTION_L1 == DJG)
			{
				CreateInvItems(pal_1012_hero,itar_djg_h,1);
			}
			else if(FRAKTION_L1 == PAL)
			{
				CreateInvItems(pal_1012_hero,ItAr_PAl_H,1);
			}
			else if(FRAKTION_L1 == TMP)
			{
				CreateInvItems(pal_1012_hero,itar_tmp_h,1);
			};
		};
		AI_EquipBestArmor(pal_1012_hero);
	};
	if((L1_SOLDIER_LEVEL >= 2) && (L1_HAVEGOLD >= HERO_WAFFENUPGRADE) && (L1_HELD_SCHWERTLEVEL < 3) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L1_HELD_SCHWERTLEVEL += 1;
		L1_HAVEGOLD -= HERO_WAFFENUPGRADE;
		if(L1_HELD_SCHWERTLEVEL == 1)
		{
			pal_1012_hero.HitChance[NPC_TALENT_1H] = 54;
			pal_1012_hero.HitChance[NPC_TALENT_2H] = 54;
			CreateInvItem(pal_1012_hero,itmw_hero_2);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST1.mds");
		};
		if(L1_HELD_SCHWERTLEVEL == 2)
		{
			pal_1012_hero.HitChance[NPC_TALENT_1H] = 77;
			pal_1012_hero.HitChance[NPC_TALENT_2H] = 77;
			CreateInvItem(pal_1012_hero,itmw_hero_3);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST2.mds");
		};
		if(L1_HELD_SCHWERTLEVEL >= 3)
		{
			pal_1012_hero.HitChance[NPC_TALENT_1H] = 100;
			pal_1012_hero.HitChance[NPC_TALENT_2H] = 100;
			CreateInvItem(pal_1012_hero,itmw_hero_4);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST2.mds");
		};
		AI_EquipBestMeleeWeapon(pal_1012_hero);
	};
	if((L1_SOLDIER_LEVEL >= 2) && (L1_HAVEGOLD >= HERO_ARMBRUSTUPGRADE) && (L1_HELD_ARMBRUSTLEVEL < 4) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L1_HELD_ARMBRUSTLEVEL += 1;
		L1_HAVEGOLD -= HERO_ARMBRUSTUPGRADE;
		if(L1_HELD_ARMBRUSTLEVEL == 1)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 30;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 30;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_L_02,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST1.mds");
		};
		if(L1_HELD_ARMBRUSTLEVEL == 2)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 54;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 54;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_M_01,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_BowT1.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_CBowT1.mds");
		};
		if(L1_HELD_ARMBRUSTLEVEL == 3)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 77;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 77;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_M_02,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_CBowT2.mds");
		};
		if(L1_HELD_ARMBRUSTLEVEL >= 4)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 100;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 100;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_H_01,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_CBowT2.mds");
		};
		AI_EquipBestRangedWeapon(pal_1012_hero);
	};
	if((L1_SOLDIER_LEVEL >= 2) && (L1_HAVEGOLD >= HERO_QUICKREVIVE) && (L1_HELD_QUICKREVIVE == FALSE) && (L2_LEBENDEMINENWACHEN >= L1_LEBENDEMINENWACHEN))
	{
		L1_HELD_QUICKREVIVE = TRUE;
		L1_HAVEGOLD -= HERO_QUICKREVIVE;
	};
	if((L1_HAVEGOLD > SMITHCOST) && (L1_SCHMIEDE_ERBAUT == FALSE) && (L1_MINE > 1) && (L1_SOLDIER_LEVEL >= 3) && (L1_HELD_SPAWNED == TRUE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L1_SCHMIEDE_ERBAUT = TRUE;
		L1_HAVEGOLD -= SMITHCOST;
		b_debug("Ich kaufe mir die Schmiede für ",SMITHCOST);
	};
	if((L1_HAVEGOLD > MAGECOST) && (L1_MAGIE_ERBAUT == FALSE) && (L1_SOLDIER_LEVEL >= 3) && (L1_MINE >= 3) && (L1_HELD_SPAWNED == TRUE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L1_MAGIE_ERBAUT = TRUE;
		L1_HAVEGOLD -= MAGECOST;
		b_debug("Ich kaufe mir den Gelehrten für ",MAGECOST);
	};
	if((L1_HAVEGOLD > GOLD_UPDATE) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_SOLDIER_LEVEL >= 3) && (L1_GOLD_UPDATE == FALSE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L1_TRANK_ERFORSCHEN = POTION_GOLDUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= GOLD_UPDATE;
		b_debug("Ich kaufe mir das Gold-Upgrade für ",GOLD_UPDATE);
	};
	if((L1_HAVEGOLD > GOLD_UPDATE) && (L1_MAGIE > 0) && (L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0) && (L1_SOLDIER_LEVEL >= 3) && (L1_EHRE_UPDATE == FALSE) && ((L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) || (SCHWIERIGKEIT <= DIFF_NORMAL)))
	{
		L1_TRANK_ERFORSCHEN = POTION_EHRENUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(pal_1004_magier,"BUCH");
		L1_HAVEGOLD -= GOLD_UPDATE;
		b_debug("Ich kaufe mir das Ehren-Upgrade für ",GOLD_UPDATE);
	};
	if((MAP == VARUS_MAP) && (L1_MINE >= 3) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) && (SCHWIERIGKEIT >= DIFF_NORMAL) && (L1_SOLDIER_LEVEL >= 4) && (L1_HELD_SPAWNED == TRUE))
	{
		if((((L2_LEBENDEHOEHLENSOELDNER + SCHWIERIGKEIT) - 1) >= L1_LEBENDEHOEHLENSOELDNER) || (SKELETONKONTROLL == GIL_DJG))
		{
			if(L1_HAVEGOLD >= HOEHLENSOELDNER)
			{
				L1_HAVEGOLD -= HOEHLENSOELDNER;
				Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
				L1_LEBENDEHOEHLENSOELDNER += 1;
				B_Message("NEWS_Gegner_HoehlenSoeldner");
			};
		};
	};
	if((L2_HAVEGOLD >= (SOELDNERLEVEL4_COST * 3)) && (NOMERCS_ON == FALSE) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) && (L1_HELD_ARMBRUSTLEVEL >= 4) && (L1_HELD_SCHWERTLEVEL >= 3) && (L1_HELD_RUESTUNGLEVEL >= 2) && (SCHWIERIGKEIT <= DIFF_NORMAL))
	{
		L1_HAVEGOLD -= SOELDNERLEVEL4_COST * 3;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		b_debug("Ich kaufe drei meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 2);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L1_HAVEGOLD >= (SOELDNERLEVEL4_COST * 5)) && (NOMERCS_ON == FALSE) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) && (L1_HELD_ARMBRUSTLEVEL >= 4) && (L1_HELD_SCHWERTLEVEL >= 3) && (L1_HELD_RUESTUNGLEVEL >= 2) && (SCHWIERIGKEIT == DIFF_HEAVY))
	{
		L1_HAVEGOLD -= SOELDNERLEVEL4_COST * 5;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		b_debug("Ich kaufe fünf meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 2);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L1_HAVEGOLD >= (SOELDNERLEVEL4_COST * 8)) && (NOMERCS_ON == FALSE) && (L1_LEBENDEMINENWACHEN >= L2_LEBENDEMINENWACHEN) && (L1_HELD_ARMBRUSTLEVEL >= 4) && (L1_HELD_SCHWERTLEVEL >= 3) && (L1_HELD_RUESTUNGLEVEL >= 2) && (SCHWIERIGKEIT >= DIFF_HORROR))
	{
		L1_HAVEGOLD -= SOELDNERLEVEL4_COST * 8;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		B_SpawnSoeldner(GIL_DJG);
		b_debug("Ich kaufe acht meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 2);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if(Npc_IsInState(djg_2000_king,ZS_Attack) && (L1_EHRENPUNKTE >= UNSTERBLICHKEIT_COST) && (L1_UNSTERBLICHKEIT == FALSE) && (L1_SOLDIER_LEVEL >= 7) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		b_mach_unsterblich_1();
		L1_EHRENPUNKTE -= UNSTERBLICHKEIT_COST;
		b_debug("Der gegnerische König wird angegriffen, also leiste ich mir Unsterblichkeit für ",UNSTERBLICHKEIT_COST);
	};
	if((L1_EHRENPUNKTE >= REVIVE_COST) && ((L1_REVIVE == FALSE) && (FRAKTION_L1 == DJG)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L1_EHRENPUNKTE -= REVIVE_COST;
		L1_REVIVE = TRUE;
		L1_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir Wiederbelebungschance für: ",REVIVE_COST);
	};
	if((L1_EHRENPUNKTE >= VAMPIR_COST) && ((L1_VAMPIRSCHLAG == FALSE) && (FRAKTION_L1 == TMP)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L1_EHRENPUNKTE -= VAMPIR_COST;
		L1_VAMPIRSCHLAG = TRUE;
		L1_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir den Vampirschlag für: ",VAMPIR_COST);
	};
	if((L1_EHRENPUNKTE >= INSTANTKILL_COST) && (L1_INSTANTKILL == FALSE) && (FRAKTION_L1 == PAL) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L1_EHRENPUNKTE -= INSTANTKILL_COST;
		L1_VAMPIRSCHLAG = TRUE;
		L1_EHRENPUNKTCHOICE = 0;
		b_debug("Ich kaufe mir den Instantkill für: ",INSTANTKILL_COST);
	};
	if((L1_EHRENPUNKTE >= (UNSTERBLICHKEIT_COST + MERC_COST)) && (L1_EHRENPUNKTCHOICE == 1) && ((L1_REVIVE == TRUE) || (L1_INSTANTKILL == TRUE) || (L1_VAMPIRSCHLAG == TRUE)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
	{
		L1_EHRENPUNKTE -= MERC_COST;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		L1_EHRENPUNKTCHOICE = 0;
		b_debug("Ich hole mir zwei Söldner für soviele Ehrenpunkte: ",MERC_COST);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L1_EHRENPUNKTE >= (UNSTERBLICHKEIT_COST + KLAU_COST)) && (L1_EHRENPUNKTCHOICE == 0) && ((L1_REVIVE == TRUE) || (L1_INSTANTKILL == TRUE) || (L1_VAMPIRSCHLAG == TRUE)) && (SCHWIERIGKEIT >= DIFF_NORMAL))
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
		L1_HAVEGOLD += klaugold;
		Print(b_KlauString(klaugold));
		L1_EHRENPUNKTE -= KLAU_COST;
		if(NOMERCS_ON == FALSE)
		{
			L1_EHRENPUNKTCHOICE = 1;
		};
		b_debug("Ich klaue mir Gold für folgende Ehrenpunkte: ",KLAU_COST);
	};
};

func void b_lagereinski_soeldner()
{
	if((MAP == MACHTL_MAP) || (MAP == VARUS_MAP))
	{
		if((L2_LEBENDEMINENWACHEN == 0) && (L1_LEBENDEMINENARBEITER < (BIGMINE_GOLD / 2)) && (L1_HAVEGOLD >= MINENARBEITERSOELDNER))
		{
			L1_HAVEGOLD -= MINENARBEITERSOELDNER;
			Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
			L1_LEBENDEMINENARBEITER += 1;
		};
	};
	if((L1_HAVEGOLD >= MINENCOST) && (L1_MINE_ERBAUT != TRUE))
	{
		L1_HAVEGOLD -= MINENCOST;
		L1_MINE_ERBAUT = TRUE;
		b_debug("Ich kaufe mir eine Mine für ",MINENCOST);
	};
	if((L1_SCHMIEDE_ERBAUT == TRUE) && (L1_SCHMIEDGEGENSTAND != SCHMIED_GOLD))
	{
		L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
	};
	if((L1_HAVEGOLD >= MINENARBEITERCOST) && (L1_MINE > 0) && (L1_MINE < 3) && (L1_SOLDIER_LEVEL >= 1))
	{
		L1_HAVEGOLD -= MINENARBEITERCOST;
		L1_MINE += 1;
		if(L1_MINE == 2)
		{
			Wld_InsertNpc(pal_1009_minenarbeiter,"L1_MINE_GOLD_2");
		};
		if(L1_MINE == 3)
		{
			Wld_InsertNpc(pal_1010_minenarbeiter,"L1_MINE_GOLD_3");
		};
		b_debug("Ich kaufe mir einen Minenarbeiter für ",MINENARBEITERCOST);
	};
	if((L1_HAVEGOLD >= (SOELDNERLEVEL4_COST * 2)) && (SCHWIERIGKEIT == DIFF_LIGHT))
	{
		L1_HAVEGOLD -= SOELDNERLEVEL4_COST * 2;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		b_debug("Ich kaufe mir zwei meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 3);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L1_HAVEGOLD >= (SOELDNERLEVEL4_COST * 3)) && (SCHWIERIGKEIT == DIFF_NORMAL))
	{
		L1_HAVEGOLD -= SOELDNERLEVEL4_COST * 3;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		b_debug("Ich kaufe mir drei meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 3);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L1_HAVEGOLD >= (SOELDNERLEVEL4_COST * 5)) && (SCHWIERIGKEIT == DIFF_HEAVY))
	{
		L1_HAVEGOLD -= SOELDNERLEVEL4_COST * 5;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		b_debug("Ich kaufe mir fünf meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 3);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if((L1_HAVEGOLD >= (SOELDNERLEVEL4_COST * 10)) && (SCHWIERIGKEIT == DIFF_HORROR))
	{
		L1_HAVEGOLD -= SOELDNERLEVEL4_COST * 10;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		b_debug("Ich kaufe mir ZEHN meisterhafte Söldner für ",SOELDNERLEVEL4_COST * 3);
		B_Message("NEWS_Gegner_Soeldner");
	};
	if(Npc_IsInState(djg_2000_king,ZS_Attack) && (L1_EHRENPUNKTE >= UNSTERBLICHKEIT_COST) && (L1_UNSTERBLICHKEIT == FALSE))
	{
		b_mach_unsterblich_1();
		L1_EHRENPUNKTE -= UNSTERBLICHKEIT_COST;
		b_debug("Der gegnerische König wird angegriffen, also leiste ich mir Unsterblichkeit für ",UNSTERBLICHKEIT_COST);
	};
	if((L1_HAVEGOLD > SMITHCOST) && (L1_SCHMIEDE_ERBAUT == FALSE) && (L1_MINE > 1) && (L1_SOLDIER_LEVEL >= 1))
	{
		L1_SCHMIEDE_ERBAUT = TRUE;
		L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
		L1_HAVEGOLD -= SMITHCOST;
	};
	if(Npc_IsInState(djg_2000_king,ZS_Attack) && (L1_EHRENPUNKTE >= UNSTERBLICHKEIT_COST) && (L1_UNSTERBLICHKEIT == FALSE))
	{
		b_mach_unsterblich_2();
		L1_EHRENPUNKTE -= UNSTERBLICHKEIT_COST;
	};
	if(L1_EHRENPUNKTE >= MERC_COST)
	{
		L1_EHRENPUNKTE -= MERC_COST;
		L1_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_PAL);
		B_SpawnSoeldner(GIL_PAL);
		L1_EHRENPUNKTCHOICE = 0;
	};
};

func void b_lagereinski()
{
	var string concatText;
	if(KI_TYPE_1 == 0)
	{
		KI_TYPE_1 = Hlp_Random(6) + 1;
		if(DEBUG == TRUE)
		{
			if(KI_TYPE_1 == 1)
			{
				concatText = "Ich möchte mit Söldnern spielen.";
			}
			else if(KI_TYPE_1 >= 2)
			{
				concatText = "Ich möchte wirtschaftlich spielen.";
			}
			else if(KI_TYPE_1 == 6)
			{
				concatText = "Ich möchte mit dem Helden spielen.";
			};
			AI_PrintScreen(concatText,5,5,FONT_ScreenSmall,5);
		};
	};
	if((KI_TYPE_1 == 1) && (NOMERCS_ON == FALSE))
	{
		b_lagereinski_soeldner();
	}
	else if(((KI_TYPE_1 > 1) && (KI_TYPE_1 < 6)) || (NOMERCS_ON == TRUE))
	{
		b_lagereinski_wirtschaft();
	}
	else if(KI_TYPE_1 == 6)
	{
		b_lagereinski_held();
	};
};

