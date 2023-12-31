// Najemnik Czerwonego Obozu
// Uwzglednia kazdy typ najemnika

instance PAL_1140_SOELDNER(Npc_Default)
{
	B_SetMercAbilities(self,GIL_PAL,L1_CURRENT_MERCLEVEL);
	id = 1140;
	daily_routine = rtn_lager1_1140;
};


func void rtn_lager1_1140()
{
	TA_RunToWP(8,0,23,0,"L1_KING_01");
	TA_RunToWP(23,0,8,0,"L1_KING_01");
};

func void rtn_l1ebene1_1140()
{
	TA_RunToWP(8,0,23,0,"PASS_17");
	TA_RunToWP(23,0,8,0,"PASS_17");
};

func void rtn_l1ebene2_1140()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_04");
	TA_RunToWP(23,0,8,0,"L1_LAGER_04");
};

func void rtn_pass_1140()
{
	TA_RunToWP(8,0,23,0,"PASS_01");
	TA_RunToWP(23,0,8,0,"PASS_01");
};

func void rtn_l2ebene1_1140()
{
	TA_RunToWP(8,0,23,0,"PASS_27");
	TA_RunToWP(23,0,8,0,"PASS_27");
};

func void rtn_l2ebene2_1140()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_04");
	TA_RunToWP(23,0,8,0,"L2_LAGER_04");
};

func void rtn_lager2_1140()
{
	TA_RunToWP(8,0,23,0,"L2_KING_01");
	TA_RunToWP(23,0,8,0,"L2_KING_01");
};

func void rtn_tot_1140()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

func void rtn_map2_weg1_1_1140()
{
	TA_RunToWP(8,0,23,0,"WEG1_1_02");
	TA_RunToWP(23,0,8,0,"WEG1_1_02");
};

func void rtn_map2_weg1_2_1140()
{
	TA_RunToWP(8,0,23,0,"WEG1_2_02");
	TA_RunToWP(23,0,8,0,"WEG1_2_02");
};

func void rtn_map2_weg2_1_1_1140()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_04");
	TA_RunToWP(23,0,8,0,"L1_LAGER_04");
};

func void rtn_map2_weg2_1_2_1140()
{
	TA_RunToWP(8,0,23,0,"WEG2_1_03");
	TA_RunToWP(23,0,8,0,"WEG2_1_03");
};

func void rtn_map2_weg2_2_1_1140()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_04");
	TA_RunToWP(23,0,8,0,"L2_LAGER_04");
};

func void rtn_map2_weg2_2_2_1140()
{
	TA_RunToWP(8,0,23,0,"WEG2_2_03");
	TA_RunToWP(23,0,8,0,"WEG2_2_03");
};

func void rtn_varusmap_lager1_1_1140()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_03");
	TA_RunToWP(23,0,8,0,"L1_LAGER_03");
};

func void rtn_varusmap_lager1_2_1140()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_19");
	TA_RunToWP(23,0,8,0,"L1_LAGER_19");
};

func void rtn_varusmap_lager1_3_1140()
{
	TA_RunToWP(8,0,23,0,"L1_LAGER_25");
	TA_RunToWP(23,0,8,0,"L1_LAGER_25");
};

func void rtn_varusmap_lager2_3_1140()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_25");
	TA_RunToWP(23,0,8,0,"L2_LAGER_25");
};

func void rtn_varusmap_lager2_2_1140()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_19");
	TA_RunToWP(23,0,8,0,"L2_LAGER_19");
};

func void rtn_varusmap_lager2_1_1140()
{
	TA_RunToWP(8,0,23,0,"L2_LAGER_03");
	TA_RunToWP(23,0,8,0,"L2_LAGER_03");
};

