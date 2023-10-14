

instance NONE_8100_INQUISITOR(Npc_Default)
{
	guild = GIL_NONE;
	id = 8100;
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
	B_SetAttributesToChapter(self,6);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	var int Face;
	Face = Hlp_Random(20);
	Face = Face+65;
	name[0] = "Wielki Inkwizytor";
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face,BodyTex_N,Itar_Inquisition_3);
	EquipItem(self,ITMW_Inquisition_1);
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_8100;
};


func void Rtn_Start_8100()
{
	TA_Stand_Guarding (8,0,23,0,"INQUISITION_START");
	TA_Stand_Guarding (23,0,8,0,"INQUISITION_START");
};


