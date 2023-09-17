// Ustawianie statystyk Maga.
// [Balans]

func void B_SetAttributesToMage(var C_Npc slf, var int kap)
{

	if (kap == TRUE)
	{
		slf.level = 20;
		slf.attribute[ATR_STRENGTH] = 100;
		slf.aivar[REAL_STRENGTH] = 100;
		slf.attribute[ATR_DEXTERITY] = 100;
		slf.aivar[REAL_DEXTERITY] = 100;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 280;
		slf.attribute[ATR_HITPOINTS] = 280;
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else
	{
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 175;
		slf.aivar[REAL_STRENGTH] = 175;
		slf.attribute[ATR_DEXTERITY] = 175;
		slf.aivar[REAL_DEXTERITY] = 175;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 630;
		slf.attribute[ATR_HITPOINTS] = 630;
		slf.fight_tactic = FAI_HUMAN_NORMAL;
	};

	slf.exp = 500 * ((slf.level + 1) / 2) * (slf.level + 1);
	slf.exp_next = 500 * ((slf.level + 2) / 2) * (slf.level + 1);
};

