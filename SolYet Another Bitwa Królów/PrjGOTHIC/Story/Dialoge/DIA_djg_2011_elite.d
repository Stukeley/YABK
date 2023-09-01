// Dialog z Elita Niebieskiego Obozu

instance DJG_2011_ELITE_EXIT(C_Info)
{
	npc = djg_2011_elite;
	condition = djg_2011_elite_exit_condition;
	information = djg_2011_elite_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int djg_2011_elite_exit_condition()
{
	return TRUE;
};

func void djg_2011_elite_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DJG_2011_ELITE_HERO(C_Info)
{
	npc = djg_2011_elite;
	condition = djg_2011_elite_hero_condition;
	information = djg_2011_elite_hero_info;
	important = FALSE;
	permanent = TRUE;
	description = B_GetCostString(PRINT_GETHERO,HERO_COST);
};


func int djg_2011_elite_hero_condition()
{
	if(L2_HELD_SPAWNED == FALSE)
	{
		return TRUE;
	};
};

func void djg_2011_elite_hero_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_COST)
	{
		B_ReviveDjgHero();
		B_GiveInvItems(other,self,ItMi_Gold,HERO_COST);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_HELD_SPAWNED = TRUE;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};


instance DJG_2011_ELITE_WAFFENUPGRADE(C_Info)
{
	npc = djg_2011_elite;
	condition = djg_2011_elite_waffenupgrade_condition;
	information = djg_2011_elite_waffenupgrade_info;
	important = FALSE;
	permanent = TRUE;
	description = B_GetCostString(PRINT_IMPROVEHEROWEAPON,HERO_WAFFENUPGRADE);
};


func int djg_2011_elite_waffenupgrade_condition()
{
	if(L2_HELD_SCHWERTLEVEL < 3)
	{
		return TRUE;
	};
};

func void djg_2011_elite_waffenupgrade_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_WAFFENUPGRADE)
	{
		L2_HELD_SCHWERTLEVEL += 1;
		B_GiveInvItems(other,self,ItMi_Gold,HERO_WAFFENUPGRADE);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(L2_HELD_SCHWERTLEVEL == 1)
		{
			djg_2012_hero.HitChance[NPC_TALENT_1H] = 54;
			djg_2012_hero.HitChance[NPC_TALENT_2H] = 54;
			CreateInvItem(djg_2012_hero,itmw_hero_2);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST1.mds");
		};
		if(L2_HELD_SCHWERTLEVEL == 2)
		{
			djg_2012_hero.HitChance[NPC_TALENT_1H] = 77;
			djg_2012_hero.HitChance[NPC_TALENT_2H] = 77;
			CreateInvItem(djg_2012_hero,itmw_hero_3);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST2.mds");
		};
		if(L2_HELD_SCHWERTLEVEL >= 3)
		{
			djg_2012_hero.HitChance[NPC_TALENT_1H] = 100;
			djg_2012_hero.HitChance[NPC_TALENT_2H] = 100;
			CreateInvItem(djg_2012_hero,itmw_hero_4);
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST2.mds");
		};
		AI_EquipBestMeleeWeapon(djg_2012_hero);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};


instance DJG_2011_ELITE_RUESTUNGSUPGRADE(C_Info)
{
	npc = djg_2011_elite;
	condition = djg_2011_elite_ruestungsupgrade_condition;
	information = djg_2011_elite_ruestungsupgrade_info;
	important = FALSE;
	permanent = TRUE;
	description = B_GetCostString(PRINT_IMPROVEHEROARMOR,HERO_RUESTUNGSUPGRADE);
};


func int djg_2011_elite_ruestungsupgrade_condition()
{
	if(L2_HELD_RUESTUNGLEVEL < 2)
	{
		return TRUE;
	};
};

func void djg_2011_elite_ruestungsupgrade_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_RUESTUNGSUPGRADE)
	{
		L2_HELD_RUESTUNGLEVEL += 1;
		B_GiveInvItems(other,self,ItMi_Gold,HERO_RUESTUNGSUPGRADE);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(L2_HELD_RUESTUNGLEVEL == 1)
		{
			if(FRAKTION_L2 == DJG)
			{
				CreateInvItems(djg_2012_hero,itar_djg_l,1);
			}
			else if(FRAKTION_L2 == PAL)
			{
				CreateInvItems(djg_2012_hero,ItAr_PAL_M,1);
			}
			else if(FRAKTION_L2 == TMP)
			{
				CreateInvItems(djg_2012_hero,itar_tmp_m,1);
			}
			else if(FRAKTION_L1 == SKE)
			{
				B_SetSkelettVisual(pal_1012_hero,3);
			};
		};
		if(L2_HELD_RUESTUNGLEVEL == 2)
		{
			if(FRAKTION_L2 == DJG)
			{
				CreateInvItems(djg_2012_hero,itar_djg_h,1);
			}
			else if(FRAKTION_L2 == PAL)
			{
				CreateInvItems(djg_2012_hero,ItAr_PAl_H,1);
			}
			else if(FRAKTION_L2 == TMP)
			{
				CreateInvItems(djg_2012_hero,itar_tmp_h,1);
			}
			else if(FRAKTION_L1 == SKE)
			{
				B_SetSkelettVisual(pal_1012_hero,4);
			};
		};
		AI_EquipBestArmor(djg_2012_hero);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};


instance DJG_2011_ELITE_ARMBRUSTUPGRADE(C_Info)
{
	npc = djg_2011_elite;
	condition = djg_2011_elite_armbrustupgrade_condition;
	information = djg_2011_elite_armbrustupgrade_info;
	important = FALSE;
	permanent = TRUE;
	description = B_GetCostString(PRINT_IMPROVEHEROCROSSBOW,HERO_ARMBRUSTUPGRADE);
};


func int djg_2011_elite_armbrustupgrade_condition()
{
	if(L2_HELD_ARMBRUSTLEVEL < 4)
	{
		return TRUE;
	};
};

func void djg_2011_elite_armbrustupgrade_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_ARMBRUSTUPGRADE)
	{
		L2_HELD_ARMBRUSTLEVEL += 1;
		B_GiveInvItems(other,self,ItMi_Gold,HERO_ARMBRUSTUPGRADE);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.

		// Podmiana kuszy na nowy poziom.
		var int new_hero_crossbow;
		new_hero_crossbow = B_GetUnitCrossbow(L2_HELD_ARMBRUSTLEVEL);
		CreateInvItems(djg_2012_hero, new_hero_crossbow, 1);

		if(L2_HELD_ARMBRUSTLEVEL == 1)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 30;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 30;
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_2hST1.mds");
		};
		if(L2_HELD_ARMBRUSTLEVEL == 2)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 54;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 54;
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_BowT1.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_CBowT1.mds");
		};
		if(L2_HELD_ARMBRUSTLEVEL == 3)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 77;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 77;
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_CBowT2.mds");
		};
		if(L2_HELD_ARMBRUSTLEVEL >= 4)
		{
			djg_2012_hero.HitChance[NPC_TALENT_BOW] = 100;
			djg_2012_hero.HitChance[NPC_TALENT_CROSSBOW] = 100;
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(djg_2012_hero,"humans_CBowT2.mds");
		};
		
		AI_EquipBestRangedWeapon(djg_2012_hero);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};


instance DJG_2011_ELITE_QUICK_REVIVE(C_Info)
{
	npc = djg_2011_elite;
	condition = djg_2011_elite_quick_revive_condition;
	information = djg_2011_elite_quick_revive_info;
	important = FALSE;
	permanent = TRUE;
	description = B_GetCostString(PRINT_HEROQUICKREVIVE,HERO_QUICKREVIVE);
};


func int djg_2011_elite_quick_revive_condition()
{
	if(L2_HELD_QUICKREVIVE == FALSE)
	{
		return TRUE;
	};
};

func void djg_2011_elite_quick_revive_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_QUICKREVIVE)
	{
		L2_HELD_QUICKREVIVE = TRUE;
		B_GiveInvItems(other,self,ItMi_Gold,HERO_QUICKREVIVE);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};

