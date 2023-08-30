// Plik zawierajacy funkcje odpowiedzialne za pojawianie sie najemnikow.

func void B_SpawnSoeldner(var int guild)
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
			B_SpawnSoeldner(GIL_PAL);
		};
		if(SKELETONKONTROLL == GIL_DJG)
		{
			L2_CURRENT_MERCLEVEL = 7;
			B_SpawnSoeldner(GIL_DJG);
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

// Funkcja odpowiedzialna za zespawnowanie wielu najemnikow (tak duzo, ile mamy zlota).
// guild - gildia (GIL_PAL = czerwoni, lub GIL_DJG = niebiescy)
// amount - ilosc najemnikow do zespawnowania
func void B_SpawnManySoeldner(var int guild, var int amount)
{
	// Petla za pomoca rekursji.
	if (amount > 0)
	{
		B_SpawnSoeldner(guild);
		B_SpawnManySoeldner(guild, amount - 1);
	};
};

