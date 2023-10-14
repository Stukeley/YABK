instance PAL_2306_NOV(Npc_Default)
{
	name[0] = "Nowicjusz";
	guild = GIL_NONE;
	id = 2306;
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
	B_SetAttributesToChapter(self,4);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	EquipItem(self,ItMw_1h_Nov_Mace);
	var int Face;
	Face = Hlp_Random(20);
	Face = Face+65;
	if(FRAKTION_L1 == DJG)
	{
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face, BodyTex_P, Itar_Mages_Water_1 );
	}
	else if(FRAKTION_L1 == PAL || FRAKTION_L1 == PCH)
	{
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face, BodyTex_N,Itar_Mages_Fire_1);
	}
	else if(FRAKTION_L1 == TMP)
	{	
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald",Face, BodyTex_P,Itar_Mages_Swamp_1);
	}
	else if(FRAKTION_L1 == SKE || FRAKTION_L1 == ORC)
	{	
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face, BodyTex_N, Itar_Mages_Dark_1);	
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_2306;	

};


func void Rtn_Start_2306()
{
	TA_Smalltalk  (8,0,23,0,"L1_NOV_000");
	TA_Smalltalk  (23,0,8,0,"L1_NOV_000");
};


