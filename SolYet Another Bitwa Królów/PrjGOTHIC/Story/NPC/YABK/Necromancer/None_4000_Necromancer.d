

instance NONE_4000_NECROMANCER(Npc_Default)
{
	guild = GIL_NONE;
	id = 4000;
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
	name[0] = "Nekromanta";
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_P_Weak_Ulf_Wohlers,BodyTex_Player,ITAR_Dummy_SLD_MAGE_L);
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_4000;
};


func void Rtn_Start_4000()
{
	TA_Read_Bookstand  (8,0,23,0,"NECROMANCER_01");
	TA_Read_Bookstand  (23,0,8,0,"NECROMANCER_01");
};


