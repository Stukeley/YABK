// Budowniczy Domu Magow Niebieskiego Obozu

instance DJG_2005_MAGIEBAUER(Npc_Default)
{
	guild = GIL_NONE;
	id = 2005;
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
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face_N_YBerion, BodyTex_P,ITAR_Dummy_MAGE_6);
	}
	else if(FRAKTION_L2 == SKE || FRAKTION_L2 == ORC)
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
	daily_routine = Rtn_Start_2005;
};


func void Rtn_Start_2005()
{
	TA_Stand_WP(8,0,23,0,"L2_MAGIE_01");
	TA_Stand_WP(23,0,8,0,"L2_MAGIE_01");
};

func void rtn_tot_2005()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

