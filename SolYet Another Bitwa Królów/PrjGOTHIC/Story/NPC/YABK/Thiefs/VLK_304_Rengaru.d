
instance VLK_304_Rengaru (Npc_Default)
{
	// ------ NSC ------
	name 		= "Rengaru"; 
	guild 		= GIL_VLK;
	id 			= 304;
	voice 		= 7;
	flags       = 0;																
	npcType = NPC_FLAG_GHOST | npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	aivar[91] = TRUE;
	
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);															
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_1h_VLK_Sword); 
	
	
	// ------ Inventory ------
	CreateInvItems (self, ItMi_Gold, 50); //hat er Nagur geklaut! Muss genau 50 im Inv haben M.F. 
		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_ToughBart01, BodyTex_N,ITAR_Dummy_G2P_14);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_304;
};

FUNC VOID Rtn_Start_304()
{	
	TA_Sit_Chair		(08,00,23,00,"THIEF_GUILD_009");
    TA_Sit_Chair		(23,00,08,00,"THIEF_GUILD_009"); 
};



