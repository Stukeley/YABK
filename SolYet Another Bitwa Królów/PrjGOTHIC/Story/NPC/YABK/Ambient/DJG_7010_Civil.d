

instance DJG_7010_Civil(Npc_Default)
{
	name[0] = "�o�nierz";
	guild = GIL_NONE;
	id = 7010;
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
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,itar_sld_M);
		EquipItem(self,itmw_nagelkeule2);
		EquipItem(self, ItRw_Bow_M_01);
	}
	else if(FRAKTION_L2 == PAL)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,ITAR_Mil_L);
		EquipItem(self,ItMw_Schwert4);
	}
	else if(FRAKTION_L2 == TMP)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,ITAR_TMP_L);
		EquipItem(self,ItMw_2h_Sld_Sword);
	}
	else if(FRAKTION_L1 == ORC){
		B_RandomOrcVisual(self);
	}
	else if (FRAKTION_L2 == SKE)
	{
		Mdl_SetVisual(self,"HumanS.mds");
		Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
		Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
		Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,ITAR_SKEMIL_L);	
		EquipItem(self, itmw_piratensaebel);
	}
	else if (FRAKTION_L2 == ORC){
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyShaman",DEFAULT,DEFAULT,"Orc_HeadShaman",DEFAULT,DEFAULT,-1);
	}
	else if(FRAKTION_L2 == PCH)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,Itar_OldCamp_1);
		EquipItem(self,ItMw_1H_Special_02);
		EquipItem(self, ItRw_Bow_M_01);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_7010;
};


func void Rtn_Start_7010()
{
	TA_Stand_Drinking (8,0,23,0,"L2_AMB_009");
	TA_Stand_Drinking (23,0,8,0,"L2_AMB_009");
};


