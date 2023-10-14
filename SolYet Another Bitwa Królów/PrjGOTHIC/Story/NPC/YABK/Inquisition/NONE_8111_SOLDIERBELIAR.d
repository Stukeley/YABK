instance NONE_8111_SOLDIERBELIAR(Npc_Default)
{
	var int Face;
	Face = Hlp_Random(20);
	Face = Face+65;
	name[0] = "Zakonnik";
	guild = GIL_PAL;
	voice = 6;
	npcType = npctype_main;
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,Itar_Inquisition_3);
	aivar[97] = 5;
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	senses_range = 2500;
		if (L1_SOLDIER_LEVEL == 1)
	{
		B_SetFightSkills(self, 10);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 0);
		fight_tactic = FAI_HUMAN_COWARD;
		slf.level = 10;
		slf.attribute[ATR_STRENGTH] = 50;
		slf.aivar[REAL_STRENGTH] = 50;
		slf.attribute[ATR_DEXTERITY] = 50;
		slf.aivar[REAL_DEXTERITY] = 50;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 10;
		slf.attribute[ATR_HITPOINTS] = 10;
	}
	else if (L1_SOLDIER_LEVEL == 2)
	{
		B_SetFightSkills(self, 30);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
		fight_tactic = FAI_HUMAN_COWARD;
		slf.level = 20;
		slf.attribute[ATR_STRENGTH] = 100;
		slf.aivar[REAL_STRENGTH] = 100;
		slf.attribute[ATR_DEXTERITY] = 100;
		slf.aivar[REAL_DEXTERITY] = 100;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 40;
		slf.attribute[ATR_HITPOINTS] = 40;
	}
	else if (L1_SOLDIER_LEVEL == 3)
	{
		B_SetFightSkills(self, 45);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 1);
		fight_tactic = FAI_HUMAN_NORMAL;
		slf.level = 30;
		slf.attribute[ATR_STRENGTH] = 125;
		slf.aivar[REAL_STRENGTH] = 125;
		slf.attribute[ATR_DEXTERITY] = 125;
		slf.aivar[REAL_DEXTERITY] = 125;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 160;
		slf.attribute[ATR_HITPOINTS] = 160;
	}
	else if (L1_SOLDIER_LEVEL == 4)
	{
		B_SetFightSkills(self, 60);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
		fight_tactic = FAI_HUMAN_NORMAL;
		slf.level = 40;
		slf.attribute[ATR_STRENGTH] = 150;
		slf.aivar[REAL_STRENGTH] = 150;
		slf.attribute[ATR_DEXTERITY] = 150;
		slf.aivar[REAL_DEXTERITY] = 150;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 280;
		slf.attribute[ATR_HITPOINTS] = 280;
	}
	else if (L1_SOLDIER_LEVEL == 5)
	{
		B_SetFightSkills(self, 70);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
		fight_tactic = FAI_HUMAN_STRONG;
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 175;
		slf.aivar[REAL_STRENGTH] = 175;
		slf.attribute[ATR_DEXTERITY] = 175;
		slf.aivar[REAL_DEXTERITY] = 175;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 400;
		slf.attribute[ATR_HITPOINTS] = 400;
	}
	else if (L1_SOLDIER_LEVEL == 6)
	{
		B_SetFightSkills(self, 80);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
		fight_tactic = FAI_HUMAN_STRONG;
		slf.level = 60;
		slf.attribute[ATR_STRENGTH] = 200;
		slf.aivar[REAL_STRENGTH] = 200;
		slf.attribute[ATR_DEXTERITY] = 200;
		slf.aivar[REAL_DEXTERITY] = 200;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 520;
		slf.attribute[ATR_HITPOINTS] = 520;
	}
	else if (L1_SOLDIER_LEVEL == 7)
	{
		B_SetFightSkills(self, 90);
		Npc_SetTalentSkill(self, NPC_TALENT_1H, 2);
		fight_tactic = FAI_HUMAN_MASTER;
		slf.level = 60;
		slf.attribute[ATR_STRENGTH] = 225;
		slf.aivar[REAL_STRENGTH] = 225;
		slf.attribute[ATR_DEXTERITY] = 200;
		slf.aivar[REAL_DEXTERITY] = 200;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 630;
		slf.attribute[ATR_HITPOINTS] = 630;
	};


	if (L1_USED_WEAPON == 1)
	{
		EquipItem(self,ITMW_Zakon_1);
	}
	else if(L1_USED_WEAPON == 2)
	{
		EquipItem(self,ITMW_Zakon_2);
	}
	else if (L1_USED_WEAPON == 3)
	{
		EquipItem(self,ITMW_Zakon_3);
	}
	else if (L1_USED_WEAPON == 4)
	{
		EquipItem(self,ITMW_Zakon_4);
	};

	if (L1_USED_ARMOR == 1)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,Itar_Zakon_1);
	}
	else if (L1_USED_ARMOR == 2)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,Itar_Zakon_2);
	}
	else if (L1_USED_ARMOR == 3)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,Itar_Zakon_3);
	}
	else if(L1_USED_ARMOR == 4)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,Itar_Zakon_4);
	};
	id = 8111;
	daily_routine = rtn_lager1_8111;
};

func void rtn_lager1_8111()
{
	TA_RunToWP(8,0,23,0,"L1_KING_01");
	TA_RunToWP(23,0,8,0,"L1_KING_01");
};

func void rtn_tot_8111()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

func void rtn_lager2_8111()
{
	TA_Stand_WP(8,0,23,0,"L2_KING_02");
	TA_Stand_WP(23,0,8,0,"L2_KING_02");
};

