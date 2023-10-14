// Zmiana parametrow Straznikow (w zaleznosci od wybranego rodzaju straznika).

// Funkcja ustawiajaca statystyki, bron i zbroje straznika niezaleznie, czy jest on nowy, czy istniejacy.
// Uzywana przez obie ponizsze funkcje.
// wachen - straznik
// fraktion - frakcja jednostki - PAL (Paladyn), DJG (Lowca Smokow), TMP (Templariusz). Ozywieniec jest obslugiwany za pomoca funkcji B_SetSkelettVisual.
// level - poziom straznika
func void B_UpdateGenericWachenAbilities(var C_Npc wachen, var int fraktion, var int level)
{
	// [BALANS]

	// Ustawienie pancerza.
	if (fraktion == SKE)
	{
		B_SetSkelettVisual(wachen, level);
	}
	else
	{
		var int guard_armor;
		guard_armor = B_GetUnitArmor(fraktion, level);

		if (guard_armor != -1)
		{
			B_SetNpcVisual(wachen, MALE, "Hum_Head_Fighter", wachen.aivar[98], BodyTex_L, guard_armor);
		};
	};

	// Ustawienie statystyk i broni.
	var int wachen_crossbow;
	wachen_crossbow = B_GetUnitCrossbow(level);
	EquipItem(wachen, wachen_crossbow);

	if (level == 1)
	{
		B_SetAttributesToChapter(wachen, 1);
		B_SetFightSkills(wachen, 15);
		Npc_SetTalentSkill(wachen, NPC_TALENT_CROSSBOW, 0);
	}
	else if (level == 2)
	{
		B_SetAttributesToChapter(wachen, 2);
		B_SetFightSkills(wachen, 40);
		Npc_SetTalentSkill(wachen, NPC_TALENT_CROSSBOW, 1);
	}
	else if (level == 3)
	{
		B_SetAttributesToChapter(wachen, 4);
		B_SetFightSkills(wachen, 60);
		Npc_SetTalentSkill(wachen, NPC_TALENT_CROSSBOW, 2);
	}
	else if (level == 4)
	{
		B_SetAttributesToChapter(wachen, 6);
		B_SetFightSkills(wachen, 85);
		Npc_SetTalentSkill(wachen, NPC_TALENT_CROSSBOW, 2);
	};

	if (fraktion == SKE){
		wachen.protection[PROT_EDGE] = (175*wachen.protection[PROT_EDGE])/100;
		wachen.protection[PROT_BLUNT] = (175*wachen.protection[PROT_BLUNT])/100;
		wachen.protection[PROT_POINT] = (175*wachen.protection[PROT_POINT])/100;
		wachen.protection[PROT_FIRE] = (25*wachen.protection[PROT_FIRE])/100;
		wachen.protection[PROT_MAGIC] = (25*wachen.protection[PROT_FIRE])/100;
	}
	else if (fraktion == PAL)
	{
		wachen.attribute[ATR_DEXTERITY] = 2*wachen.attribute[ATR_DEXTERITY];
		wachen.aivar[REAL_DEXTERITY] = 2*wachen.attribute[ATR_DEXTERITY];
	}
	else if (fraktion == DJG){
		wachen.attribute[ATR_HITPOINTS_MAX] =(6*wachen.attribute[ATR_HITPOINTS_MAX])/5;
		wachen.attribute[ATR_HITPOINTS] = (6*wachen.attribute[ATR_HITPOINTS])/5;
	}
	else if (fraktion == PCH){
		wachen.protection[PROT_EDGE] = (14*wachen.protection[PROT_EDGE])/10;
		wachen.protection[PROT_BLUNT] = (14*wachen.protection[PROT_BLUNT])/10;
		wachen.protection[PROT_POINT] = (14*wachen.protection[PROT_POINT])/10;
	}
	else if (fraktion == TMP){
		wachen.protection[PROT_FIRE] = (14*wachen.protection[PROT_FIRE])/10;
		wachen.protection[PROT_MAGIC] = (14*wachen.protection[PROT_FIRE])/10;
	}
	else if (fraktion == ORC){
		wachen.attribute[ATR_STRENGTH] = (13*wachen.attribute[ATR_STRENGTH])/10;
		wachen.aivar[REAL_STRENGTH] = (13*wachen.aivar[REAL_STRENGTH])/10;
	};
};

// Funkcja zmieniajaca parametry stworzonego straznika (slf) w zaleznosci od gildii (gil)
// gil - gildia (GIL_PAL lub GIL_DJG)
func void B_SetWachenAbilities(var C_Npc slf, var int gil)
{
	// Twarz??
	var int face;

	// Poziom straznika.
	var int stufe;
	
	// Frakcja straznika - PAL (Paladyn), DJG (Lowca Smokow), TMP (Templariusz), SKE (Ozywieniec).
	var int fraktion;

	// Domyslne atrybuty straznika.
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

	if (gil == GIL_PAL)
	{
		stufe = L1_WACHEN_LEVEL;
		fraktion = FRAKTION_L1;
	}
	else if (gil == GIL_DJG)
	{
		stufe = L2_WACHEN_LEVEL;
		fraktion = FRAKTION_L2;
	};

	face = Face_L_ToughBald01 + stufe;

	// AI.
	slf.aivar[98] = face;
	slf.aivar[99] = 5;
	slf.aivar[75] = stufe;
	
	if(LOAD == 0)
	{
		slf.aivar[74] = 1;
	}
	else
	{
		slf.aivar[74] = LOAD;
	};

	if(gil == GIL_PAL)
	{
		slf.name[0] = NPCNAME_WACHE_PAL;
	}
	else if(gil == GIL_DJG)
	{
		slf.name[0] = NPCNAME_WACHE_DJG;
	};

	slf.guild = gil;
	slf.voice = 5;
	slf.npcType = npctype_main;

	// Ustawienie pancerza, broni i statystyk.
	B_UpdateGenericWachenAbilities(slf, fraktion, stufe);

	// Ustawienie modelu.
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

	slf.fight_tactic = FAI_NAILED;
};

// Funckja aktualizujaca parametry straznika (slf) podczas gdy jest on juz na polu bitwy.
func void B_UpdateWachenAbilities(var C_Npc slf)
{
	// Aktualizacja parametrow straznika tylko gdy nie jest on martwy.
	if (Npc_IsDead(slf))
	{
		return;
	};

	// Twarz??
	var int face;

	// Poziom straznika.
	var int stufe;

	// Frakcja straznika - PAL (Paladyn), DJG (Lowca Smokow), TMP (Templariusz), SKE (Ozywieniec).
	var int fraktion;

	// Maksymalne i aktualne zycie straznika.
	var int hp_max;
	var int hp;

	if(slf.guild == GIL_PAL)
	{
		stufe = L1_WACHEN_LEVEL;
		fraktion = FRAKTION_L1;
	}
	else if(slf.guild == GIL_DJG)
	{
		stufe = L2_WACHEN_LEVEL;
		fraktion = FRAKTION_L2;
	};
	face = Face_L_ToughBald01 + stufe;

	// Ustawienie pancerza, broni i statystyk.
	B_UpdateGenericWachenAbilities(self, fraktion, stufe);
	AI_EquipBestRangedWeapon(self);

	// Nie wiem czy to jest potrzebne.
	if(stufe == 1)
	{
		Mdl_ApplyOverlayMds(slf, "humans_BowT0.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT0.mds");
	}
	else if (stufe == 2)
	{
		Mdl_ApplyOverlayMds(slf, "humans_BowT1.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT1.mds");
	}
	else if (stufe == 3)
	{
		Mdl_ApplyOverlayMds(slf, "humans_BowT2.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT2.mds");
	}
	else if (stufe == 4)
	{
		Mdl_ApplyOverlayMds(slf, "humans_BowT2.mds");
		Mdl_ApplyOverlayMds(slf, "humans_CBowT2.mds");
	};

	// Aktualizacja HP.
	hp_max = slf.attribute[ATR_HITPOINTS_MAX];
	hp = slf.attribute[ATR_HITPOINTS];
	slf.attribute[ATR_HITPOINTS] = hp + (slf.attribute[ATR_HITPOINTS_MAX] - hp_max);
};

