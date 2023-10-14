// Budowniczy Kuzni Czerwonego Obozu

instance PAL_1001_SCHMIEDEBAUER(Npc_Default)
{

	guild = GIL_NONE;
	id = 1001;
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
	B_SetAttributesToChapter(self,1);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	if(FRAKTION_L1 == DJG)
	{
		name[0] = "Bennet";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_CoolPock, BodyTex_N, ITAR_Smith);	
	}
	else if(FRAKTION_L1 == PAL)
	{
		name[0] = "Harad";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart20, BodyTex_N, ITAR_Smith);	
	}
	else if(FRAKTION_L1 == TMP)
	{
		name[0] = "Kowal";
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_tmp_m);
	}
	else if(FRAKTION_L1 == SKE)
	{	
		name[0] = "Kowal";
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,ITAR_SKEMIL_M);
	}
	else if (FRAKTION_L1 == PCH) 
	{
		name[0] = "Huno";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart_Huno, BodyTex_N, ITAR_SMITH);	
	}
	else if (FRAKTION_L1 == ORC)
	{
		name[0] = "Kowal";
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = rtn_start_1001;
};


func void rtn_start_1001()
{
	TA_Stand_Guarding(8,0,23,0,"L1_SCHMIEDE_03");
	TA_Stand_Guarding(23,0,8,0,"L1_SCHMIEDE_03");
};

func void rtn_tot_1001()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

