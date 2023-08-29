// Dialog z Elita Czerwonego Obozu

instance PAL_1011_ELITE_EXIT(C_Info)
{
	npc = pal_1011_elite;
	condition = pal_1011_elite_exit_condition;
	information = pal_1011_elite_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int pal_1011_elite_exit_condition()
{
	return TRUE;
};

func void pal_1011_elite_exit_info()
{
	AI_StopProcessInfos(self);
};


instance PAL_1011_ELITE_HERO(C_Info)
{
	npc = pal_1011_elite;
	condition = pal_1011_elite_hero_condition;
	information = pal_1011_elite_hero_info;
	important = FALSE;
	permanent = TRUE;
	description = b_getcoststring(PRINT_GETHERO,HERO_COST);
};


func int pal_1011_elite_hero_condition()
{
	if(L1_HELD_SPAWNED == FALSE)
	{
		return TRUE;
	};
};

func void pal_1011_elite_hero_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_COST)
	{
		B_RevivePalHero();
		B_GiveInvItems(other,self,ItMi_Gold,HERO_COST);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L1_HELD_SPAWNED = TRUE;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};


instance PAL_1011_ELITE_WAFFENUPGRADE(C_Info)
{
	npc = pal_1011_elite;
	condition = pal_1011_elite_waffenupgrade_condition;
	information = pal_1011_elite_waffenupgrade_info;
	important = FALSE;
	permanent = TRUE;
	description = b_getcoststring(PRINT_IMPROVEHEROWEAPON,HERO_WAFFENUPGRADE);
};


func int pal_1011_elite_waffenupgrade_condition()
{
	if(L1_HELD_SCHWERTLEVEL < 3)
	{
		return TRUE;
	};
};

func void pal_1011_elite_waffenupgrade_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_WAFFENUPGRADE)
	{
		L1_HELD_SCHWERTLEVEL += 1;
		B_GiveInvItems(other,self,ItMi_Gold,HERO_WAFFENUPGRADE);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(L1_HELD_SCHWERTLEVEL == 1)
		{
			pal_1012_hero.HitChance[NPC_TALENT_1H] = 54;
			pal_1012_hero.HitChance[NPC_TALENT_2H] = 54;
			CreateInvItem(pal_1012_hero,itmw_hero_2);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST1.mds");
		};
		if(L1_HELD_SCHWERTLEVEL == 2)
		{
			pal_1012_hero.HitChance[NPC_TALENT_1H] = 77;
			pal_1012_hero.HitChance[NPC_TALENT_2H] = 77;
			CreateInvItem(pal_1012_hero,itmw_hero_3);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST2.mds");
		};
		if(L1_HELD_SCHWERTLEVEL >= 3)
		{
			pal_1012_hero.HitChance[NPC_TALENT_1H] = 100;
			pal_1012_hero.HitChance[NPC_TALENT_2H] = 100;
			CreateInvItem(pal_1012_hero,itmw_hero_4);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST2.mds");
		};
		AI_EquipBestMeleeWeapon(pal_1012_hero);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};


instance PAL_1011_ELITE_RUESTUNGSUPGRADE(C_Info)
{
	npc = pal_1011_elite;
	condition = pal_1011_elite_ruestungsupgrade_condition;
	information = pal_1011_elite_ruestungsupgrade_info;
	important = FALSE;
	permanent = TRUE;
	description = b_getcoststring(PRINT_IMPROVEHEROARMOR,HERO_RUESTUNGSUPGRADE);
};


func int pal_1011_elite_ruestungsupgrade_condition()
{
	if(L1_HELD_RUESTUNGLEVEL < 2)
	{
		return TRUE;
	};
};

func void pal_1011_elite_ruestungsupgrade_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_RUESTUNGSUPGRADE)
	{
		L1_HELD_RUESTUNGLEVEL += 1;
		B_GiveInvItems(other,self,ItMi_Gold,HERO_RUESTUNGSUPGRADE);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(L1_HELD_RUESTUNGLEVEL == 1)
		{
			if(FRAKTION_L1 == DJG)
			{
				CreateInvItems(pal_1012_hero,itar_djg_l,1);
			}
			else if(FRAKTION_L1 == Pal)
			{
				CreateInvItems(pal_1012_hero,ItAr_PAL_M,1);
			}
			else if(FRAKTION_L1 == TMP)
			{
				CreateInvItems(pal_1012_hero,itar_tmp_m,1);
			}
			else if(FRAKTION_L1 == SKE)
			{
				B_SetSkelettVisual(pal_1012_hero,3);
			};
		};
		if(L1_HELD_RUESTUNGLEVEL == 2)
		{
			if(FRAKTION_L1 == DJG)
			{
				CreateInvItems(pal_1012_hero,itar_djg_h,1);
			}
			else if(FRAKTION_L1 == Pal)
			{
				CreateInvItems(pal_1012_hero,ItAr_PAl_H,1);
			}
			else if(FRAKTION_L1 == TMP)
			{
				CreateInvItems(pal_1012_hero,itar_tmp_h,1);
			}
			else if(FRAKTION_L1 == SKE)
			{
				B_SetSkelettVisual(pal_1012_hero,4);
			};
		};
		AI_EquipBestArmor(pal_1012_hero);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};


instance PAL_1011_ELITE_ARMBRUSTUPGRADE(C_Info)
{
	npc = pal_1011_elite;
	condition = pal_1011_elite_armbrustupgrade_condition;
	information = pal_1011_elite_armbrustupgrade_info;
	important = FALSE;
	permanent = TRUE;
	description = b_getcoststring(PRINT_IMPROVEHEROCROSSBOW,HERO_ARMBRUSTUPGRADE);
};


func int pal_1011_elite_armbrustupgrade_condition()
{
	if(L1_HELD_ARMBRUSTLEVEL < 4)
	{
		return TRUE;
	};
};

func void pal_1011_elite_armbrustupgrade_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_ARMBRUSTUPGRADE)
	{
		L1_HELD_ARMBRUSTLEVEL += 1;
		B_GiveInvItems(other,self,ItMi_Gold,HERO_ARMBRUSTUPGRADE);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(L1_HELD_ARMBRUSTLEVEL == 1)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 30;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 30;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_L_02,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_1hST1.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_2hST1.mds");
		};
		if(L1_HELD_ARMBRUSTLEVEL == 2)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 54;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 54;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_M_01,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_BowT1.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_CBowT1.mds");
		};
		if(L1_HELD_ARMBRUSTLEVEL == 3)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 77;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 77;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_M_02,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_CBowT2.mds");
		};
		if(L1_HELD_ARMBRUSTLEVEL >= 4)
		{
			pal_1012_hero.HitChance[NPC_TALENT_BOW] = 100;
			pal_1012_hero.HitChance[NPC_TALENT_CROSSBOW] = 100;
			CreateInvItems(pal_1012_hero,ItRw_Crossbow_H_01,1);
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(pal_1012_hero,"humans_CBowT2.mds");
		};
		AI_EquipBestRangedWeapon(pal_1012_hero);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};


instance PAL_1011_ELITE_QUICK_REVIVE(C_Info)
{
	npc = pal_1011_elite;
	condition = pal_1011_elite_quick_revive_condition;
	information = pal_1011_elite_quick_revive_info;
	important = FALSE;
	permanent = TRUE;
	description = b_getcoststring(PRINT_HEROQUICKREVIVE,HERO_QUICKREVIVE);
};


func int pal_1011_elite_quick_revive_condition()
{
	if(L1_HELD_QUICKREVIVE == FALSE)
	{
		return TRUE;
	};
};

func void pal_1011_elite_quick_revive_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HERO_QUICKREVIVE)
	{
		L1_HELD_QUICKREVIVE = TRUE;
		B_GiveInvItems(other,self,ItMi_Gold,HERO_QUICKREVIVE);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj鉍o z這ta.
	};
};

