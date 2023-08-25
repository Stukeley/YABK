
instance DJG_2160_WACHE(Npc_Default)
{
	b_setwachenabilities(self,GIL_DJG);
	id = 2160;
	daily_routine = rtn_start_2160;
};


func void rtn_start_2160()
{
	TA_RunToWP(8,0,23,0,"L2_WACHE_01");
	TA_RunToWP(23,0,8,0,"L2_WACHE_01");
};

func void rtn_tot_2160()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

