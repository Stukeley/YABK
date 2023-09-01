// Zmiana parametrow Najemnikow (w zaleznosci od wybranego rodzaju najemnika).

// Funkcja zmieniajaca parametry stworzonego Najemnika (slf) w zaleznosci od gildii (gil) oraz wybranego w dialogu typu (slaby, silny, itd.)
// gil - gildia (GIL_PAL lub GIL_DJG)
// stufe - przekazana globalna zmienna oznaczajaca poziom najemnika (1 - 4 albo 7, ale nie wiem skad to 7)
func void B_SetMercAbilities(var C_Npc slf, var int gil, var int stufe)
{
	// Twarz??
	var int face;

	// Frakcja najemnika - PAL (Paladyn), DJG (Lowca Smokow), TMP (Templariusz), SKE (Ozywieniec).
	var int fraktion;

	// Niesmiertelnosc?
	var int unsterblichkeit;

	// Domyslne atrybuty najemnika.
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
	slf.protection[PROT_POINT] = 35;
	slf.protection[PROT_FIRE] = 0;
	slf.protection[PROT_MAGIC] = 0;

	Npc_SetTalentSkill(slf, NPC_TALENT_1H, 0);
	Npc_SetTalentSkill(slf, NPC_TALENT_2H, 0);

	face = Face_P_NormalBald + stufe;

	// Zmiana wygladu "elitarnych" najemnikow? (normalni najemnicy maja poziom 1-4).
	if(stufe == 5)
	{
		Mdl_SetVisual(slf, "Golem.mds");
		Mdl_ApplyOverlayMds(slf, "Golem_Icegolem.mds");
		Mdl_SetVisualBody(slf, "Gol_Ice_Body", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -1);
	}
	else if(stufe == 7)
	{
		Mdl_SetVisual(slf, "HumanS.mds");
		Mdl_ApplyOverlayMds(slf, "humans_skeleton.mds");
		Mdl_SetVisualBody(slf, "Ske_Body2", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -1);
	};

	// Ustawienie frakcji i niesmiertelnosci.
	if ((gil == GIL_PAL) || (gil == GIL_MIL))
	{
		fraktion = FRAKTION_L1;
		unsterblichkeit = L1_UNSTERBLICHKEIT;
	}
	else if ((gil == GIL_DJG) || (gil == GIL_SLD))
	{
		fraktion = FRAKTION_L2;
		unsterblichkeit = L2_UNSTERBLICHKEIT;
	};

	// AI.
	slf.aivar[96] = stufe;
	slf.aivar[98] = face;
	slf.aivar[99] = 2;

	if (LOAD == 0)
	{
		slf.aivar[74] = 1;
	}
	else
	{
		slf.aivar[74] = LOAD;
	};

	// Zmiana wygladu najemnikow w zaleznosci od frakcji.
	if (fraktion == SKE)
	{
		B_SetSkelettVisual(slf, stufe);
	}
	else
	{
		var int merc_armor;
		merc_armor = B_GetUnitArmor(fraktion, stufe);

		if (merc_armor != -1)
		{
			B_SetNpcVisual(slf, MALE, "Hum_Head_Bald", slf.aivar[98], BodyTex_P, merc_armor);
		};
	};

	// Ustawienie niesmiertelnosci.
	if(unsterblichkeit == TRUE)
	{
		slf.flags = NPC_FLAG_IMMORTAL;
	};

	slf.guild = gil;
	slf.voice = 6;
	slf.npcType = npctype_main;

	// Ustawienie modelu.
	if (stufe <= 4)
	{
		if (fraktion != SKE)
		{
			Mdl_SetVisual(slf, "humans.mds");
		};

		Mdl_ApplyOverlayMds(slf, "humans_relaxed.mds");
	};

	Mdl_SetModelFatness(slf, 0);

	B_GiveNpcTalents(slf);
	B_CreateAmbientInv(slf);

	// AI.
	slf.senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	slf.senses_range = 2500;

	// Ustawienie nazwy i parametrow w zaleznosci od poziomu najemnika.
	// Zostawiam to w takiej formie, bo latwiej wtedy zmieniac poszczegolne wartosci dla kazdego poziomu.
	// [BALANS]
	var int merc_weapon;
	merc_weapon = B_GetMercWeapon(stufe);
	if (merc_weapon != -1)
	{
		EquipItem(slf, merc_weapon);
	};

	if (stufe == 1)
	{
		if (gil == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_1_PAL;
		}
		else if (gil == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_1_DJG;
		};

		B_SetAttributesToChapter(slf, 0);
		B_SetFightSkills(slf, 20);

		Npc_SetTalentSkill(slf, NPC_TALENT_1H, 0);
		slf.fight_tactic = FAI_HUMAN_COWARD;
	}
	else if (stufe == 2)
	{
		if (gil == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_2_PAL;
		}
		else if (gil == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_2_DJG;
		};

		B_SetAttributesToChapter(slf, 2);
		B_SetFightSkills(slf, 40);

		Npc_SetTalentSkill(slf, NPC_TALENT_1H, 1);
		slf.fight_tactic = FAI_HUMAN_NORMAL;
	}
	else if (stufe == 3)
	{
		if (gil == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_3_PAL;
		}
		else if (gil == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_3_DJG;
		};

		B_SetAttributesToChapter(slf, 4);
		B_SetFightSkills(slf, 60);

		Npc_SetTalentSkill(slf, NPC_TALENT_1H, 2);
		slf.fight_tactic = FAI_HUMAN_STRONG;
	}
	else if (stufe == 4)
	{
		if (gil == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_4_PAL;
		}
		else if (gil == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_4_DJG;
		};

		B_SetAttributesToChapter(slf, 6);
		B_SetFightSkills(slf, 80);

		Npc_SetTalentSkill(slf, NPC_TALENT_1H, 2);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	// Jacys specjalni najemnicy?
	else if (stufe == 5)
	{
		slf.attribute[ATR_STRENGTH] = 480;
		slf.attribute[ATR_DEXTERITY] = 480;
		slf.attribute[ATR_HITPOINTS_MAX] = 800;
		slf.attribute[ATR_HITPOINTS] = 800;
		slf.attribute[ATR_MANA_MAX] = 100;
		slf.attribute[ATR_MANA] = 100;

		slf.protection[PROT_BLUNT] = 190;
		slf.protection[PROT_EDGE] = 190;
		slf.protection[PROT_POINT] = 190;
		slf.protection[PROT_FIRE] = 190;
		slf.protection[PROT_FLY] = 190;
		slf.protection[PROT_MAGIC] = 190;

		slf.fight_tactic = FAI_STONEGOLEM;
		slf.damagetype = DAM_FLY;
	}
	// Jacys jeszcze bardziej specjalni najemnicy?
	else if(stufe == 7)
	{
		if(slf.guild == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_7_PAL;
		}
		else if(slf.guild == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_7_DJG;
		};

		B_SetAttributesToChapter(slf, 8);

		slf.fight_tactic = FAI_HUMAN_STRONG;
		B_SetFightSkills(slf, 75);

		Mdl_ApplyOverlayMds(slf, "humans_1hST2.mds");
		Mdl_ApplyOverlayMds(slf, "humans_2hST2.mds");

		slf.damagetype = DAM_EDGE;
	};
};

