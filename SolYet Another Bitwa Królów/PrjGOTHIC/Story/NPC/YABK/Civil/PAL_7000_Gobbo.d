

instance PAL_7000_Gobbo(Npc_Default)
{
	name[0] = "Gobbo";
	guild = GIL_NONE;
	id = 7000;
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
	Mdl_SetVisual(self,"Gobbo.mds");
	Mdl_SetVisualBody(self,"Gob_Body",0,DEFAULT,"",DEFAULT,DEFAULT,-1);
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	EquipItem(self,ItMw_Nagelknueppel);
	B_CreateAmbientInv 	(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_7000;
};


func void Rtn_Start_7000()
{
	TA_Potion_Alchemy  (8,0,23,0,"L2_MAGIE_09");
	TA_Potion_Alchemy  (23,0,8,0,"L2_MAGIE_09");
};


