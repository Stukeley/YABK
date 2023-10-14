// Uczony Niebieskiego Obozu

instance DJG_2004_MAGIER(Npc_Default)
{
	name[0] = NPCNAME_GELEHRTER;
	guild = GIL_NONE;
	id = 2004;
	voice = 6;
	npcType = npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	if(LAGER == 2)
	{
		aivar[91] = TRUE;
	};
	B_SetAttributesToChapter(self,3);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_mage.mds");
	if(FRAKTION_L2 == DJG)
	{
	name[0] = "Saturas";
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_B_Saturas, BodyTex_B, ITAR_KDW_H);	
	}
	else if(FRAKTION_L2 == PAL || FRAKTION_L2 == PCH)
	{
	name[0] = "Pyrokar";
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face_N_ImportantOld , BodyTex_N, ITAR_Dummy_MAGE_3);	
	}
	else if(FRAKTION_L2 == TMP)
	{
		name[0] = "Y'Berion";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face_N_YBerion, BodyTex_P,itar_gur_l);
	}
	else if (FRAKTION_L2 == ORC)
	{
		name[0] = "Urshak";
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyShaman",DEFAULT,DEFAULT,"Orc_HeadShaman",DEFAULT,DEFAULT,-1);
	}
	else if(FRAKTION_L2 == SKE)
	{
		name[0] = "Czarny Mag";
		B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_MadPsi,BodyTex_N,ITAR_Xardas);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 20;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_2004;
};


func void Rtn_Start_2004()
{
	TA_Stand_WP(8,0,23,0,"L2_MAGIE_02");
	TA_Stand_WP(23,0,8,0,"L2_MAGIE_02");
};

func void rtn_alchemie_2004()
{
	TA_Potion_Alchemy(8,0,23,0,"L2_MAGIE_ALCHEMIE");
	TA_Potion_Alchemy(23,0,8,0,"L2_MAGIE_ALCHEMIE");
};

func void rtn_runentisch_2004()
{
	ta_makerune(8,0,23,0,"L2_MAGIE_RUNENTISCH");
	ta_makerune(23,0,8,0,"L2_MAGIE_RUNENTISCH");
};

func void rtn_buch_2004()
{
	TA_Read_Bookstand(8,0,23,0,"L2_MAGIE_BUCH");
	TA_Read_Bookstand(23,0,8,0,"L2_MAGIE_BUCH");
};

