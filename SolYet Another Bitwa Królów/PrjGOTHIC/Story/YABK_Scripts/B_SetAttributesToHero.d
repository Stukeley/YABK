// Ustawianie statystyk dla bohatera
// [Balans]

func void B_SetAttributesToHero(var C_Npc slf, var int kap)
{
	// MANA
	slf.attribute[ATR_MANA_MAX] = 1000;
	slf.aivar[REAL_MANA_MAX] = 1000;
	slf.attribute[ATR_MANA] = 1000;

	// LVL
	slf.level = 30 + 10 * kap;

	if (kap > 3)
	{
		// SI£A
		slf.attribute[ATR_STRENGTH] = 200 + kap * 40;
		slf.aivar[REAL_STRENGTH] = 200 + kap * 40;
		// ZRÊCZNOŒÆ
		slf.attribute[ATR_DEXTERITY] = 200 + kap * 40;
		slf.aivar[REAL_DEXTERITY] = 200 + kap * 40;
		// HP
		slf.attribute[ATR_HITPOINTS_MAX] = 400 + kap * 150;
		slf.attribute[ATR_HITPOINTS] = 400 + kap * 150;
	}
	else
	{
		// SI£A
		slf.attribute[ATR_STRENGTH] = 150 + kap * 25;
		slf.aivar[REAL_STRENGTH] = 150 + kap * 25;
		// ZRÊCZNOŒÆ
		slf.attribute[ATR_DEXTERITY] = 150 + kap * 25;
		slf.aivar[REAL_DEXTERITY] = 150 + kap * 25;
		// HP
		slf.attribute[ATR_HITPOINTS_MAX] = 400 + kap * 120;
		slf.attribute[ATR_HITPOINTS] = 400 + kap * 120;
	};

	slf.exp = 500 * ((slf.level + 1) / 2) * (slf.level + 1);
	slf.exp_next = 500 * ((slf.level + 2) / 2) * (slf.level + 1);
};