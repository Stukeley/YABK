
func void b_spawnsoeldner(var int guild)
{
	if((guild == GIL_PAL) || (guild == GIL_MIL))
	{
		if(L1_WEGAUFTEILUNG < WEGCOUNTER)
		{
			pal_1140_soeldner.aivar[97] = 1;
		}
		else
		{
			pal_1140_soeldner.aivar[97] = 2;
		};
		if(MAP == VARUS_MAP)
		{
			pal_1140_soeldner.aivar[97] = 2;
		};
		Wld_InsertNpc(pal_1140_soeldner,SPAWNWAYPOINT);
	};
	if((guild == GIL_DJG) || (guild == GIL_SLD))
	{
		if(L2_WEGAUFTEILUNG < WEGCOUNTER)
		{
			djg_2140_soeldner.aivar[97] = 1;
		}
		else
		{
			djg_2140_soeldner.aivar[97] = 2;
		};
		if(MAP == VARUS_MAP)
		{
			djg_2140_soeldner.aivar[97] = 2;
		};
		Wld_InsertNpc(djg_2140_soeldner,SPAWNWAYPOINT);
	};
};

func void b_skript_schleife_spawn()
{
	if(WEGCOUNTER == 0)
	{
		WEGCOUNTER = 1;
	};
	if((ABLAUF >= (LASTSKELETTSPAWN + 6)) && (MAP == VARUS_MAP))
	{
		if(SKELETONKONTROLL == GIL_PAL)
		{
			L1_CURRENT_MERCLEVEL = 7;
			b_spawnsoeldner(GIL_PAL);
		};
		if(SKELETONKONTROLL == GIL_DJG)
		{
			L2_CURRENT_MERCLEVEL = 7;
			b_spawnsoeldner(GIL_DJG);
		};
		LASTSKELETTSPAWN = ABLAUF;
	};
	if((LASTSOLDIERSPAWNLAGEREINS == 0) || (ABLAUF >= (LASTSOLDIERSPAWNLAGEREINS + 5)))
	{
		WEGCOUNTER = WEGCOUNTER + 1;
		if(WEGCOUNTER == 5)
		{
			WEGCOUNTER = 1;
		};
		Wld_InsertNpc(pal_1100_soldat,SPAWNWAYPOINT);
		if(TWOSOLDIERS_ON == TRUE)
		{
			Wld_InsertNpc(pal_1100_soldat,SPAWNWAYPOINT);
		};
		LASTSOLDIERSPAWNLAGEREINS = ABLAUF;
		if(MAP == MACHTL_MAP)
		{
			if(L1_WEGAUFTEILUNG < WEGCOUNTER)
			{
				pal_1100_soldat.aivar[97] = 1;
			}
			else
			{
				pal_1100_soldat.aivar[97] = 2;
			};
		};
		if(MAP == VARUS_MAP)
		{
			pal_1100_soldat.aivar[97] = 2;
		};
	};
	if((LASTSOLDIERSPAWNLAGERZWEI == 0) || (ABLAUF >= (LASTSOLDIERSPAWNLAGERZWEI + 5)))
	{
		Wld_InsertNpc(djg_2100_soldat,SPAWNWAYPOINT);
		if(TWOSOLDIERS_ON == TRUE)
		{
			Wld_InsertNpc(djg_2100_soldat,SPAWNWAYPOINT);
		};
		LASTSOLDIERSPAWNLAGERZWEI = ABLAUF;
		if(MAP == MACHTL_MAP)
		{
			if(L2_WEGAUFTEILUNG < WEGCOUNTER)
			{
				djg_2100_soldat.aivar[97] = 1;
			}
			else
			{
				djg_2100_soldat.aivar[97] = 2;
			};
		};
		if(MAP == VARUS_MAP)
		{
			djg_2100_soldat.aivar[97] = 2;
		};
	};
	if((L1_MAGIE > 0) && (ABLAUF >= (LASTMAGESPAWNLAGEREINS + 12)))
	{
		Wld_InsertNpc(pal_1120_magier,SPAWNWAYPOINT);
		if(TWOMAGES_ON == TRUE)
		{
			Wld_InsertNpc(pal_1120_magier,SPAWNWAYPOINT);
		};
		LASTMAGESPAWNLAGEREINS = ABLAUF;
		if(MAP == MACHTL_MAP)
		{
			if(L1_WEGAUFTEILUNG <= WEGCOUNTER)
			{
				pal_1120_magier.aivar[97] = 1;
			}
			else
			{
				pal_1120_magier.aivar[97] = 2;
			};
		};
		if(MAP == VARUS_MAP)
		{
			pal_1120_magier.aivar[97] = 2;
		};
	};
	if((L2_MAGIE > 0) && (ABLAUF >= (LASTMAGESPAWNLAGERZWEI + 12)))
	{
		Wld_InsertNpc(djg_2120_magier,SPAWNWAYPOINT);
		if(TWOMAGES_ON == TRUE)
		{
			Wld_InsertNpc(djg_2120_magier,SPAWNWAYPOINT);
		};
		LASTMAGESPAWNLAGERZWEI = ABLAUF;
		if(MAP == MACHTL_MAP)
		{
			if(L2_WEGAUFTEILUNG <= WEGCOUNTER)
			{
				djg_2120_magier.aivar[97] = 1;
			}
			else
			{
				djg_2120_magier.aivar[97] = 2;
			};
		};
		if(MAP == VARUS_MAP)
		{
			djg_2120_magier.aivar[97] = 2;
		};
	};
};

func void b_spawnmanysoeldner(var int guild,var int anzahl)
{
	if(anzahl >= 1)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 2)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 3)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 4)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 5)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 6)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 7)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 8)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 9)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 10)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 11)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 12)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 13)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 14)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 15)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 16)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 17)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 18)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 19)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 20)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 21)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 22)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 23)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 24)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 25)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 26)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 27)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 28)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 29)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 30)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 31)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 32)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 33)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 34)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 35)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 36)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 37)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 38)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 39)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 40)
	{
		b_spawnsoeldner(guild);
	};
	if(anzahl >= 41)
	{
		b_spawnsoeldner(guild);
	};
};

