
instance VLK_666_SPIELLEITER(Npc_Default)
{
	name[0] = NPCNAME_SPIELLEITER;
	guild = GIL_NONE;
	id = 666;
	voice = 8;
	npcType = npctype_main;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,6);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart_Dusty,BodyTex_N,ITAR_RANGER_Addon);
	Mdl_SetModelFatness(self,0);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_STRONG;
	daily_routine = rtn_start_666;
};


func void rtn_start_666()
{
	TA_Stand_WP(6,0,12,0,"SPIELLEITER");
	TA_Stand_WP(12,0,6,0,"SPIELLEITER");
};

