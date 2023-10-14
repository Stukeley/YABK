

instance DJG_2206_TRAININGMASTER(Npc_Default)
{
	guild = GIL_NONE;
	id = 2206;
	voice = 6;
	npcType = NPC_FLAG_GHOST | npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,6);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	var int Face;
	Face = Hlp_Random(20);
	Face = Face+65;
	if(FRAKTION_L2 == DJG)
	{
		name[0] = "Cord";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Normal_Cord, BodyTex_N,itar_djg_h);
		EquipItem(self,ItMw_OrkSchlaechter);
	}
	else if(FRAKTION_L2 == PAL)
	{
		name[0] = "Lothar";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Psionic", Face_P_NormalBart_Nefarius, BodyTex_P, ITAR_PAL_H);
		EquipItem(self,ItMw_2H_Blessed_02);
	}
	else if(FRAKTION_L2 == TMP)
	{
		name[0] = "Nauczyciel";
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,itar_tmp_m);
		EquipItem(self,ItMw_2H_Dummy_Pal_1);
	}
	else if (FRAKTION_L2 == SKE)
	{
		name[0] = "Nauczyciel";
		EquipItem(self,Itmw_King_Weapon_SKE);	
		Mdl_SetVisual(self,"HumanS.mds");
		Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
		Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
		Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,ITAR_SKEPAL_M);	
		EquipItem(self, ItMw_2H_Dummy_Pal_1);
	}
	else if(FRAKTION_L2 == PCH)
	{
		name[0] = "Thorus";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_B_Thorus, BodyTex_B,Itar_OldCamp_3);
		EquipItem(self,ItMw_Zweihaender3);
		EquipItem(self,ItRw_Crossbow_L_02);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_2206;
};


func void Rtn_Start_2206()
{
	TA_Stand_Guarding (8,0,23,0,"L2_CAMP_001");
	TA_Stand_Guarding (23,0,8,0,"L2_CAMP_001");
};


