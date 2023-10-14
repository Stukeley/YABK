

instance PAL_2301_Mage(Npc_Default)
{
	guild = GIL_NONE;
	id = 2301;
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
		name[0] = "Riordian";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_P_NormalBart_Riordian, BodyTex_P, ITAR_Dummy_MAGE_2 );
	}
	else if(FRAKTION_L1 == PAL || FRAKTION_L1 == PCH)
	{
		name[0] = "Marduk";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face_P_OldMan_Gravo, BodyTex_P,ITAR_Dummy_MAGE_1);
	}
	else if(FRAKTION_L1 == TMP)
	{
		name[0] = "Baal Cadar";	
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face_N_NormalBart11, BodyTex_P,ITAR_Dummy_MAGE_5);
	}
	else if(FRAKTION_L1 == SKE || FRAKTION_L1 == ORC)
	{
		name[0] = "Poszukiwacz";		
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_Dementor);	
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_2301;
};


func void Rtn_Start_2301()
{
	TA_Read_Bookstand  (8,0,23,0,"L1_MAGIE_06");
	TA_Read_Bookstand  (23,0,8,0,"L1_MAGIE_06");
};
