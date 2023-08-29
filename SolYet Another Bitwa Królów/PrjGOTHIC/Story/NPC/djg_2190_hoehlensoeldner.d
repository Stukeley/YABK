// Prawdopodobnie cos zwiazanego ze szkieletami na Mapie 3

instance DJG_2190_HOEHLENSOELDNER(Npc_Default)
{
	name[0] = NPCNAME_HOEHLENMERC_DJG;
	guild = GIL_SLD;
	voice = 6;
	npcType = npctype_main;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,0);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,0);
	if(FRAKTION_L2 == DJG)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_P_Normal02,BodyTex_P,itar_djg_l);
	}
	else if(FRAKTION_L2 == Pal)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_P_Normal02,BodyTex_P,ItAr_PAL_M);
	}
	else if(FRAKTION_L2 == TMP)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_P_Normal02,BodyTex_P,itar_tmp_m);
	}
	else if(FRAKTION_L2 == SKE)
	{
		b_setskelettvisual(self,3);
	};
	if(L2_UNSTERBLICHKEIT == TRUE)
	{
		flags = NPC_FLAG_IMMORTAL;
	};
	aivar[97] = 4;
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	senses_range = 2500;
	B_SetAttributesToChapter(self,4);
	B_SetFightSkills(self,60);
	fight_tactic = FAI_HUMAN_STRONG;
	EquipItem(self,itmw_langschwert_sk);
	id = 2190;
	daily_routine = rtn_lager2_2190;
};


func void rtn_lager2_2190()
{
	TA_RunToWP(8,0,23,0,"L2_KING_01");
	TA_RunToWP(23,0,8,0,"L2_KING_01");
};

func void rtn_tot_2190()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

func void rtn_hoehle_2190()
{
	TA_Stand_WP(8,0,23,0,"HOEHLE");
	TA_Stand_WP(23,0,8,0,"HOEHLE");
};

