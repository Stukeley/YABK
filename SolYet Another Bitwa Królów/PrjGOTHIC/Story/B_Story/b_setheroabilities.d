// Zmiana parametrow Bohaterow (w zaleznosci od posiadanych ulepszen).

// Funkcja zwracajaca typ (kod) pancerza bohatera w zaleznosci od frakcji oraz poziomu ulepszenia zbroi.
// Nie uwzglednia szkieletow - maja one osobna funkcje B_SetSkelettVisual.
func int B_GetHeroArmor(var int fraktion, var int armor_level)
{
	if (fraktion == Pal)
	{
		if (armor_level == 0)
		{
			return ItAr_MIL_M;
		}
		else if (armor_level == 1)
		{
			return ItAr_PAL_M;
		}
		else
		{
			return ItAr_PAl_H;
		};
	}
	else if (fraktion == DJG)
	{
		if (armor_level == 0)
		{
			return itar_sld_M;
		}
		else if (armor_level == 1)
		{
			return itar_djg_l;
		}
		else
		{
			return itar_djg_h;
		};
	}
	else if (fraktion == TMP)
	{
		if (armor_level == 0)
		{
			return itar_tmp_l;
		}
		else if (armor_level == 1)
		{
			return itar_tmp_m;
		}
		else
		{
			return itar_tmp_h;
		};
	};

	return 0;
};

// Funkcja zmieniajaca parametry stworzonego Bohatera (slf) w zaleznosci od gildii (gil) z uwzglednieniem m.in. ulepszen.
// gil - gildia (GIL_PAL = czerwoni, lub GIL_DJG = niebiescy)
func void B_SetHeroAbilities(var C_Npc slf, var int gil)
{
	// Frakcja bohatera - PAL (Paladyn), DJG (Lowca Smokow), TMP (Templariusz), SKE (Ozywieniec).
	var int fraktion;

	// Poziom zbroi bohatera (od 1 do 3).
	var int ruestungslevel;

	// Poziom bohatera zalezny od doswiadczenia (od 1 do 8).
	var int skilllevel;

	// Poziom mieczy bohatera (od 1 do 4).
	var int schwertlevel;

	// Poziom kuszy bohatera (od 0 do 4).
	var int armbrustlevel;

	// Domyslne atrybuty bohatera.
	slf.attribute[ATR_STRENGTH] = 10;
	slf.aivar[REAL_STRENGTH] = 10;
	slf.attribute[ATR_DEXTERITY] = 10;
	slf.aivar[REAL_DEXTERITY] = 10;
	slf.attribute[ATR_MANA_MAX] = 10;
	slf.aivar[REAL_MANA_MAX] = 10;
	slf.attribute[ATR_MANA] = 10;
	slf.attribute[ATR_HITPOINTS_MAX] = 40;
	slf.attribute[ATR_HITPOINTS] = 40;

	slf.HitChance[NPC_TALENT_1H] = 0;
	slf.HitChance[NPC_TALENT_2H] = 0;
	slf.HitChance[NPC_TALENT_BOW] = 0;
	slf.HitChance[NPC_TALENT_CROSSBOW] = 0;

	slf.protection[PROT_EDGE] = 0;
	slf.protection[PROT_BLUNT] = 0;
	slf.protection[PROT_POINT] = 0;
	slf.protection[PROT_FIRE] = 0;
	slf.protection[PROT_MAGIC] = 0;

	Npc_SetTalentSkill(slf,NPC_TALENT_1H,0);
	Npc_SetTalentSkill(slf,NPC_TALENT_2H,0);

	if (gil == GIL_DJG)
	{
		ruestungslevel = L2_HELD_RUESTUNGLEVEL;
		fraktion = FRAKTION_L2;
		skilllevel = L2_HELD_SKILLLEVEL;
		schwertlevel = L2_HELD_SCHWERTLEVEL;
		armbrustlevel = L2_HELD_ARMBRUSTLEVEL;
		slf.name[0] = NPCNAME_HERO_DJG;
	}
	else if (gil == GIL_PAL)
	{
		ruestungslevel = L1_HELD_RUESTUNGLEVEL;
		fraktion = FRAKTION_L1;
		skilllevel = L1_HELD_SKILLLEVEL;
		schwertlevel = L1_HELD_SCHWERTLEVEL;
		armbrustlevel = L1_HELD_ARMBRUSTLEVEL;
		slf.name[0] = NPCNAME_HERO_PAL;
	};

	// aivar - tablica sterujaca AI.
	// Dlaczego takie wartosci?
	slf.aivar[96] = 0;
	slf.aivar[99] = 4;
	slf.aivar[75] = ruestungslevel;

	if (LOAD == 0)
	{
		slf.aivar[74] = 1;
	}
	else
	{
		slf.aivar[74] = LOAD;
	};

	// Przypisanie wygladu bohatera w zaleznosci od frakcji i poziomu zbroi.
	if (fraktion == SKE)
	{
		B_SetSkelettVisual(slf, ruestungslevel + 2);
	}
	else
	{
		var int hero_armor;
		hero_armor = B_GetHeroArmor(fraktion, ruestungslevel);

		B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_N_Wolf, BodyTex_N, hero_armor);
	};

	slf.voice = 6;
	slf.npcType = npctype_main;
	slf.guild = gil;

	// Ustawienie modelu postaci.
	if(fraktion != SKE)
	{
		Mdl_SetVisual(slf,"humans.mds");
	};
	Mdl_ApplyOverlayMds(slf,"humans_relaxed.mds");
	Mdl_SetModelFatness(slf,0);
	slf.bodyStateInterruptableOverride = TRUE;

	B_CreateAmbientInv(slf);

	// AI.
	slf.senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	slf.senses_range = 2000;

	// Ustawienie domyslnych talentow (male znaczenie).
	B_GiveNpcTalents(slf);

	// Ustawienie miecza i jego umiejetnosci w zaleznosci od talentu.
	if (schwertlevel == 0)
	{
		EquipItem(slf,itmw_hero_1);
		slf.HitChance[NPC_TALENT_1H] = 31;
		slf.HitChance[NPC_TALENT_2H] = 31;
		Mdl_ApplyOverlayMds(slf,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST1.mds");
	}
	else if (schwertlevel == 1)
	{
		EquipItem(slf,itmw_hero_2);
		slf.HitChance[NPC_TALENT_1H] = 54;
		slf.HitChance[NPC_TALENT_2H] = 54;
		Mdl_ApplyOverlayMds(slf,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST1.mds");
	}
	else if (schwertlevel == 2)
	{
		EquipItem(slf,itmw_hero_3);
		slf.HitChance[NPC_TALENT_1H] = 77;
		slf.HitChance[NPC_TALENT_2H] = 77;
		Mdl_ApplyOverlayMds(slf,"humans_1hST2.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST2.mds");
	}
	else if (schwertlevel >= 3)
	{
		EquipItem(slf,itmw_hero_4);
		slf.HitChance[NPC_TALENT_1H] = 100;
		slf.HitChance[NPC_TALENT_2H] = 100;
		Mdl_ApplyOverlayMds(slf,"humans_1hST2.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST2.mds");
	};

	// Ustawienie atrybutow i AI w zaleznosci od poziomu (za doswiadczenie).
	// [BALANS]
	var int multiplier;
	multiplier = skilllevel / TOTEGEGNERFUERSKILLLEVEL;
	
	slf.aivar[96] = multiplier;

	if (multiplier >= 4)
	{
		B_SetAttributesToChapter(slf, 5 + multiplier);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else if (multiplier == 3)
	{
		B_SetAttributesToChapter(slf, 6);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else
	{
		B_SetAttributesToChapter(slf, 3 + multiplier);
		slf.fight_tactic = FAI_HUMAN_STRONG;
	};

	// Ustawienie kuszy i jej umiejetnosci w zaleznosci od talentu.
	if (armbrustlevel == 1)
	{
		EquipItem(slf, ItRw_Crossbow_L_02);
		slf.HitChance[NPC_TALENT_BOW] = 31;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 31;
		Mdl_ApplyOverlayMds(slf, "humans_BowT1.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT1.mds");
	}
	else if (armbrustlevel == 2)
	{
		EquipItem(slf, ItRw_Crossbow_M_01);
		slf.HitChance[NPC_TALENT_BOW] = 54;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 54;
		Mdl_ApplyOverlayMds(slf, "humans_BowT1.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT1.mds");
	}
	else if (armbrustlevel == 3)
	{
		EquipItem(slf, ItRw_Crossbow_M_02);
		slf.HitChance[NPC_TALENT_BOW] = 77;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 77;
		Mdl_ApplyOverlayMds(slf, "humans_BowT2.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT2.mds");
	}
	else if (armbrustlevel == 4)
	{
		EquipItem(slf, ItRw_Crossbow_H_01);
		slf.HitChance[NPC_TALENT_BOW] = 100;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 100;
		Mdl_ApplyOverlayMds(slf, "humans_BowT2.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT2.mds");
	};

	// ?
	if (L1_WEGAUFTEILUNG < WEGCOUNTER)
	{
		slf.aivar[97] = 1;
	}
	else
	{
		slf.aivar[97] = 2;
	};

	// Cos dotyczace AI na innej mapie.
	if (MAP == VARUS_MAP)
	{
		slf.aivar[97] = 2;
		slf.aivar[94] = 0;
	};
};

