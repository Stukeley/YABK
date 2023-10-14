
instance VLK_554_Trader (Npc_Default)
{
	// ------ NSC ------
	name 		= "Sara"; 
	guild 		= GIL_VLK;
	id 			= 554;
	voice 		= 13;
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
	fight_tactic		= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------																
	EquipItem	(self, ItMw_1h_VLK_Sword); 
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe", FaceBabe_N_Blondie, BodyTexBabe_N, ITAR_VlkBabe_L);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 
	
	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_554;
};

FUNC VOID Rtn_Start_554 ()
{	
	TA_Stand_ArmsCrossed 		 (08,00,22,00,"L1_TRADER_003");	 
    TA_Stand_ArmsCrossed		 (22,00,08,00,"L1_TRADER_003");
};
FUNC VOID Rtn_Thief_554 ()
{	
	TA_Smalltalk 		 (08,00,22,00,"L1_TRADER_003");	 
    TA_Smalltalk		 (22,00,08,00,"L1_TRADER_003");
};
