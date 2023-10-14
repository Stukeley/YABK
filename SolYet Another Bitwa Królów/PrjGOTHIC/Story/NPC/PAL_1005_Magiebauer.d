// Budowniczy Domu Magow Czerwonego Obozu

instance PAL_1005_MAGIEBAUER(Npc_Default)
{
	name[0] = NPCNAME_MAGIEBAUER;
	guild = GIL_NONE;
	id = 1005;
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
	name[0] = "Saturas";
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_B_Saturas, BodyTex_B, ITAR_KDW_H);	
	}
	else if(FRAKTION_L1 == PAL || FRAKTION_L1 == PCH)
	{
	name[0] = "Pyrokar";
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face_N_ImportantOld , BodyTex_N, ITAR_Dummy_MAGE_3);	
	}
	else if(FRAKTION_L1 == TMP)
	{
		name[0] = "Y'Berion";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face_N_YBerion, BodyTex_P,itar_gur_l);
	}
	else if(FRAKTION_L1 == SKE || FRAKTION_L1 == ORC)
	{
		name[0] = "Czarny Mag";
		B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_MadPsi,BodyTex_N,ITAR_Xardas);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = rtn_start_1005;
};


func void rtn_start_1005()
{
	TA_Stand_WP(8,0,23,0,"L1_MAGIE_01");
	TA_Stand_WP(23,0,8,0,"L1_MAGIE_01");
};

func void rtn_tot_1005()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

