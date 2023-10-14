
func void b_revivepalhero()
{
	if(LAGER == 1)
	{
		if(HEROSPAWNED == TRUE)
		{
			b_message("NEWS_Eigen_HeldRevive");
		}
		else
		{
			HEROSPAWNED = TRUE;
		};
	};
	Wld_InsertNpc(pal_1012_hero,SPAWNWAYPOINT);
	Wld_PlayEffect("spellFX_LIGHTSTAR_RED",pal_1012_hero,pal_1012_hero,0,0,0,FALSE);
};

func void b_revivedjghero()
{
	if(LAGER == 2)
	{
		if(HEROSPAWNED == TRUE)
		{
			b_message("NEWS_Eigen_HeldRevive");
		}
		else
		{
			HEROSPAWNED = TRUE;
		};
	};
	Wld_InsertNpc(djg_2012_hero,SPAWNWAYPOINT);
	Wld_PlayEffect("spellFX_LIGHTSTAR_RED",djg_2012_hero,djg_2012_hero,0,0,0,FALSE);
};

