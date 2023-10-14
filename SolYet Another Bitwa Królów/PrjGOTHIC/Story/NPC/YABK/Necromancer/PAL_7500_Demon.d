// Prawdopodobnie cos zwiazanego z kopalnia na Mapie 3

instance PAL_7500_Demon(Npc_Default)
{
	name[0] = "Demon";
	guild = GIL_MIL;
	voice = 6;
	npcType = npctype_main;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,0);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,0);
	Mdl_SetVisual(self,"Demon.mds");
	Mdl_SetVisualBody(self,"Dem_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	aivar[97] = 5;
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	senses_range = 2500;
	B_SetAttributesToChapter(self,2);
	B_SetFightSkills(self,40);
	fight_tactic = FAI_HUMAN_NORMAL;
	EquipItem(self,itmw_sword_sk);
	id = 7500;
	daily_routine = rtn_lager1_7500;
};


func void rtn_lager1_7500()
{
	TA_RunToWP(8,0,23,0,"L1_KING_01");
	TA_RunToWP(23,0,8,0,"L1_KING_01");
};

func void rtn_tot_7500()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

func void rtn_Demon_7500()
{
	TA_Stand_WP(8,0,23,0,"L2_KING_02");
	TA_Stand_WP(23,0,8,0,"L2_KING_02");
};

