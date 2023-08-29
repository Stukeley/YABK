// Mag Niebieskiego Obozu

instance DJG_2120_MAGIER(Npc_Default)
{
	b_setmageabilities(self,GIL_DJG);
	id = 2120;
	daily_routine = rtn_lager2_2120;
};


func void rtn_lager1_2120()
{
	TA_RunToWP(8,0,23,0,"L1_KING_01");
	TA_RunToWP(23,0,8,0,"L1_KING_01");
};

func void rtn_l1ebene2_2120()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_04");
	TA_RunToWP(23,0,8,0,"L1_LAGER_04");
};

func void rtn_l1ebene1_2120()
{
	TA_RunToWP(8,0,23,0,"PASS_17");
	TA_RunToWP(23,0,8,0,"PASS_17");
};

func void rtn_pass_2120()
{
	TA_RunToWP(8,0,23,0,"PASS_01");
	TA_RunToWP(23,0,8,0,"PASS_01");
};

func void rtn_l2ebene1_2120()
{
	TA_RunToWP(8,0,23,0,"PASS_27");
	TA_RunToWP(23,0,8,0,"PASS_27");
};

func void rtn_l2ebene2_2120()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_04");
	TA_RunToWP(23,0,8,0,"L2_LAGER_04");
};

func void rtn_lager2_2120()
{
	TA_RunToWP(8,0,23,0,"L2_KING_01");
	TA_RunToWP(23,0,8,0,"L2_KING_01");
};

func void rtn_tot_2120()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

func void rtn_map2_weg1_1_2120()
{
	TA_RunToWP(8,0,23,0,"WEG1_1_02");
	TA_RunToWP(23,0,8,0,"WEG1_1_02");
};

func void rtn_map2_weg1_2_2120()
{
	TA_RunToWP(8,0,23,0,"WEG1_2_02");
	TA_RunToWP(23,0,8,0,"WEG1_2_02");
};

func void rtn_map2_weg2_1_1_2120()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_04");
	TA_RunToWP(23,0,8,0,"L1_LAGER_04");
};

func void rtn_map2_weg2_1_2_2120()
{
	TA_RunToWP(8,0,23,0,"WEG2_1_03");
	TA_RunToWP(23,0,8,0,"WEG2_1_03");
};

func void rtn_map2_weg2_2_1_2120()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_04");
	TA_RunToWP(23,0,8,0,"L2_LAGER_04");
};

func void rtn_map2_weg2_2_2_2120()
{
	TA_RunToWP(8,0,23,0,"WEG2_2_03");
	TA_RunToWP(23,0,8,0,"WEG2_2_03");
};

func void rtn_varusmap_lager1_1_2120()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_03");
	TA_RunToWP(23,0,8,0,"L1_LAGER_03");
};

func void rtn_varusmap_lager1_2_2120()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_19");
	TA_RunToWP(23,0,8,0,"L1_LAGER_19");
};

func void rtn_varusmap_lager1_3_2120()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_25");
	TA_RunToWP(23,0,8,0,"L1_LAGER_25");
};

func void rtn_varusmap_lager2_3_2120()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_25");
	TA_RunToWP(23,0,8,0,"L2_LAGER_25");
};

func void rtn_varusmap_lager2_2_2120()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_19");
	TA_RunToWP(23,0,8,0,"L2_LAGER_19");
};

func void rtn_varusmap_lager2_1_2120()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_03");
	TA_RunToWP(23,0,8,0,"L2_LAGER_03");
};

