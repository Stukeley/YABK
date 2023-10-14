

instance VLK_501_Baltram(Npc_Default)
{
	name[0] = "Baltram";
	guild = GIL_NONE;
	id = 501;
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
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Weak_Markus_Kark, BodyTex_N, ITAR_VLK_M);	
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	EquipItem(self,ItMw_Nagelknueppel);
	B_CreateAmbientInv 	(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_501;
};


func void Rtn_Start_501()
{
	TA_Stand_ArmsCrossed  (8,0,23,0,"L2_TRADER_003");
	TA_Stand_ArmsCrossed  (23,0,8,0,"L2_TRADER_003");
};
func void Rtn_Thief_501()
{
	TA_Smalltalk  (8,0,23,0,"L2_TRADER_003");
	TA_Smalltalk  (23,0,8,0,"L2_TRADER_003");
};


