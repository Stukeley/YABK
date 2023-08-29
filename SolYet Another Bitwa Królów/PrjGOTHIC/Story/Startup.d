
func void startup_global()
{
	Game_InitGerman();
};

func void init_global()
{
	LOAD = LOAD + 1;
	if(LOAD > 2)
	{
		if((LAGER == 1) && (FRAKTION_L1 == SKE))
		{
			Mdl_ApplyOverlayMds(hero,"humans_skeleton.mds");
			Mdl_SetVisualBody(hero,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
		};
		if((LAGER == 2) && (FRAKTION_L2 == SKE))
		{
			Mdl_ApplyOverlayMds(hero,"humans_skeleton.mds");
			Mdl_SetVisualBody(hero,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
		};
	};
	if(LOAD > 3)
	{
		if(FRAKTION_L1 == SKE)
		{
			B_SetSkelettVisual(pal_1000_king,4);
			Mdl_ApplyOverlayMds(pal_1002_schmied,"humans_skeleton.mds");
			Mdl_SetVisualBody(pal_1002_schmied,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
			B_SetSkelettVisual(pal_1004_magier,6);
			B_SetSkelettVisual(pal_1007_minenaufseher,3);
			B_SetSkelettVisual(pal_1008_minenarbeiter,1);
			B_SetSkelettVisual(pal_1009_minenarbeiter,1);
			B_SetSkelettVisual(pal_1010_minenarbeiter,1);
			if(LAGER == 1)
			{
				B_SetSkelettVisual(pal_1001_schmiedebauer,3);
				B_SetSkelettVisual(pal_1005_magiebauer,3);
				B_SetSkelettVisual(pal_1006_minebauer,3);
				B_SetSkelettVisual(pal_1003_verwalter,3);
				B_SetSkelettVisual(pal_1011_elite,3);
			};
		};
		if(FRAKTION_L2 == SKE)
		{
			B_SetSkelettVisual(djg_2000_king,4);
			Mdl_ApplyOverlayMds(djg_2002_schmied,"humans_skeleton.mds");
			Mdl_SetVisualBody(djg_2002_schmied,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
			B_SetSkelettVisual(djg_2004_magier,6);
			B_SetSkelettVisual(djg_2007_minenaufseher,3);
			B_SetSkelettVisual(djg_2008_minenarbeiter,1);
			B_SetSkelettVisual(djg_2009_minenarbeiter,1);
			B_SetSkelettVisual(djg_2010_minenarbeiter,1);
			if(LAGER == 2)
			{
				B_SetSkelettVisual(djg_2001_schmiedebauer,3);
				B_SetSkelettVisual(djg_2005_magiebauer,3);
				B_SetSkelettVisual(djg_2006_minebauer,3);
				B_SetSkelettVisual(djg_2003_verwalter,3);
				B_SetSkelettVisual(djg_2011_elite,3);
			};
		};
	};
};

func void STARTUP_Testlevel()
{
};

func void INIT_SUB_Testlevel()
{
};

func void INIT_Testlevel()
{
	B_InitMonsterAttitudes();
	B_InitGuildAttitudes();
	B_InitNpcGlobals();
	INIT_SUB_Testlevel();
};

func void startup_map()
{
	Wld_InsertNpc(none_3000_muellmann,SPAWNWAYPOINT);
	Wld_InsertNpc(none_3001_muellmann,SPAWNWAYPOINT);
	Wld_InsertNpc(pal_1000_king,SPAWNWAYPOINT);
	if(LAGER == 1)
	{
		Wld_InsertNpc(pal_1001_schmiedebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1005_magiebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1006_minebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1003_verwalter,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1011_elite,SPAWNWAYPOINT);
	};
	Wld_InsertNpc(djg_2000_king,SPAWNWAYPOINT);
	if(LAGER == 2)
	{
		Wld_InsertNpc(djg_2001_schmiedebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2005_magiebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2006_minebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2003_verwalter,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2011_elite,SPAWNWAYPOINT);
	};
	if(NOSTARTMONEY == FALSE)
	{
		CreateInvItems(hero,ItMi_Gold,40);
		L1_HAVEGOLD = 40;
		L2_HAVEGOLD = 40;
	};
	MAP = MAP01;
	CreateInvItems(hero,ItRu_TeleportSeaport,1);
	CreateInvItems(hero,ItRu_TeleportPassOW,1);
	CreateInvItems(hero,ItRu_TeleportFarm,1);
};

func void init_sub_map()
{
};

func void init_map()
{
	B_InitMonsterAttitudes();
	B_InitGuildAttitudes();
	B_InitNpcGlobals();
	init_sub_map();
};

func void startup_machtl_map()
{
	Wld_InsertNpc(none_3000_muellmann,SPAWNWAYPOINT);
	Wld_InsertNpc(none_3001_muellmann,SPAWNWAYPOINT);
	Wld_InsertNpc(none_3002_muellmann,SPAWNWAYPOINT);
	Wld_InsertNpc(pal_1000_king,SPAWNWAYPOINT);
	if(LAGER == 1)
	{
		Wld_InsertNpc(pal_1001_schmiedebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1005_magiebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1006_minebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1003_verwalter,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1011_elite,SPAWNWAYPOINT);
	};
	Wld_InsertNpc(djg_2000_king,SPAWNWAYPOINT);
	if(LAGER == 2)
	{
		Wld_InsertNpc(djg_2001_schmiedebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2005_magiebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2006_minebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2003_verwalter,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2011_elite,SPAWNWAYPOINT);
	};
	if(NOSTARTMONEY == FALSE)
	{
		CreateInvItems(hero,ItMi_Gold,40);
		L1_HAVEGOLD = 40;
		L2_HAVEGOLD = 40;
	};
	MAP = MACHTL_MAP;
};

func void init_sub_machtl_map()
{
};

func void init_machtl_map()
{
	B_InitMonsterAttitudes();
	B_InitGuildAttitudes();
	B_InitNpcGlobals();
	init_sub_machtl_map();
};

func void startup_changeroom()
{
	b_varinitialisierung();
	Wld_InsertNpc(vlk_666_spielleiter,SPAWNWAYPOINT);
};

func void init_sub_changeroom()
{
};

func void init_changeroom()
{
	B_InitMonsterAttitudes();
	B_InitGuildAttitudes();
	B_InitNpcGlobals();
	init_sub_changeroom();
};

func void startup_varusmap()
{
	Wld_InsertNpc(none_3000_muellmann,SPAWNWAYPOINT);
	Wld_InsertNpc(none_3004_muellmann,SPAWNWAYPOINT);
	Wld_InsertNpc(none_3002_muellmann,SPAWNWAYPOINT);
	Wld_InsertNpc(none_3003_muellmann,SPAWNWAYPOINT);
	Wld_InsertNpc(pal_1000_king,SPAWNWAYPOINT);
	if(LAGER == 1)
	{
		Wld_InsertNpc(pal_1001_schmiedebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1005_magiebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1006_minebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1003_verwalter,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1011_elite,SPAWNWAYPOINT);
	};
	Wld_InsertNpc(djg_2000_king,SPAWNWAYPOINT);
	if(LAGER == 2)
	{
		Wld_InsertNpc(djg_2001_schmiedebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2005_magiebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2006_minebauer,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2003_verwalter,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2011_elite,SPAWNWAYPOINT);
	};
	Wld_InsertNpc(skeleton_01,"HOEHLE");
	Wld_InsertNpc(skeleton_02,"L2_WARGHOEHLE_22");
	Wld_InsertNpc(skeleton_03,"L1_WARGHOEHLE_16");
	MAP = VARUS_MAP;
};

func void init_sub_varusmap()
{
};

func void init_varusmap()
{
	B_InitMonsterAttitudes();
	B_InitGuildAttitudes();
	B_InitNpcGlobals();
	init_sub_varusmap();
};

