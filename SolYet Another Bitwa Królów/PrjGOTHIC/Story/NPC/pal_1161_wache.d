
instance PAL_1161_WACHE(Npc_Default)
{
	b_setwachenabilities(self,GIL_PAL);
	id = 1161;
	daily_routine = rtn_start_1161;
};


func void rtn_start_1161()
{
	TA_RunToWP(8,0,23,0,"L1_WACHE_02");
	TA_RunToWP(23,0,8,0,"L1_WACHE_02");
};

func void rtn_tot_1161()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

