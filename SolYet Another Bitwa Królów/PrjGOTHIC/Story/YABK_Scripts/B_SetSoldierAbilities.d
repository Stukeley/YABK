// Zmiana parametrow Zolnierzy (w zaleznosci od posiadanych ulepszen).

// Funkcja zmieniajaca parametry stworzonego Zolnierza (slf) w zaleznosci od gildii (gil) z uwzglednieniem m.in. ulepszen.
// gil - gildia (GIL_PAL = czerwoni, lub GIL_DJG = niebiescy)
func void B_SetSoldierAbilities(var C_Npc slf, var int gil)
{
	// Poziom zolnierza.
	var int stufe;

	// Twarz??
	var int face;

	// Frakcja zolnierza - PAL (Paladyn), DJG (Lowca Smokow), TMP (Templariusz), SKE (Ozywieniec).
	var int fraktion;

	// Uzywana zbroja (zalezna od ulepszen).
	var int used_armor;

	// Uzywany miecz (zalezny od ulepszen).
	var int used_weapon;

	// Dodatkowe HP [perk za honor].
	var int bonusHpPerk;

	var int BonusPhysDef;
	var int BonusMagDef;
	var int SkePhysDef;
	var int SkeMagDef;

	// Domyslne atrybuty zolnierza.
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

	Npc_SetTalentSkill(self, NPC_TALENT_1H, 0);
	Npc_SetTalentSkill(self, NPC_TALENT_2H, 0);

	// Ustawiamy m.in. niesmiertelnosc [perk za honor].
	if (gil == GIL_PAL)
	{
		fraktion = FRAKTION_L1;
		stufe = L1_SOLDIER_LEVEL;
		if (L1_BONUSHPPERK == TRUE)
		{
			bonusHpPerk = TRUE;
		};

		// Jezeli mamy umiejetnosc "Pelnia Zycia" od uczonego.
		if (L1_HEILTRANKERFORSCHT == TRUE)
		{
			CreateInvItems(slf, ItPo_Health_Addon_04, 1);
		};

		used_armor = L1_USED_ARMOR;
		used_weapon = L1_USED_WEAPON;
		slf.name[0] = NPCNAME_SOLDAT_PAL;
	}
	else if (gil == GIL_DJG)
	{
		fraktion = FRAKTION_L2;
		stufe = L2_SOLDIER_LEVEL;
		if (L2_BONUSHPPERK == TRUE)
		{
			bonusHpPerk = TRUE;
		};

		// Jezeli mamy umiejetnosc "Pelnia Zycia" od uczonego.
		if (L2_HEILTRANKERFORSCHT == TRUE)
		{
			CreateInvItems(slf, ItPo_Health_Addon_04, 1);
		};

		used_armor = L2_USED_ARMOR;
		used_weapon = L2_USED_WEAPON;
		slf.name[0] = NPCNAME_SOLDAT_DJG;
	};

	if (used_armor == 2)
	{
		BonusMagDef = 32;
		BonusPhysDef = 32;
		SkePhysDef = 112;
		SkeMagDef = 20;
	}
	else if (used_armor == 3)
	{
		BonusMagDef = 46;
		BonusPhysDef = 46;
		SkePhysDef = 201;
		SkeMagDef = 29;
	}
	else if(used_armor == 4)
	{
		BonusMagDef = 60;
		BonusPhysDef = 60;
		SkePhysDef = 262;
		SkeMagDef = 37;
	}
	else 
	{
		BonusMagDef = 18;
		BonusPhysDef = 18;
		SkePhysDef = 79;
		SkeMagDef = 11;
	};

	face = Face_N_NormalBart01 + stufe;

	// aivar - tablica sterujaca AI.
	// Dlaczego takie wartosci?
	slf.aivar[96] = stufe;
	slf.aivar[98] = face;
	slf.aivar[99] = 1;
	slf.aivar[75] = used_armor;

	if (LOAD == 0)
	{
		slf.aivar[74] = 1;
	}
	else
	{
		slf.aivar[74] = LOAD;
	};

	// Przypisanie wygladu zolnierza w zaleznosci od frakcji i poziomu ulepszenia zbroi.

		var int soldier_armor;
		soldier_armor = B_GetUnitArmor(fraktion, used_armor);

		if (soldier_armor != -1 && fraktion != SKE && fraktion != ORC)
		{
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", slf.aivar[98], BodyTex_N, soldier_armor);
		}
		else
		{
			B_SetNpcVisual(self,MALE,"Ske_Head",0,0,soldier_armor);
		};

	slf.guild = gil;
	slf.voice = 6;
	slf.npcType = npctype_main;

	// Ustawienie modelu postaci.
	if(fraktion != SKE)
	{
		Mdl_SetVisual(slf, "humans.mds");
	};
	Mdl_ApplyOverlayMds(slf, "humans_relaxed.mds");
	Mdl_SetModelFatness(slf, 0);

	B_GiveNpcTalents(slf);
	B_CreateAmbientInv(slf);

	// AI.
	slf.senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	slf.senses_range = 2500;

	// Ustawienie statystyk w zaleznosci od wykupionego poziomu zolnierzy.
	// Zostawiam to w takiej formie, bo latwiej wtedy zmieniac poszczegolne wartosci dla kazdego poziomu.
	// [BALANS]
	if (stufe == 1)
	{
		B_SetAttributesToChapter(slf, 0);
		B_SetFightSkills(slf, 10);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 0);
		slf.fight_tactic = FAI_HUMAN_COWARD;
	}
	else if (stufe == 2)
	{
		B_SetAttributesToChapter(slf, 1);
		B_SetFightSkills(slf, 30);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
		slf.fight_tactic = FAI_HUMAN_COWARD;
	}
	else if (stufe == 3)
	{
		B_SetAttributesToChapter(slf, 2);
		B_SetFightSkills(slf, 45);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
		slf.fight_tactic = FAI_HUMAN_NORMAL;
	}
	else if (stufe == 4)
	{
		B_SetAttributesToChapter(slf, 3);
		B_SetFightSkills(slf, 60);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
		slf.fight_tactic = FAI_HUMAN_NORMAL;
	}
	else if (stufe == 5)
	{
		B_SetAttributesToChapter(slf, 4);
		B_SetFightSkills(slf, 70);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
		slf.fight_tactic = FAI_HUMAN_STRONG;
	}
	else if (stufe == 6)
	{
		B_SetAttributesToChapter(slf, 5);
		B_SetFightSkills(slf, 80);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
		slf.fight_tactic = FAI_HUMAN_STRONG;
	}
	else if (stufe == 7)
	{
		B_SetAttributesToChapter(slf, 6);
		B_SetFightSkills(slf, 90);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	};

	// Ustawienie broni w zaleznosci od posiadanego ulepszenia.
	var int soldier_weapon;
	if (fraktion != ORC)
	{
		soldier_weapon = B_GetSoldierWeapon(gil, used_weapon);
	}
	else 
	{
		soldier_weapon = B_GetOrcWeaponSoldier(gil, used_weapon);
	};

	EquipItem(slf, soldier_weapon);

	// Ustawiamy dodatkowe HP [perk za honor].
	if (bonusHpPerk == TRUE)
	{
		B_SetUnitHpOverLimit(slf, gil);
	};
	//Co jesli jednostka jest orkiem?		
	if (fraktion == ORC)
	{
		slf.fight_tactic = FAI_ORC;	
		Mdl_SetVisual(self,"Orc.mds");
		B_SetSkelettVisual(slf, used_armor+9);

	};




	// Uwzglêdniamy perki pasywne
	if (passive_perks == TRUE)
	{
		if (fraktion == DJG)
		{
			slf.attribute[ATR_HITPOINTS_MAX] = (6*slf.attribute[ATR_HITPOINTS_MAX])/5;
			slf.attribute[ATR_HITPOINTS] = (6*slf.attribute[ATR_HITPOINTS])/5;
		}
		else if (fraktion == PAL)
		{
			slf.attribute[ATR_DEXTERITY] = 2*slf.attribute[ATR_DEXTERITY];
			slf.aivar[REAL_DEXTERITY] = 2*slf.attribute[ATR_DEXTERITY];
		}
		else if (fraktion == TMP)
		{
			slf.protection[PROT_FIRE] = BonusMagDef;
			slf.protection[PROT_MAGIC] = BonusMagDef;
		}
		else if (fraktion == PCH)
		{
			slf.protection[PROT_EDGE] = BonusPhysDef;
			slf.protection[PROT_BLUNT] = BonusPhysDef;
			slf.protection[PROT_POINT] = BonusPhysDef;
		}
		else if (fraktion == SKE)
		{
			slf.protection[PROT_EDGE] = BonusPhysDef;
			slf.protection[PROT_BLUNT] = BonusPhysDef;
			slf.protection[PROT_POINT] = BonusPhysDef;
			slf.protection[PROT_FIRE] = BonusMagDef;
			slf.protection[PROT_MAGIC] = BonusMagDef;
		}
		else if (fraktion == ORC)
		{
			slf.attribute[ATR_STRENGTH] = (13*slf.attribute[ATR_STRENGTH])/10;
			slf.aivar[REAL_STRENGTH] = (13*slf.aivar[REAL_STRENGTH])/10;
		};


	};




};

