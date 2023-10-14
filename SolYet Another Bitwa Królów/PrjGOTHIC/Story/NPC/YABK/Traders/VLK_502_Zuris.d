

instance VLK_502_Zuris(Npc_Default)
{
	name[0] = "Zuris";
	guild = GIL_NONE;
	id = 502;
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
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Psionic", Face_N_ImportantGrey, BodyTex_N, ITAR_VLK_M);	
	Mdl_SetModelFatness	(self, 0.9);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds"); 
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	EquipItem(self,ItMw_Nagelknueppel);
	B_CreateAmbientInv 	(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_502;
};


func void Rtn_Start_502()
{
	TA_Stand_ArmsCrossed  (8,0,23,0,"L2_TRADER_001");
	TA_Stand_ArmsCrossed  (23,0,8,0,"L2_TRADER_001");
};

func void Rtn_Thief_502()
{
	TA_Smalltalk  (8,0,23,0,"L2_TRADER_001");
	TA_Smalltalk  (23,0,8,0,"L2_TRADER_001");
};

