// Dialog z Zarzadca Niebieskiego Obozu

instance DJG_2003_VERWALTER_EXIT(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_exit_condition;
	information = djg_2003_verwalter_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int djg_2003_verwalter_exit_condition()
{
	return TRUE;
};

func void djg_2003_verwalter_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DJG_2003_VERWALTER_WEG_AUFTEILUNG(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_weg_aufteilung_condition;
	information = djg_2003_verwalter_weg_aufteilung_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SOLDIERWAYS;
};


func int djg_2003_verwalter_weg_aufteilung_condition()
{
	if(MAP == MACHTL_MAP)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_weg_aufteilung_info()
{
	Info_ClearChoices(djg_2003_verwalter_weg_aufteilung);
	Info_AddChoice(djg_2003_verwalter_weg_aufteilung,Dialog_Back,djg_2003_verwalter_weg_aufteilung_back);
	Info_AddChoice(djg_2003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY5,djg_2003_verwalter_weg_aufteilung_keiner_nach_1);
	Info_AddChoice(djg_2003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY4,djg_2003_verwalter_weg_aufteilung_25_nach_1);
	Info_AddChoice(djg_2003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY3,djg_2003_verwalter_weg_aufteilung_50_nach_1);
	Info_AddChoice(djg_2003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY2,djg_2003_verwalter_weg_aufteilung_75_nach_1);
	Info_AddChoice(djg_2003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY1,djg_2003_verwalter_weg_aufteilung_alle_nach_1);
};

func void djg_2003_verwalter_weg_aufteilung_back()
{
	Info_ClearChoices(djg_2003_verwalter_weg_aufteilung);
};

func void djg_2003_verwalter_weg_aufteilung_alle_nach_1()
{
	L2_WEGAUFTEILUNG = 0;
	Info_ClearChoices(djg_2003_verwalter_weg_aufteilung);
};

func void djg_2003_verwalter_weg_aufteilung_75_nach_1()
{
	L2_WEGAUFTEILUNG = 1;
	Info_ClearChoices(djg_2003_verwalter_weg_aufteilung);
};

func void djg_2003_verwalter_weg_aufteilung_50_nach_1()
{
	L2_WEGAUFTEILUNG = 2;
	Info_ClearChoices(djg_2003_verwalter_weg_aufteilung);
};

func void djg_2003_verwalter_weg_aufteilung_25_nach_1()
{
	L2_WEGAUFTEILUNG = 3;
	Info_ClearChoices(djg_2003_verwalter_weg_aufteilung);
};

func void djg_2003_verwalter_weg_aufteilung_keiner_nach_1()
{
	L2_WEGAUFTEILUNG = 4;
	Info_ClearChoices(djg_2003_verwalter_weg_aufteilung);
};


instance DJG_2003_VERWALTER_IMPROVE_WEAPONS(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_improve_weapons_condition;
	information = djg_2003_verwalter_improve_weapons_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_IMPROVESOLDIERWEAPONS;
};


func int djg_2003_verwalter_improve_weapons_condition()
{
	if(L2_USED_WEAPON < MAXWEAPONSTEP)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_improve_weapons_info()
{
	if((Npc_HasItems(hero,ItMi_Gold) >= 50) && B_HasUpgradeWeapons())
	{
		B_GiveInvItems(other,self,itmw_sword_pal,Npc_HasItems(hero,itmw_sword_pal));
		B_GiveInvItems(other,self,itmw_langschwert_pal,Npc_HasItems(hero,itmw_langschwert_pal));
		B_GiveInvItems(other,self,itmw_elbastardo_pal,Npc_HasItems(hero,itmw_elbastardo_pal));
		B_GiveInvItems(other,self,itmw_sword_djg,Npc_HasItems(hero,itmw_sword_djg));
		B_GiveInvItems(other,self,itmw_langschwert_djg,Npc_HasItems(hero,itmw_langschwert_djg));
		B_GiveInvItems(other,self,itmw_elbastardo_djg,Npc_HasItems(hero,itmw_elbastardo_djg));
		B_GiveInvItems(other,self,ItMi_Gold,50);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_USED_WEAPON += 1;
		if(L2_USED_WEAPON >= MAXWEAPONSTEP)
		{
			AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_03");	//Twój kowal nie mo¿e tworzyæ lepszych broni! Musisz zacz¹æ produkcjê czegoœ innego.
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_04");	//Nie masz wystarczaj¹co towaru.
	};
};


instance DJG_2003_VERWALTER_IMPROVE_ARMOR(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_improve_armor_condition;
	information = djg_2003_verwalter_improve_armor_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_IMPROVESOLDIERARMOR;
};


func int djg_2003_verwalter_improve_armor_condition()
{
	if(L2_USED_ARMOR < MAXARMORSTEP)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_improve_armor_info()
{
	if((Npc_HasItems(hero,ItMi_Gold) >= 50) && B_HasUpgradeArmors())
	{
		B_GiveInvItems(other,self,ItAr_MIL_M,Npc_HasItems(hero,ItAr_MIL_M) - 1);
		B_GiveInvItems(other,self,ItAr_PAL_M,Npc_HasItems(hero,ItAr_PAL_M) - 1);
		B_GiveInvItems(other,self,ItAr_PAl_H,Npc_HasItems(hero,ItAr_PAl_H) - 1);
		B_GiveInvItems(other,self,itar_skemil_m,Npc_HasItems(hero,itar_skemil_m));
		B_GiveInvItems(other,self,itar_skepal_m,Npc_HasItems(hero,itar_skepal_m));
		B_GiveInvItems(other,self,itar_skepal_h,Npc_HasItems(hero,itar_skepal_h));
		B_GiveInvItems(other,self,itar_sld_M,Npc_HasItems(hero,itar_sld_M) - 1);
		B_GiveInvItems(other,self,itar_djg_l,Npc_HasItems(hero,itar_djg_l) - 1);
		B_GiveInvItems(other,self,itar_djg_h,Npc_HasItems(hero,itar_djg_h) - 1);
		B_GiveInvItems(other,self,itar_tmp_l,Npc_HasItems(hero,itar_tmp_l) - 1);
		B_GiveInvItems(other,self,itar_tmp_m,Npc_HasItems(hero,itar_tmp_m) - 1);
		B_GiveInvItems(other,self,itar_tmp_h,Npc_HasItems(hero,itar_tmp_h) - 1);
		B_GiveInvItems(other,self,ItMi_Gold,50);

		L2_USED_ARMOR += 1;

		// Ubranie lepszego pancerza graczowi, lub zmiana visuala jesli jest szkieletem.
		if (FRAKTION_L2 == SKE)
		{
			B_SetSkelettVisual(other, L2_USED_ARMOR);
		}
		else
		{
			AI_EquipBestArmor(other);
		};

		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(L2_USED_ARMOR >= MAXARMORSTEP)
		{
			AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_ARMOR_Info_06_02");	//Twój kowal nie mo¿e stworzyæ lepszej zbroi. Musisz zacz¹æ produkcjê czegoœ innego.
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_04");	//Nie masz wystarczaj¹co towaru.
	};
};


instance DJG_2003_VERWALTER_IMPROVE_LEVEL_1(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_improve_level_1_condition;
	information = djg_2003_verwalter_improve_level_1_info;
	important = FALSE;
	permanent = TRUE;
	description = b_BuildImproveLevelString(1);
};


func int djg_2003_verwalter_improve_level_1_condition()
{
	if(L2_SOLDIER_LEVEL == 1)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_improve_level_1_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L2_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L2_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_SOLDIER_LEVEL += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2003_VERWALTER_IMPROVE_LEVEL_2(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_improve_level_2_condition;
	information = djg_2003_verwalter_improve_level_2_info;
	important = FALSE;
	permanent = TRUE;
	description = b_BuildImproveLevelString(2);
};


func int djg_2003_verwalter_improve_level_2_condition()
{
	if(L2_SOLDIER_LEVEL == 2)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_improve_level_2_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L2_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L2_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_SOLDIER_LEVEL += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2003_VERWALTER_IMPROVE_LEVEL_3(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_improve_level_3_condition;
	information = djg_2003_verwalter_improve_level_3_info;
	important = FALSE;
	permanent = TRUE;
	description = b_BuildImproveLevelString(3);
};


func int djg_2003_verwalter_improve_level_3_condition()
{
	if(L2_SOLDIER_LEVEL == 3)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_improve_level_3_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L2_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L2_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_SOLDIER_LEVEL += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2003_VERWALTER_IMPROVE_LEVEL_4(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_improve_level_4_condition;
	information = djg_2003_verwalter_improve_level_4_info;
	important = FALSE;
	permanent = TRUE;
	description = b_BuildImproveLevelString(4);
};


func int djg_2003_verwalter_improve_level_4_condition()
{
	if(L2_SOLDIER_LEVEL == 4)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_improve_level_4_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L2_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L2_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_SOLDIER_LEVEL += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2003_VERWALTER_IMPROVE_LEVEL_5(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_improve_level_5_condition;
	information = djg_2003_verwalter_improve_level_5_info;
	important = FALSE;
	permanent = TRUE;
	description = b_BuildImproveLevelString(5);
};


func int djg_2003_verwalter_improve_level_5_condition()
{
	if(L2_SOLDIER_LEVEL == 5)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_improve_level_5_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L2_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L2_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_SOLDIER_LEVEL += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2003_VERWALTER_IMPROVE_LEVEL_6(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_improve_level_6_condition;
	information = djg_2003_verwalter_improve_level_6_info;
	important = FALSE;
	permanent = TRUE;
	description = b_BuildImproveLevelString(6);
};


func int djg_2003_verwalter_improve_level_6_condition()
{
	if(L2_SOLDIER_LEVEL == 6)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_improve_level_6_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L2_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L2_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_SOLDIER_LEVEL += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2003_VERWALTER_GET_GOLD(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_get_gold_condition;
	information = djg_2003_verwalter_get_gold_info;
	important = FALSE;
	permanent = TRUE;
	description = "Ich will das Gold meiner toten Gegner sofort bekommen! (30 Gold)";
};


func int djg_2003_verwalter_get_gold_condition()
{
	if(L2_GET_GOLD == FALSE)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_get_gold_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= 30)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,30);
		L2_GET_GOLD = TRUE;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2003_VERWALTER_SOELDNER(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_soeldner_condition;
	information = djg_2003_verwalter_soeldner_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETMERCS;
};


func int djg_2003_verwalter_soeldner_condition()
{
	if(NOMERCS_ON == FALSE)
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_soeldner_info()
{
	Info_ClearChoices(djg_2003_verwalter_soeldner);
	Info_AddChoice(djg_2003_verwalter_soeldner,Dialog_Back,djg_2003_verwalter_soeldner_back);
	Info_AddChoice(djg_2003_verwalter_soeldner,B_GetCostString_Vielesoeldner(PRINT_MANYMERCS,SOELDNERLEVEL4_COST),djg_2003_verwalter_soeldner_level_4_many);
	Info_AddChoice(djg_2003_verwalter_soeldner,B_GetCostString(PRINT_SENDMERC4,SOELDNERLEVEL4_COST),djg_2003_verwalter_soeldner_level_4);
	Info_AddChoice(djg_2003_verwalter_soeldner,B_GetCostString(PRINT_SENDMERC3,SOELDNERLEVEL3_COST),djg_2003_verwalter_soeldner_level_3);
	Info_AddChoice(djg_2003_verwalter_soeldner,B_GetCostString(PRINT_SENDMERC2,SOELDNERLEVEL2_COST),djg_2003_verwalter_soeldner_level_2);
	Info_AddChoice(djg_2003_verwalter_soeldner,B_GetCostString(PRINT_SENDMERC1,SOELDNERLEVEL1_COST),djg_2003_verwalter_soeldner_level_1);
};

func void djg_2003_verwalter_soeldner_back()
{
	Info_ClearChoices(djg_2003_verwalter_soeldner);
};

func void djg_2003_verwalter_soeldner_level_4_many()
{
	var int soldiers_amount;
	var int gold_amount;
	gold_amount = Npc_HasItems(hero, ItMi_Gold);

	soldiers_amount = gold_amount / SOELDNERLEVEL4_COST;

	Print(ConcatStrings(IntToString(soldiers_amount), PRINT_SENDMERCS));

	if(Npc_HasItems(hero, ItMi_Gold) >= (SOELDNERLEVEL4_COST * soldiers_amount))
	{
		AI_Output(self, other, "PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other, self, ItMi_Gold, SOELDNERLEVEL4_COST * soldiers_amount);

		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnManySoeldner(GIL_DJG, soldiers_amount);

		REACTONMERCS = REACTONMERCS + soldiers_amount;
	}
	else
	{
		AI_Output(self, other, "PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	
	Info_ClearChoices(djg_2003_verwalter_soeldner);
};

func void djg_2003_verwalter_soeldner_level_4()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SOELDNERLEVEL4_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,SOELDNERLEVEL4_COST);
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnSoeldner(GIL_DJG);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_soeldner);
};

func void djg_2003_verwalter_soeldner_level_3()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SOELDNERLEVEL3_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,SOELDNERLEVEL3_COST);
		L2_CURRENT_MERCLEVEL = 3;
		B_SpawnSoeldner(GIL_DJG);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_soeldner);
};

func void djg_2003_verwalter_soeldner_level_2()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SOELDNERLEVEL2_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,SOELDNERLEVEL2_COST);
		L2_CURRENT_MERCLEVEL = 2;
		B_SpawnSoeldner(GIL_DJG);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_soeldner);
};

func void djg_2003_verwalter_soeldner_level_1()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SOELDNERLEVEL2_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,SOELDNERLEVEL2_COST);
		L2_CURRENT_MERCLEVEL = 1;
		B_SpawnSoeldner(GIL_DJG);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_soeldner);
};


instance DJG_2003_VERWALTER_WACHEN(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_wachen_condition;
	information = djg_2003_verwalter_wachen_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETWACHEN;
};


func int djg_2003_verwalter_wachen_condition()
{
	if(((djg_2160_wache.attribute[ATR_HITPOINTS] == 0) || (djg_2161_wache.attribute[ATR_HITPOINTS] == 0)) && ((MAP == MAP01) || (MAP == VARUS_MAP)))
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_wachen_info()
{
	Info_ClearChoices(djg_2003_verwalter_wachen);
	Info_AddChoice(djg_2003_verwalter_wachen,Dialog_Back,djg_2003_verwalter_wachen_back);
	if(djg_2161_wache.attribute[ATR_HITPOINTS] == 0)
	{
		Info_AddChoice(djg_2003_verwalter_wachen,B_GetCostString(PRINT_GETWACHE2,WACHE_COST),djg_2003_verwalter_wachen_ebene_2);
	};
	if(djg_2160_wache.attribute[ATR_HITPOINTS] == 0)
	{
		Info_AddChoice(djg_2003_verwalter_wachen,B_GetCostString(PRINT_GETWACHE1,WACHE_COST),djg_2003_verwalter_wachen_ebene_1);
	};
};

func void djg_2003_verwalter_wachen_back()
{
	Info_ClearChoices(djg_2003_verwalter_wachen);
};

func void djg_2003_verwalter_wachen_ebene_1()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= WACHE_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,WACHE_COST);
		Wld_InsertNpc(djg_2160_wache,"L2_WACHE_01");
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_wachen);
};

func void djg_2003_verwalter_wachen_ebene_2()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= WACHE_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,WACHE_COST);
		Wld_InsertNpc(djg_2161_wache,"L2_WACHE_02");
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_wachen);
};


instance DJG_2003_VERWALTER_HOEHLEN_SOELDNER(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_hoehlen_soeldner_condition;
	information = djg_2003_verwalter_hoehlen_soeldner_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETHOEHLENSOELDNER;
};


func int djg_2003_verwalter_hoehlen_soeldner_condition()
{
	if((MAP == VARUS_MAP) && (L2_LEBENDEHOEHLENSOELDNER < MAXHOEHLENWACHEN))
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_hoehlen_soeldner_info()
{
	Info_ClearChoices(djg_2003_verwalter_hoehlen_soeldner);
	Info_AddChoice(djg_2003_verwalter_hoehlen_soeldner,Dialog_Back,djg_2003_verwalter_hoehlen_soeldner_back);
	if(L2_LEBENDEHOEHLENSOELDNER <= (MAXHOEHLENWACHEN - 5))
	{
		Info_AddChoice(djg_2003_verwalter_hoehlen_soeldner,B_GetCostString(PRINT_5HOEHLENSOELDNER,5 * HOEHLENSOELDNER),djg_2003_verwalter_hoehlen_soeldner_5_soeld);
	};
	if(L2_LEBENDEHOEHLENSOELDNER <= (MAXHOEHLENWACHEN - 3))
	{
		Info_AddChoice(djg_2003_verwalter_hoehlen_soeldner,B_GetCostString(PRINT_3HOEHLENSOELDNER,3 * HOEHLENSOELDNER),djg_2003_verwalter_hoehlen_soeldner_3_soeld);
	};
	if(L2_LEBENDEHOEHLENSOELDNER <= (MAXHOEHLENWACHEN - 1))
	{
		Info_AddChoice(djg_2003_verwalter_hoehlen_soeldner,B_GetCostString(PRINT_1HOEHLENSOELDNER,HOEHLENSOELDNER),djg_2003_verwalter_hoehlen_soeldner_1_soeld);
	};
};

func void djg_2003_verwalter_hoehlen_soeldner_back()
{
	Info_ClearChoices(djg_2003_verwalter_hoehlen_soeldner);
};

func void djg_2003_verwalter_hoehlen_soeldner_1_soeld()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HOEHLENSOELDNER)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,HOEHLENSOELDNER);
		L2_LEBENDEHOEHLENSOELDNER += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_hoehlen_soeldner);
};

func void djg_2003_verwalter_hoehlen_soeldner_3_soeld()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (HOEHLENSOELDNER * 3))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,HOEHLENSOELDNER * 3);
		L2_LEBENDEHOEHLENSOELDNER += 3;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_hoehlen_soeldner);
};

func void djg_2003_verwalter_hoehlen_soeldner_5_soeld()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (HOEHLENSOELDNER * 5))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2190_hoehlensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,HOEHLENSOELDNER * 5);
		L2_LEBENDEHOEHLENSOELDNER += 5;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_hoehlen_soeldner);
};


instance DJG_2003_VERWALTER_MINEN_SOELDNER(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_minen_soeldner_condition;
	information = djg_2003_verwalter_minen_soeldner_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_BIGMINEMERCS;
};


func int djg_2003_verwalter_minen_soeldner_condition()
{
	if((MAP == MACHTL_MAP) || (MAP == VARUS_MAP))
	{
		return TRUE;
	};
};

func void djg_2003_verwalter_minen_soeldner_info()
{
	Info_ClearChoices(djg_2003_verwalter_minen_soeldner);
	Info_AddChoice(djg_2003_verwalter_minen_soeldner,Dialog_Back,djg_2003_verwalter_minen_soeldner_back);
	if(L2_MINENLEUTE <= (MAXMINENLEUTE - 5))
	{
		Info_AddChoice(djg_2003_verwalter_minen_soeldner,B_GetCostString(PRINT_5MINENWACHE,5 * MINENWACHE),djg_2003_verwalter_minen_soeldner_5_wache);
	};
	if(L2_MINENLEUTE <= (MAXMINENLEUTE - 3))
	{
		Info_AddChoice(djg_2003_verwalter_minen_soeldner,B_GetCostString(PRINT_3MINENWACHE,3 * MINENWACHE),djg_2003_verwalter_minen_soeldner_3_wache);
	};
	if(L2_MINENLEUTE <= (MAXMINENLEUTE - 1))
	{
		Info_AddChoice(djg_2003_verwalter_minen_soeldner,B_GetCostString(PRINT_1MINENWACHE,MINENWACHE),djg_2003_verwalter_minen_soeldner_wache);
	};
	if(L2_MINENLEUTE <= (MAXMINENLEUTE - 2))
	{
		Info_AddChoice(djg_2003_verwalter_minen_soeldner,B_GetCostString(PRINT_2MINENARBEITER,MINENARBEITERSOELDNER * 2),djg_2003_verwalter_minen_soeldner_2_arbeiter);
	};
	if(L2_MINENLEUTE <= (MAXMINENLEUTE - 1))
	{
		Info_AddChoice(djg_2003_verwalter_minen_soeldner,B_GetCostString(PRINT_1MINENARBEITER,MINENARBEITERSOELDNER),djg_2003_verwalter_minen_soeldner_arbeiter);
	};
};

func void djg_2003_verwalter_minen_soeldner_back()
{
	Info_ClearChoices(djg_2003_verwalter_minen_soeldner);
};

func void djg_2003_verwalter_minen_soeldner_wache()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MINENWACHE)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,MINENWACHE);
		L2_LEBENDEMINENWACHEN += 1;
		L2_MINENLEUTE += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_minen_soeldner);
};

func void djg_2003_verwalter_minen_soeldner_3_wache()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (MINENWACHE * 3))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,MINENWACHE * 3);
		L2_LEBENDEMINENWACHEN += 3;
		L2_MINENLEUTE += 3;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_minen_soeldner);
};

func void djg_2003_verwalter_minen_soeldner_5_wache()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (MINENWACHE * 5))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2180_minensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,MINENWACHE * 5);
		L2_LEBENDEMINENWACHEN += 5;
		L2_MINENLEUTE += 5;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_minen_soeldner);
};

func void djg_2003_verwalter_minen_soeldner_arbeiter()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MINENARBEITERSOELDNER)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
		L2_LEBENDEMINENARBEITER += 1;
		L2_MINENLEUTE += 1;
		B_GiveInvItems(other,self,ItMi_Gold,MINENARBEITERSOELDNER);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_minen_soeldner);
};

func void djg_2003_verwalter_minen_soeldner_2_arbeiter()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (MINENARBEITERSOELDNER * 2))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
		L2_LEBENDEMINENARBEITER += 2;
		L2_MINENLEUTE += 2;
		B_GiveInvItems(other,self,ItMi_Gold,MINENARBEITERSOELDNER * 2);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_minen_soeldner);
};

func void djg_2003_verwalter_minen_soeldner_4_arbeiter()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (MINENARBEITERSOELDNER * 4))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(djg_2070_minenarbeitersoeldner,SPAWNWAYPOINT);
		L2_LEBENDEMINENARBEITER += 4;
		L2_MINENLEUTE += 4;
		B_GiveInvItems(other,self,ItMi_Gold,MINENARBEITERSOELDNER * 4);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2003_verwalter_minen_soeldner);
};


instance DJG_2003_VERWALTER_EHRENPUNKTE(C_Info)
{
	npc = djg_2003_verwalter;
	condition = djg_2003_verwalter_ehrenpunkte_condition;
	information = djg_2003_verwalter_ehrenpunkte_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_FUEREHREKAUFEN;
};


func int djg_2003_verwalter_ehrenpunkte_condition()
{
	return TRUE;
};

func void djg_2003_verwalter_ehrenpunkte_info()
{
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
	Info_AddChoice(djg_2003_verwalter_ehrenpunkte,Dialog_Back,djg_2003_verwalter_ehrenpunkte_back);
	if((L2_REVIVE == FALSE) && (((LAGER == 1) && (FRAKTION_L1 == PAL)) || ((LAGER == 2) && (FRAKTION_L2 == PAL))))
	{
		Info_AddChoice(djg_2003_verwalter_ehrenpunkte,b_EhrenpunktString("REVIVE"),djg_2003_verwalter_ehrenpunkte_revive);
	};
	if((L2_VAMPIRSCHLAG == FALSE) && (((LAGER == 1) && (FRAKTION_L1 == TMP)) || ((LAGER == 2) && (FRAKTION_L2 == TMP))))
	{
		Info_AddChoice(djg_2003_verwalter_ehrenpunkte,b_EhrenpunktString("VAMPIRSCHLAG"),djg_2003_verwalter_ehrenpunkte_vampir);
	};
	if((L2_INSTANTKILL == FALSE) && (((LAGER == 1) && (FRAKTION_L1 == DJG)) || ((LAGER == 2) && (FRAKTION_L2 == DJG))))
	{
		Info_AddChoice(djg_2003_verwalter_ehrenpunkte,b_EhrenpunktString("INSTANTKILL"),djg_2003_verwalter_ehrenpunkte_instantkill);
	};
	if((L2_UNTOTEN_SPAWN == FALSE) && (((LAGER == 1) && (FRAKTION_L1 == SKE)) || ((LAGER == 2) && (FRAKTION_L2 == SKE))))
	{
		Info_AddChoice(djg_2003_verwalter_ehrenpunkte,b_EhrenpunktString("UNTOTENSPAWN"),djg_2003_verwalter_ehrenpunkte_untotenspawn);
	};
	if(L2_BONUSHPPERK == FALSE)
	{
		Info_AddChoice(djg_2003_verwalter_ehrenpunkte,b_EhrenpunktString("BONUSHPPERK"),djg_2003_verwalter_ehrenpunkte_bonushpperk);
	};
	Info_AddChoice(djg_2003_verwalter_ehrenpunkte,b_EhrenpunktString("SOELDNER"),djg_2003_verwalter_ehrenpunkte_merc);
	Info_AddChoice(djg_2003_verwalter_ehrenpunkte,b_EhrenpunktString("KING_HEAL"),djg_2003_verwalter_ehrenpunkte_king_heal);
	Info_AddChoice(djg_2003_verwalter_ehrenpunkte,b_EhrenpunktString("KLAUEN"),djg_2003_verwalter_ehrenpunkte_klau);
	Info_AddChoice(djg_2003_verwalter_ehrenpunkte,b_EhrenpunktString("GOLD"),djg_2003_verwalter_ehrenpunkte_gold);
};

func void djg_2003_verwalter_ehrenpunkte_back()
{
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

func void djg_2003_verwalter_ehrenpunkte_revive()
{
	if(L2_EHRENPUNKTE >= REVIVE_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_REVIVE = TRUE;
		L2_EHRENPUNKTE -= REVIVE_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

func void djg_2003_verwalter_ehrenpunkte_vampir()
{
	if(L2_EHRENPUNKTE >= REVIVE_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_VAMPIRSCHLAG = TRUE;
		L2_EHRENPUNKTE -= REVIVE_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

func void djg_2003_verwalter_ehrenpunkte_instantkill()
{
	if(L2_EHRENPUNKTE >= INSTANTKILL_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_INSTANTKILL = TRUE;
		L2_EHRENPUNKTE -= INSTANTKILL_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

func void djg_2003_verwalter_ehrenpunkte_untotenspawn()
{
	if(L2_EHRENPUNKTE >= UNTOTENRESPAWN_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_UNTOTEN_SPAWN = TRUE;
		L2_EHRENPUNKTE -= UNTOTENRESPAWN_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

func void djg_2003_verwalter_ehrenpunkte_bonushpperk()
{
	if(L2_EHRENPUNKTE >= BONUSHPPERK_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_BONUSHPPERK = TRUE;
		L2_EHRENPUNKTE -= BONUSHPPERK_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

func void djg_2003_verwalter_ehrenpunkte_king_heal()
{
	if(L2_EHRENPUNKTE >= KINGHEAL_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		djg_2000_king.attribute[ATR_HITPOINTS] += (djg_2000_king.attribute[ATR_HITPOINTS_MAX] * KING_HEAL_PROZENT) / 100;
		if(djg_2000_king.attribute[ATR_HITPOINTS] > djg_2000_king.attribute[ATR_HITPOINTS_MAX])
		{
			djg_2000_king.attribute[ATR_HITPOINTS] = djg_2000_king.attribute[ATR_HITPOINTS_MAX];
		};
		L2_EHRENPUNKTE -= KINGHEAL_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

func void djg_2003_verwalter_ehrenpunkte_gold()
{
	if(L2_EHRENPUNKTE >= GOLD_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(self,other,ItMi_Gold,GOLD_FUER_EHRENPUNKTE);
		L2_EHRENPUNKTE -= GOLD_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

func void djg_2003_verwalter_ehrenpunkte_merc()
{
	if(L2_EHRENPUNKTE >= MERC_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L2_CURRENT_MERCLEVEL = 4;
		B_SpawnManySoeldner(GIL_DJG,MERC_FUER_EHRENPUNKTE);
		L2_EHRENPUNKTE -= MERC_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

func void djg_2003_verwalter_ehrenpunkte_klau()
{
	var int klaugold;
	if(L2_EHRENPUNKTE >= KLAU_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(L1_HAVEGOLD >= KLAU_FUER_EHRENPUNKTE)
		{
			klaugold = KLAU_FUER_EHRENPUNKTE;
			L1_HAVEGOLD = L1_HAVEGOLD - KLAU_FUER_EHRENPUNKTE;
		}
		else
		{
			klaugold = L1_HAVEGOLD;
			L1_HAVEGOLD = 0;
		};
		B_GiveInvItems(self,other,ItMi_Gold,klaugold);
		L2_EHRENPUNKTE -= KLAU_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(djg_2003_verwalter_ehrenpunkte);
};

