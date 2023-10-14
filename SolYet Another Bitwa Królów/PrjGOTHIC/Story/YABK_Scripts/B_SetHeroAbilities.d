// Zmiana parametrow Bohaterow (w zaleznosci od posiadanych ulepszen).

// Funkcja zmieniajaca parametry stworzonego Bohatera (slf) w zaleznosci od gildii (gil) z uwzglednieniem m.in. ulepszen.
// gil - gildia (GIL_PAL = czerwoni, lub GIL_DJG = niebiescy)
func void B_SetHeroAbilities(var C_Npc slf, var int gil)
{
	// Frakcja bohatera - PAL (Paladyn), DJG (Lowca Smokow), TMP (Templariusz), SKE (Ozywieniec).
	var int fraktion;

	// Poziom zbroi bohatera (od 0 do 2).
	var int ruestungslevel;

	// Poziom bohatera zalezny od doswiadczenia (od 1 do 8).
	var int skilllevel;

	// Poziom mieczy bohatera (od 1 do 4).
	var int schwertlevel;

	// Poziom kuszy bohatera (od 0 do 4).
	var int armbrustlevel;

	// Dodatkowe HP [perk za honor].
	var int bonusHpPerk;

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
		bonusHpPerk = L2_BONUSHPPERK;
	}
	else if (gil == GIL_PAL)
	{
		ruestungslevel = L1_HELD_RUESTUNGLEVEL;
		fraktion = FRAKTION_L1;
		skilllevel = L1_HELD_SKILLLEVEL;
		schwertlevel = L1_HELD_SCHWERTLEVEL;
		armbrustlevel = L1_HELD_ARMBRUSTLEVEL;
		slf.name[0] = NPCNAME_HERO_PAL;
		bonusHpPerk = L1_BONUSHPPERK;
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
	else if (fraktion == ORC){
		B_SetSkelettVisual(slf, ruestungslevel + 10);
	}
	else
	{
		var int hero_armor;
		// ruestungslevel + 1 bo pancerze bohatera liczymy w skali 0-2 zamiast 1-4.
		hero_armor = B_GetUnitArmor(fraktion, ruestungslevel + 2);

		if (hero_armor != -1)
		{
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_N_Wolf, BodyTex_N, hero_armor);
		};
	};

	slf.voice = 6;
	slf.npcType = npctype_main;
	slf.guild = gil;

	// Ustawienie modelu postaci.
	if(fraktion != SKE && fraktion != ORC)
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
	var int hero_weapon;
	hero_weapon = B_GetHeroWeapon(schwertlevel);
	EquipItem(slf, hero_weapon);

	if (schwertlevel == 0)
	{
		slf.HitChance[NPC_TALENT_1H] = 31;
		slf.HitChance[NPC_TALENT_2H] = 31;
		Mdl_ApplyOverlayMds(slf,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST1.mds");
	}
	else if (schwertlevel == 1)
	{
		slf.HitChance[NPC_TALENT_1H] = 54;
		slf.HitChance[NPC_TALENT_2H] = 54;
		Mdl_ApplyOverlayMds(slf,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST1.mds");
	}
	else if (schwertlevel == 2)
	{
		slf.HitChance[NPC_TALENT_1H] = 77;
		slf.HitChance[NPC_TALENT_2H] = 77;
		Mdl_ApplyOverlayMds(slf,"humans_1hST2.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST2.mds");
	}
	else if (schwertlevel >= 3)
	{
		slf.HitChance[NPC_TALENT_1H] = 100;
		slf.HitChance[NPC_TALENT_2H] = 100;
		Mdl_ApplyOverlayMds(slf,"humans_1hST2.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST2.mds");
	};

	// Ustawienie atrybutow i AI w zaleznosci od poziomu (za doswiadczenie).
	// Zostawiam to w takiej formie, bo latwiej wtedy zmieniac poszczegolne wartosci dla kazdego poziomu.
	// [BALANS]
	var int ratio;
	ratio = skilllevel / TOTEGEGNERFUERSKILLLEVEL;
	
	slf.aivar[96] = ratio;

	if (ratio >= 7)
	{
		B_SetAttributesToChapter(slf, 12);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else if (ratio >= 6)
	{
		B_SetAttributesToChapter(slf, 11);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else if (ratio >= 5)
	{
		B_SetAttributesToChapter(slf, 10);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else if (ratio >= 4)
	{
		B_SetAttributesToChapter(slf, 9);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else if (ratio >= 3)
	{
		B_SetAttributesToChapter(slf, 6);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else if (ratio >= 2)
	{
		B_SetAttributesToChapter(slf, 5);
		slf.fight_tactic = FAI_HUMAN_STRONG;
	}
	else if (ratio >= 1)
	{
		B_SetAttributesToChapter(slf, 4);
		slf.fight_tactic = FAI_HUMAN_STRONG;
	}
	else
	{
		B_SetAttributesToChapter(slf, 3);
		slf.fight_tactic = FAI_HUMAN_STRONG;
	};

	// Ustawienie kuszy i jej umiejetnosci w zaleznosci od talentu.
	// Umiejetnosc kuszy bohatera zaczyna sie od 0.
	var int hero_crossbow;
	hero_crossbow = B_GetUnitCrossbow(armbrustlevel);
	
	if (hero_crossbow != -1)
	{
		EquipItem(slf, hero_crossbow);
	}

	if (armbrustlevel == 1)
	{
		slf.HitChance[NPC_TALENT_BOW] = 31;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 31;
		Mdl_ApplyOverlayMds(slf, "humans_BowT1.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT1.mds");
	}
	else if (armbrustlevel == 2)
	{
		slf.HitChance[NPC_TALENT_BOW] = 54;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 54;
		Mdl_ApplyOverlayMds(slf, "humans_BowT1.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT1.mds");
	}
	else if (armbrustlevel == 3)
	{
		slf.HitChance[NPC_TALENT_BOW] = 77;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 77;
		Mdl_ApplyOverlayMds(slf, "humans_BowT2.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT2.mds");
	}
	else if (armbrustlevel == 4)
	{
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

	if (bonusHpPerk == TRUE)
	{
		B_SetUnitHpOverLimit(slf, gil);
	};

	if (fraktion == SKE){
		slf.protection[PROT_EDGE] = (175*slf.protection[PROT_EDGE])/100;
		slf.protection[PROT_BLUNT] = (175*slf.protection[PROT_BLUNT])/100;
		slf.protection[PROT_POINT] = (175*slf.protection[PROT_POINT])/100;
		slf.protection[PROT_FIRE] = (25*slf.protection[PROT_FIRE])/100;
		slf.protection[PROT_MAGIC] = (25*slf.protection[PROT_FIRE])/100;
	}
	else if (fraktion == PAL)
	{
		slf.attribute[ATR_DEXTERITY] = 2*slf.attribute[ATR_DEXTERITY];
		slf.aivar[REAL_DEXTERITY] = 2*slf.attribute[ATR_DEXTERITY];
	}
	else if (fraktion == DJG){
		slf.attribute[ATR_HITPOINTS_MAX] =(6*slf.attribute[ATR_HITPOINTS_MAX])/5;
		slf.attribute[ATR_HITPOINTS] = (6*slf.attribute[ATR_HITPOINTS])/5;
	}
	else if (fraktion == PCH){
		slf.protection[PROT_EDGE] = (14*slf.protection[PROT_EDGE])/10;
		slf.protection[PROT_BLUNT] = (14*slf.protection[PROT_BLUNT])/10;
		slf.protection[PROT_POINT] = (14*slf.protection[PROT_POINT])/10;
	}
	else if (fraktion == TMP){
		slf.protection[PROT_FIRE] = (14*slf.protection[PROT_FIRE])/10;
		slf.protection[PROT_MAGIC] = (14*slf.protection[PROT_FIRE])/10;
	}
	else if (fraktion == ORC){
		slf.attribute[ATR_STRENGTH] = (13*slf.attribute[ATR_STRENGTH])/10;
		slf.aivar[REAL_STRENGTH] = (13*slf.aivar[REAL_STRENGTH])/10;
	};

};

