
func void b_skelettkontrollchange()
{
	if(SKELETONKONTROLL == GIL_DJG)
	{
		if(NONEWS_ON == TRUE)
		{
			Print(PRINT_SKETTHOEHLE_PAL);
		}
		else
		{
			b_message("NEWS_Neutral_SkelettRotesLager");
		};
		Wld_InsertNpc(pal_skeleton,"HOEHLE");
		SKELETONKONTROLL = GIL_PAL;
	}
	else if(SKELETONKONTROLL == GIL_PAL)
	{
		if(NONEWS_ON == TRUE)
		{
			Print(PRINT_SKETTHOEHLE_DJG);
		}
		else
		{
			b_message("NEWS_Neutral_SkelettBlauesLager");
		};
		Wld_InsertNpc(djg_skeleton,"HOEHLE");
		SKELETONKONTROLL = GIL_DJG;
	};
};

