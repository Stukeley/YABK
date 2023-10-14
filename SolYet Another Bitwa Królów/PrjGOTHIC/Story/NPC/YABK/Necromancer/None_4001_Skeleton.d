

instance NONE_4001_Skeleton(Npc_Default)
{	
	daily_routine = rtn_lager1_4001;
	B_SetSoldierAbilities(self,GIL_DJG);
	id = 4001;
	voice = 6;
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	senses_range = 2000;
	name[0] = "Szkielet";
	B_SetAttributesToChapter(self,1);
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
	Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
	Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
	Mdl_SetVisualBody(self,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	EquipItem(self, ItMw_2H_Skeleton_1);
	
};


func void rtn_lager1_4001()
{
	TA_RunToWP(8,0,23,0,"NECROMANCER_02");
	TA_RunToWP(23,0,8,0,"NECROMANCER_02");
};

func void rtn_l1ebene2_4001()
{
	TA_RunToWP(8,0,23,0,"WAY_003");
	TA_RunToWP(23,0,8,0,"WAY_003");
};

func void rtn_l1ebene1_4001()
{
	TA_RunToWP(8,0,23,0,"PASS_15");
	TA_RunToWP(23,0,8,0,"PASS_15");
};

func void rtn_pass_4001()
{
	TA_RunToWP(8,0,23,0,"PASS_17");
	TA_RunToWP(23,0,8,0,"PASS_17");
};

func void rtn_l2ebene1_4001()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_04");
	TA_RunToWP(23,0,8,0,"L1_LAGER_04");
};

func void rtn_l2ebene2_4001()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_01");
	TA_RunToWP(23,0,8,0,"L1_LAGER_01");
};

func void rtn_lager2_4001()
{
	TA_RunToWP(8,0,23,0,"L1_KING_01");
	TA_RunToWP(23,0,8,0,"L1_KING_01");
};

func void rtn_tot_4001()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};


