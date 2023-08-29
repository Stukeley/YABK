
instance DJG_2070_MINENARBEITERSOELDNER(Npc_Default)
{
	name[0] = NPCNAME_MINENARBEITER_DJG;
	guild = GIL_SLD;
	id = 2070;
	voice = 6;
	npcType = NPC_FLAG_GHOST | npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	aivar[97] = 3;
	if(L2_UNSTERBLICHKEIT == TRUE)
	{
		flags = NPC_FLAG_IMMORTAL;
	};
	B_SetAttributesToChapter(self,1);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	if(FRAKTION_L2 == DJG)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_djg_prisoner);
	}
	else if(FRAKTION_L2 == Pal)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_pal_prisoner);
	}
	else if(FRAKTION_L2 == TMP)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_tmp_prisoner);
	}
	else if(FRAKTION_L2 == SKE)
	{
		B_SetSkelettVisual(self,1);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	EquipItem(self,ItMw_2H_Axe_L_01);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_2070;
};


func void Rtn_Start_2070()
{
	TA_RunToWP(8,0,23,0,"L2_KING_01");
	TA_RunToWP(23,0,8,0,"L2_KING_01");
};

func void rtn_tot_2070()
{
	TA_Pick_Ore(8,0,23,0,"TOT");
	TA_Pick_Ore(23,0,8,0,"TOT");
};

func void rtn_mine_2070()
{
	TA_Pick_Ore(8,0,23,0,"MINE");
	TA_Pick_Ore(23,0,8,0,"MINE");
};

