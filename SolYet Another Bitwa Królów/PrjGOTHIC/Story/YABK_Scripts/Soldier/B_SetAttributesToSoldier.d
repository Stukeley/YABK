// Ustawianie statystyk Zolnierzy.
// [Balans]

func void B_SetAttributesToSoldier(var C_Npc slf,var int kap)
{
	// LVL
	slf.level = 10 * kap;

	// MANA
	slf.attribute[ATR_MANA_MAX] = 1000;
	slf.aivar[REAL_MANA_MAX] = 1000;
	slf.attribute[ATR_MANA] = 1000;

	// % UMIEJETNOSCI WALKI 
	B_SetFightSkills(slf, 13 * kap);

	if(kap == 1)
	{
		// SILA
		slf.attribute[ATR_STRENGTH] = 10;
		slf.aivar[REAL_STRENGTH] = 10;
		// ZRECZNOSC
		slf.attribute[ATR_DEXTERITY] = 10;
		slf.aivar[REAL_DEXTERITY] = 10;
		// HP
		slf.attribute[ATR_HITPOINTS_MAX] = 40;
		slf.attribute[ATR_HITPOINTS] = 40;
		// 1H TALENT SET
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 0);
	}
	else {
		// SILA
		slf.attribute[ATR_STRENGTH] = 30 * kap;
		slf.aivar[REAL_STRENGTH] = 30 * kap;
		// ZRECZNOSC
		slf.attribute[ATR_DEXTERITY] = 30 * kap;
		slf.aivar[REAL_DEXTERITY] = 30 * kap;
		// HP
		slf.attribute[ATR_HITPOINTS_MAX] = 40 + 120 * kap;
		slf.attribute[ATR_HITPOINTS] =  40 + 120 * kap;
		// 1H TALENT SET
		if(kap <= 3) {
			Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
		}
		else {
			Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
		};

	};

	// FIGHT TACTIC 
	if(kap <= 2) {
		slf.fight_tactic = FAI_HUMAN_COWARD;
	}
	else if (kap <= 4) {
		slf.fight_tactic = FAI_HUMAN_NORMAL;
	}
	else if (kap <=6) {
		slf.fight_tactic = FAI_HUMAN_STRONG;
	}
	else {
		slf.fight_tactic = FAI_HUMAN_MASTER;
	};

	slf.exp = 500 * ((slf.level + 1) / 2) * (slf.level + 1);
	slf.exp_next = 500 * ((slf.level + 2) / 2) * (slf.level + 1);
};

