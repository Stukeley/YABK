// Straznik Na Drodze do Niebieskiego Obozu

instance DJG_2161_WACHE(Npc_Default)
{
	b_setwachenabilities(self,GIL_DJG);
	id = 2161;
	daily_routine = rtn_start_2161;
};


func void rtn_start_2161()
{
	TA_RunToWP(8,0,23,0,"L2_WACHE_02");
	TA_RunToWP(23,0,8,0,"L2_WACHE_02");
};

func void rtn_tot_2161()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

