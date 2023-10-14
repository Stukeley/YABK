

instance PAL_3304_Mage(Npc_Default)
{
	guild = GIL_NONE;
	id = 3304;
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
		name[0] = "Merdarion";
		B_SetNpcVisual(self, MALE, "Hum_Head_Thief", Face_P_NormalBart_Nefarius, BodyTex_P, ITAR_Dummy_MAGE_2 );
	}
	else if(FRAKTION_L2 == PAL || FRAKTION_L2 == PCH)
	{
		name[0] = "Gorax";
		B_SetNpcVisual (self, MALE, "Hum_Head_FatBald",Face_N_OldBald_Jeremiah, BodyTex_N,ITAR_Dummy_MAGE_1);
	}
	else if(FRAKTION_L2 == TMP)
	{
		name[0] = "Baal Tyon";	
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face_N_NormalBart_Graham, BodyTex_P,ITAR_Dummy_MAGE_5);
	}
	else if(FRAKTION_L2 == SKE || FRAKTION_L2 == ORC)
	{
		name[0] = "Poszukiwacz";		
		B_SetNpcVisual(self, MALE, "Hum_Head_Bald", Face_N_MadPsi, BodyTex_N, ITAR_Dementor);	
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_CreateAmbientInv 	(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_3304;
};


func void Rtn_Start_3304()
{
	TA_Potion_Alchemy  (8,0,23,0,"L2_MAGIE_09");
	TA_Potion_Alchemy  (23,0,8,0,"L2_MAGIE_09");
};


