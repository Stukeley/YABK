// Prawdopodobnie cos zwiazanego z kopalnia na Mapie 3

instance PAL_1180_MINENSOELDNER(Npc_Default)
{
	name[0] = NPCNAME_MINENWACHE_PAL;
	guild = GIL_MIL;
	voice = 6;
	npcType = npctype_main;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,0);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,0);
	if(FRAKTION_L1 == DJG)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_P_NormalBald,BodyTex_P,itar_sld_M);
	}
	else if(FRAKTION_L1 == Pal)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_P_NormalBald,BodyTex_P,ItAr_MIL_M);
	}
	else if(FRAKTION_L1 == TMP)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_P_NormalBald,BodyTex_P,itar_tmp_l);
	}
	else if(FRAKTION_L1 == SKE)
	{
		B_SetSkelettVisual(self,2);
	};
	if(L1_UNSTERBLICHKEIT == TRUE)
	{
		flags = NPC_FLAG_IMMORTAL;
	};
	aivar[97] = 3;
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	senses_range = 2500;
	B_SetAttributesToChapter(self,2);
	B_SetFightSkills(self,40);
	fight_tactic = FAI_HUMAN_NORMAL;
	EquipItem(self,itmw_sword_sk);
	id = 1180;
	daily_routine = rtn_lager1_1180;
};


func void rtn_lager1_1180()
{
	TA_RunToWP(8,0,23,0,"L1_KING_01");
	TA_RunToWP(23,0,8,0,"L1_KING_01");
};

func void rtn_tot_1180()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

func void rtn_mine_1180()
{
	TA_Stand_WP(8,0,23,0,"MINE");
	TA_Stand_WP(23,0,8,0,"MINE");
};

