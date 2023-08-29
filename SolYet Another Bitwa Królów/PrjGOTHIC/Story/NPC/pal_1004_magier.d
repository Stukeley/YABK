// Uczony Czerwonego Obozu

instance PAL_1004_MAGIER(Npc_Default)
{
	name[0] = NPCNAME_GELEHRTER;
	guild = GIL_NONE;
	id = 1004;
	voice = 6;
	npcType = npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	if(LAGER == 1)
	{
		aivar[91] = TRUE;
	};
	B_SetAttributesToChapter(self,3);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_mage.mds");
	if(FRAKTION_L1 == DJG)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,ITAR_KDW_L_Addon);
	}
	else if(FRAKTION_L1 == Pal)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,ItAr_KDF_L);
	}
	else if(FRAKTION_L1 == TMP)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_gur_l);
	}
	else if(FRAKTION_L1 == SKE)
	{
		b_setskelettvisual(self,6);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	EquipItem(self,ItMw_Nagelknueppel);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 20;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = rtn_start_1004;
};


func void rtn_start_1004()
{
	TA_Stand_WP(8,0,23,0,"L1_MAGIE_02");
	TA_Stand_WP(23,0,8,0,"L1_MAGIE_02");
};

func void rtn_alchemie_1004()
{
	TA_Potion_Alchemy(8,0,23,0,"L1_MAGIE_ALCHEMIE");
	TA_Potion_Alchemy(23,0,8,0,"L1_MAGIE_ALCHEMIE");
};

func void rtn_runentisch_1004()
{
	ta_makerune(8,0,23,0,"L1_MAGIE_RUNENTISCH");
	ta_makerune(23,0,8,0,"L1_MAGIE_RUNENTISCH");
};

func void rtn_buch_1004()
{
	TA_Read_Bookstand(8,0,23,0,"L1_MAGIE_BUCH");
	TA_Read_Bookstand(23,0,8,0,"L1_MAGIE_BUCH");
};

