// Plik zawiera funkcje wywolywane na poczatku gry.

func void startup_global()
{
	Game_InitGerman();
};

// Glowna funkcja startup.
func void init_global()
{
	LeGo_Init (LeGo_All);
	statmenucheck = 0;
	PoziomTwojegoMaga = "-";
	SmithGoldAmount = 10;
	
	if (!FF_Active (NewMenu)) //chyba jeśli funkcja jest aktywna
	{
		FF_ApplyGT (NewMenu); // To ją zaaplikuj :D
	};
	if (!FF_Active (TeleportsLoop)) //chyba jeśli funkcja jest aktywna
	{
		FF_ApplyGT (TeleportsLoop); // To ją zaaplikuj :D
	};
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
		if (FRAKTION_L2!=ORC){
	
		Wld_InsertNpc(djg_2200_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2201_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2202_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2203_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2204_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2205_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2206_TRAININGMASTER,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7033_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7034_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7044_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7045_TRAINING,SPAWNWAYPOINT);	
	};
	if (FRAKTION_L1 != ORC)
	{
		Wld_InsertNpc(PAL_3200_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3201_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3202_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3203_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3204_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3205_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3206_TRAININGMASTER,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7052_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7053_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7054_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7055_TRAINING,SPAWNWAYPOINT);	
	};
	
	

	Wld_InsertNpc(DJG_7001_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7002_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7003_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7004_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7005_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7006_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7007_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7008_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7009_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7010_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7011_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7012_COOK,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7013_COOK,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7014_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7015_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7016_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7017_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7018_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7019_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7020_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7021_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7022_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7023_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7024_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7025_COOK,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7026_COOK,SPAWNWAYPOINT);	
	Wld_InsertNpc(DJG_7027_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7028_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7029_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7030_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7031_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7032_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7046_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7047_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7048_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7049_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7050_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7051_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3300_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3301_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3302_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3303_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3304_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3305_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3306_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3307_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2300_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2301_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2302_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2303_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2304_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2305_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2306_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2307_NOV,SPAWNWAYPOINT);
	B_StartOtherRoutine(PAL_3303_Mage,"Start2");
	B_StartOtherRoutine(PAL_3302_Mage,"Start2");
	B_StartOtherRoutine(PAL_2303_Mage,"Start2");
	B_StartOtherRoutine(PAL_2302_Mage,"Start2");
	
		
	Wld_InsertNpc(NONE_8100_INQUISITOR, SPAWNWAYPOINT);
	Wld_InsertNpc(NONE_8200_ZAKONNIK, SPAWNWAYPOINT);
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
	
	
		if (FRAKTION_L2!=ORC){
	
		Wld_InsertNpc(djg_2200_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2201_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2202_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2203_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2204_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2205_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2206_TRAININGMASTER,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7033_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7034_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7044_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7045_TRAINING,SPAWNWAYPOINT);	
	};
	if (FRAKTION_L1 != ORC)
	{
		Wld_InsertNpc(PAL_3200_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3201_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3202_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3203_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3204_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3205_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3206_TRAININGMASTER,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7052_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7053_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7054_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7055_TRAINING,SPAWNWAYPOINT);	
	};
	
	

	Wld_InsertNpc(DJG_7001_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7002_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7003_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7004_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7005_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7006_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7007_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7008_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7009_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7010_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7011_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7012_COOK,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7013_COOK,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7014_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7015_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7016_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7017_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7018_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7019_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7020_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7021_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7022_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7023_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7024_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7025_COOK,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7026_COOK,SPAWNWAYPOINT);	
	Wld_InsertNpc(DJG_7027_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7028_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7029_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7030_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7031_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7032_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7046_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7047_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7048_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7049_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7050_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7051_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3300_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3301_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3302_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3303_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3304_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3305_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3306_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3307_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2300_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2301_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2302_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2303_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2304_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2305_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2306_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2307_NOV,SPAWNWAYPOINT);
	B_StartOtherRoutine(PAL_3303_Mage,"Start2");
	B_StartOtherRoutine(PAL_3302_Mage,"Start2");
	B_StartOtherRoutine(PAL_2303_Mage,"Start2");
	B_StartOtherRoutine(PAL_2302_Mage,"Start2");
	
		
	Wld_InsertNpc(NONE_8100_INQUISITOR, SPAWNWAYPOINT);
	Wld_InsertNpc(NONE_8200_ZAKONNIK, SPAWNWAYPOINT);
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
	
	if (FRAKTION_L2!=ORC){
	
		Wld_InsertNpc(djg_2200_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2201_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2202_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2203_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2204_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2205_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2206_TRAININGMASTER,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7033_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7034_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7044_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7045_TRAINING,SPAWNWAYPOINT);	
	};
	if (FRAKTION_L1 != ORC)
	{
		Wld_InsertNpc(PAL_3200_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3201_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3202_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3203_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3204_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3205_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(PAL_3206_TRAININGMASTER,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7052_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7053_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7054_TRAINING,SPAWNWAYPOINT);
		Wld_InsertNpc(DJG_7055_TRAINING,SPAWNWAYPOINT);	
	};
	
	
	
	

	Wld_InsertNpc(DJG_7001_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7002_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7003_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7004_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7005_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7006_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7007_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7008_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7009_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7010_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7011_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7012_COOK,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7013_COOK,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7014_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7015_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7016_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7017_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7018_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7019_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7020_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7021_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7022_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7023_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7024_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7025_COOK,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7026_COOK,SPAWNWAYPOINT);	
	Wld_InsertNpc(DJG_7027_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7028_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7029_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7030_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7031_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7032_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7046_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7047_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7048_Civil,SPAWNWAYPOINT);		
	Wld_InsertNpc(DJG_7049_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7050_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(DJG_7051_Civil,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3300_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3301_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3302_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3303_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3304_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3305_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3306_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_3307_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2300_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2301_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2302_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2303_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2304_Mage,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2305_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2306_NOV,SPAWNWAYPOINT);
	Wld_InsertNpc(PAL_2307_NOV,SPAWNWAYPOINT);
	B_StartOtherRoutine(PAL_3303_Mage,"Start2");
	B_StartOtherRoutine(PAL_3302_Mage,"Start3");
	B_StartOtherRoutine(PAL_2303_Mage,"Start2");
	B_StartOtherRoutine(PAL_2302_Mage,"Start3");
	
	Wld_InsertNpc(NONE_8100_INQUISITOR, SPAWNWAYPOINT);
	Wld_InsertNpc(NONE_8200_ZAKONNIK, SPAWNWAYPOINT);
	
	
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
