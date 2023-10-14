
instance VLK_5006_Prisoner (Npc_Default)
{
	// ------ NSC ------
	name 		= "Kopacz";
	guild 		= GIL_OUT;
	id 			= 5006;
	voice 		= 5;
	flags       = 0;							
	npctype		= NPCTYPE_MAIN;
	
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self,2);
	// ------ Kampf-Taktik ------
	fight_tactic	= FAI_HUMAN_STRONG;	
	
	// ------ Equippte Waffen ------			
	EquipItem (self, ItMw_2H_Axe_L_01);
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
	// ------ visuals ------					
	
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_NormalBart06, BodyTex_N, ITAR_Prisoner);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds"); 
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------				
	B_SetFightSkills (self, 40); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_5006;
};

FUNC VOID Rtn_Start_5006 ()
{	
	TA_Pick_Ore	 (08,00,23,00,"MINE_ORE_008");
    TA_Pick_Ore	 (23,00,08,00,"MINE_ORE_008");
 
};
