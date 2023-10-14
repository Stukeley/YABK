
instance VLK_302_Attila (Npc_Default)
{
	// ------ NSC ------
	name 		= "Attila";
	guild 		= GIL_VLK;
	id 			= 302;
	voice 		= 9;
	flags       = 0;									//NPC_FLAG_IMMORTAL oder 0
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
	B_SetAttributesToChapter (self, 2);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)
	
	//---------- Aivars ------------------
	aivar[AIV_DropDeadAndKill] = TRUE;
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD
	
	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden
	EquipItem			(self, ItMw_1h_Sld_Axe);
	EquipItem			(self, ItRw_Mil_Crossbow);
	
	// ------ Inventory ------
	CreateInvItem (self, ItKe_ThiefGuildKey_MIS);  // Schlüssel zur geheimen Diebesgilde
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_L_Tough_Santino, BodyTex_L, ITAR_Dummy_G2P_9);	
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abhängig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 30); //Grenzen für Talent-Level liegen bei 30 und 60
	
	// ------ TA ------
	daily_routine 		= Rtn_Start_302;
};

FUNC VOID Rtn_Start_302 ()
{	
	TA_Sit_Chair (04,00,22,00,"THIEF_GUILD_004");	
    TA_Sit_Chair (22,00,04,00,"THIEF_GUILD_004"); 
};
