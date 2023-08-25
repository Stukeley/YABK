
prototype Npc_Default(C_Npc)
{
	attribute[ATR_STRENGTH] = 10;
	aivar[REAL_STRENGTH] = 10;
	attribute[ATR_DEXTERITY] = 10;
	aivar[REAL_DEXTERITY] = 10;
	attribute[ATR_MANA_MAX] = 10;
	aivar[REAL_MANA_MAX] = 10;
	attribute[ATR_MANA] = 10;
	attribute[ATR_HITPOINTS_MAX] = 40;
	attribute[ATR_HITPOINTS] = 40;
	HitChance[NPC_TALENT_1H] = 0;
	HitChance[NPC_TALENT_2H] = 0;
	HitChance[NPC_TALENT_BOW] = 0;
	HitChance[NPC_TALENT_CROSSBOW] = 0;
	protection[PROT_EDGE] = 0;
	protection[PROT_BLUNT] = 0;
	protection[PROT_POINT] = 0;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	protection[PROT_FLY] = 0;
	damagetype = DAM_BLUNT;
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = PERC_DIST_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_SHORT;
	aivar[AIV_FightDistCancel] = FIGHT_DIST_CANCEL;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[94] = 0;
	bodyStateInterruptableOverride = FALSE;
};

