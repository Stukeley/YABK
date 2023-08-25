
func void b_otherteamfraktion()
{
	var int random;
	random = Hlp_Random(MAXFRAK);
	if(LAGER == 1)
	{
		FRAKTION_L2 = random;
		if(FRAKTION_L2 == FRAKTION_L1)
		{
			b_otherteamfraktion();
		};
	}
	else if(LAGER == 2)
	{
		FRAKTION_L1 = random;
		if(FRAKTION_L1 == FRAKTION_L2)
		{
			b_otherteamfraktion();
		};
	};
};

