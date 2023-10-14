
instance VLK_504_Kajma (Npc_Default)
{
	// ------ NSC ------
	name 		= "Nadja";	
	guild 		= GIL_VLK;
	id 			= 504;
	voice 		= 16;
	flags       = 0;																
	npctype		= NPCTYPE_MAIN;
	
	//-----------AIVARS----------------
	aivar[AIV_ToughGuy] = TRUE; 
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_COWARD;	
	
	// ------ Equippte Waffen ------																	
	
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------																			
	B_SetNpcVisual 		(self, FEMALE, "Hum_Head_Babe8", FaceBabe_N_Hure, BodyTex_N, ITAR_VlkBabe_H);	
	Mdl_SetModelFatness	(self,0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																	
	B_SetFightSkills (self, 30); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_504;
};

FUNC VOID Rtn_Start_504 () // Nadja hält sich für gewöhnlich unten auf...
{	
	TA_Dance	(05,00,17,00,"L2_TRADER_008");
	TA_Dance	(17,00,21,00,"L2_TRADER_008");
	TA_Dance	(21,00,21,30,"L2_TRADER_008");
    TA_Dance	(21,30,05,00,"L2_TRADER_008");
};
