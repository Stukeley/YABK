// Straznik Obok Czerwonego Obozu

instance PAL_1160_WACHE(Npc_Default)
{
	b_setwachenabilities(self,GIL_PAL);
	id = 1160;
	daily_routine = rtn_start_1160;
};


func void rtn_start_1160()
{
	TA_RunToWP(8,0,23,0,"L1_WACHE_01");
	TA_RunToWP(23,0,8,0,"L1_WACHE_01");
};

func void rtn_tot_1160()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

