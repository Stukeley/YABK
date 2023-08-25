
instance PAL_1003_VERWALTER_EXIT(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_exit_condition;
	information = pal_1003_verwalter_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int pal_1003_verwalter_exit_condition()
{
	return TRUE;
};

func void pal_1003_verwalter_exit_info()
{
	AI_StopProcessInfos(self);
};


instance PAL_1003_VERWALTER_WEG_AUFTEILUNG(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_weg_aufteilung_condition;
	information = pal_1003_verwalter_weg_aufteilung_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SOLDIERWAYS;
};


func int pal_1003_verwalter_weg_aufteilung_condition()
{
	if(MAP == MACHTL_MAP)
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_weg_aufteilung_info()
{
	Info_ClearChoices(pal_1003_verwalter_weg_aufteilung);
	Info_AddChoice(pal_1003_verwalter_weg_aufteilung,Dialog_Back,pal_1003_verwalter_weg_aufteilung_back);
	Info_AddChoice(pal_1003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY5,pal_1003_verwalter_weg_aufteilung_keiner_nach_1);
	Info_AddChoice(pal_1003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY4,pal_1003_verwalter_weg_aufteilung_25_nach_1);
	Info_AddChoice(pal_1003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY3,pal_1003_verwalter_weg_aufteilung_50_nach_1);
	Info_AddChoice(pal_1003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY2,pal_1003_verwalter_weg_aufteilung_75_nach_1);
	Info_AddChoice(pal_1003_verwalter_weg_aufteilung,PRINT_SOLDIERWAY1,pal_1003_verwalter_weg_aufteilung_alle_nach_1);
};

func void pal_1003_verwalter_weg_aufteilung_back()
{
	Info_ClearChoices(pal_1003_verwalter_weg_aufteilung);
};

func void pal_1003_verwalter_weg_aufteilung_alle_nach_1()
{
	L1_WEGAUFTEILUNG = 0;
	Info_ClearChoices(pal_1003_verwalter_weg_aufteilung);
};

func void pal_1003_verwalter_weg_aufteilung_75_nach_1()
{
	L1_WEGAUFTEILUNG = 1;
	Info_ClearChoices(pal_1003_verwalter_weg_aufteilung);
};

func void pal_1003_verwalter_weg_aufteilung_50_nach_1()
{
	L1_WEGAUFTEILUNG = 2;
	Info_ClearChoices(pal_1003_verwalter_weg_aufteilung);
};

func void pal_1003_verwalter_weg_aufteilung_25_nach_1()
{
	L1_WEGAUFTEILUNG = 3;
	Info_ClearChoices(pal_1003_verwalter_weg_aufteilung);
};

func void pal_1003_verwalter_weg_aufteilung_keiner_nach_1()
{
	L1_WEGAUFTEILUNG = 4;
	Info_ClearChoices(pal_1003_verwalter_weg_aufteilung);
};


instance PAL_1003_VERWALTER_IMPROVE_WEAPONS(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_improve_weapons_condition;
	information = pal_1003_verwalter_improve_weapons_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_IMPROVESOLDIERWEAPONS;
};


func int pal_1003_verwalter_improve_weapons_condition()
{
	if(L1_USED_WEAPON < MAXWEAPONSTEP)
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_improve_weapons_info()
{
	if((Npc_HasItems(hero,ItMi_Gold) >= 50) && b_hasupgradeweapons())
	{
		B_GiveInvItems(other,self,itmw_sword_pal,Npc_HasItems(hero,itmw_sword_pal));
		B_GiveInvItems(other,self,itmw_langschwert_pal,Npc_HasItems(hero,itmw_langschwert_pal));
		B_GiveInvItems(other,self,itmw_elbastardo_pal,Npc_HasItems(hero,itmw_elbastardo_pal));
		B_GiveInvItems(other,self,itmw_sword_djg,Npc_HasItems(hero,itmw_sword_djg));
		B_GiveInvItems(other,self,itmw_langschwert_djg,Npc_HasItems(hero,itmw_langschwert_djg));
		B_GiveInvItems(other,self,itmw_elbastardo_djg,Npc_HasItems(hero,itmw_elbastardo_djg));
		B_GiveInvItems(other,self,ItMi_Gold,50);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L1_USED_WEAPON += 1;
		if(L1_USED_WEAPON >= MAXWEAPONSTEP)
		{
			AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_03");	//Twój kowal nie mo¿e tworzyæ lepszych broni! Musisz zacz¹æ produkcjê czegoœ innego.
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_04");	//Nie masz wystarczaj¹co towaru.
	};
};


instance PAL_1003_VERWALTER_IMPROVE_ARMOR(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_improve_armor_condition;
	information = pal_1003_verwalter_improve_armor_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_IMPROVESOLDIERARMOR;
};


func int pal_1003_verwalter_improve_armor_condition()
{
	if(L1_USED_ARMOR < MAXARMORSTEP)
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_improve_armor_info()
{
	if((Npc_HasItems(hero,ItMi_Gold) >= 50) && b_hasupgradearmors())
	{
		B_GiveInvItems(other,self,ItAr_MIL_M,Npc_HasItems(hero,ItAr_MIL_M) - 1);
		B_GiveInvItems(other,self,itar_skemil_m,Npc_HasItems(hero,itar_skemil_m));
		B_GiveInvItems(other,self,itar_sld_M,Npc_HasItems(hero,itar_sld_M) - 1);
		B_GiveInvItems(other,self,itar_tmp_l,Npc_HasItems(hero,itar_tmp_l) - 1);
		B_GiveInvItems(other,self,ItAr_PAL_M,Npc_HasItems(hero,ItAr_PAL_M) - 1);
		B_GiveInvItems(other,self,itar_skepal_m,Npc_HasItems(hero,itar_skepal_m));
		B_GiveInvItems(other,self,itar_djg_l,Npc_HasItems(hero,itar_djg_l) - 1);
		B_GiveInvItems(other,self,itar_tmp_m,Npc_HasItems(hero,itar_tmp_m) - 1);
		B_GiveInvItems(other,self,ItAr_PAl_H,Npc_HasItems(hero,ItAr_PAl_H) - 1);
		B_GiveInvItems(other,self,itar_skepal_h,Npc_HasItems(hero,itar_skepal_h));
		B_GiveInvItems(other,self,itar_djg_h,Npc_HasItems(hero,itar_djg_h) - 1);
		B_GiveInvItems(other,self,itar_tmp_h,Npc_HasItems(hero,itar_tmp_h) - 1);
		B_GiveInvItems(other,self,ItMi_Gold,50);
		AI_EquipBestArmor(other);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(LAGER == 1)
		{
			L1_USED_ARMOR += 1;
		}
		else
		{
			L2_USED_ARMOR += 2;
		};
		if(L1_USED_ARMOR >= MAXARMORSTEP)
		{
			AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_ARMOR_Info_06_02");	//Twój kowal nie mo¿e stworzyæ lepszej zbroi. Musisz zacz¹æ produkcjê czegoœ innego.
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_04");	//Nie masz wystarczaj¹co towaru.
	};
};


instance PAL_1003_VERWALTER_IMPROVE_LEVEL_1(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_improve_level_1_condition;
	information = pal_1003_verwalter_improve_level_1_info;
	important = FALSE;
	permanent = TRUE;
	description = b_buildimprovelevelstring(1);
};


func int pal_1003_verwalter_improve_level_1_condition()
{
	if(((L1_SOLDIER_LEVEL == 1) && (LAGER == 1)) || ((L2_SOLDIER_LEVEL == 1) && (LAGER == 2)))
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_improve_level_1_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L1_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L1_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(LAGER == 1)
		{
			L1_SOLDIER_LEVEL += 1;
		}
		else if(LAGER == 2)
		{
			L2_SOLDIER_LEVEL += 1;
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance PAL_1003_VERWALTER_IMPROVE_LEVEL_2(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_improve_level_2_condition;
	information = pal_1003_verwalter_improve_level_2_info;
	important = FALSE;
	permanent = TRUE;
	description = b_buildimprovelevelstring(2);
};


func int pal_1003_verwalter_improve_level_2_condition()
{
	if(((L1_SOLDIER_LEVEL == 2) && (LAGER == 1)) || ((L2_SOLDIER_LEVEL == 2) && (LAGER == 2)))
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_improve_level_2_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L1_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L1_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(LAGER == 1)
		{
			L1_SOLDIER_LEVEL += 1;
		}
		else if(LAGER == 2)
		{
			L2_SOLDIER_LEVEL += 1;
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance PAL_1003_VERWALTER_IMPROVE_LEVEL_3(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_improve_level_3_condition;
	information = pal_1003_verwalter_improve_level_3_info;
	important = FALSE;
	permanent = TRUE;
	description = b_buildimprovelevelstring(3);
};


func int pal_1003_verwalter_improve_level_3_condition()
{
	if(((L1_SOLDIER_LEVEL == 3) && (LAGER == 1)) || ((L2_SOLDIER_LEVEL == 3) && (LAGER == 2)))
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_improve_level_3_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L1_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L1_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(LAGER == 1)
		{
			L1_SOLDIER_LEVEL += 1;
		}
		else if(LAGER == 2)
		{
			L2_SOLDIER_LEVEL += 1;
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance PAL_1003_VERWALTER_IMPROVE_LEVEL_4(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_improve_level_4_condition;
	information = pal_1003_verwalter_improve_level_4_info;
	important = FALSE;
	permanent = TRUE;
	description = b_buildimprovelevelstring(4);
};


func int pal_1003_verwalter_improve_level_4_condition()
{
	if(((L1_SOLDIER_LEVEL == 4) && (LAGER == 1)) || ((L2_SOLDIER_LEVEL == 4) && (LAGER == 2)))
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_improve_level_4_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L1_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L1_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L1_SOLDIER_LEVEL += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance PAL_1003_VERWALTER_IMPROVE_LEVEL_5(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_improve_level_5_condition;
	information = pal_1003_verwalter_improve_level_5_info;
	important = FALSE;
	permanent = TRUE;
	description = b_buildimprovelevelstring(5);
};


func int pal_1003_verwalter_improve_level_5_condition()
{
	if(((L1_SOLDIER_LEVEL == 5) && (LAGER == 1)) || ((L2_SOLDIER_LEVEL == 5) && (LAGER == 2)))
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_improve_level_5_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L1_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L1_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(LAGER == 1)
		{
			L1_SOLDIER_LEVEL += 1;
		}
		else if(LAGER == 2)
		{
			L2_SOLDIER_LEVEL += 1;
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance PAL_1003_VERWALTER_IMPROVE_LEVEL_6(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_improve_level_6_condition;
	information = pal_1003_verwalter_improve_level_6_info;
	important = FALSE;
	permanent = TRUE;
	description = b_buildimprovelevelstring(6);
};


func int pal_1003_verwalter_improve_level_6_condition()
{
	if(((L1_SOLDIER_LEVEL == 6) && (LAGER == 1)) || ((L2_SOLDIER_LEVEL == 6) && (LAGER == 2)))
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_improve_level_6_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L1_SOLDIER_LEVEL * COSTPERLEVELSTEP))
	{
		B_GiveInvItems(other,self,ItMi_Gold,L1_SOLDIER_LEVEL * COSTPERLEVELSTEP);
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(LAGER == 1)
		{
			L1_SOLDIER_LEVEL += 1;
		}
		else if(LAGER == 2)
		{
			L2_SOLDIER_LEVEL += 1;
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance PAL_1003_VERWALTER_SOELDNER(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_soeldner_condition;
	information = pal_1003_verwalter_soeldner_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETMERCS;
};


func int pal_1003_verwalter_soeldner_condition()
{
	if(NOMERCS_ON == FALSE)
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_soeldner_info()
{
	Info_ClearChoices(pal_1003_verwalter_soeldner);
	Info_AddChoice(pal_1003_verwalter_soeldner,Dialog_Back,pal_1003_verwalter_soeldner_back);
	Info_AddChoice(pal_1003_verwalter_soeldner,b_getcoststring_vielesoeldner(PRINT_MANYMERCS,SOELDNERLEVEL4_COST),pal_1003_verwalter_soeldner_level_4_many);
	Info_AddChoice(pal_1003_verwalter_soeldner,b_getcoststring(PRINT_SENDMERC4,SOELDNERLEVEL4_COST),pal_1003_verwalter_soeldner_level_4);
	Info_AddChoice(pal_1003_verwalter_soeldner,b_getcoststring(PRINT_SENDMERC3,SOELDNERLEVEL3_COST),pal_1003_verwalter_soeldner_level_3);
	Info_AddChoice(pal_1003_verwalter_soeldner,b_getcoststring(PRINT_SENDMERC2,SOELDNERLEVEL2_COST),pal_1003_verwalter_soeldner_level_2);
	Info_AddChoice(pal_1003_verwalter_soeldner,b_getcoststring(PRINT_SENDMERC1,SOELDNERLEVEL1_COST),pal_1003_verwalter_soeldner_level_1);
};

func void pal_1003_verwalter_soeldner_back()
{
	Info_ClearChoices(pal_1003_verwalter_soeldner);
};

func void pal_1003_verwalter_soeldner_level_4_many()
{
	var int anzahl;
	if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 30))
	{
		anzahl = 30;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 29))
	{
		anzahl = 29;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 28))
	{
		anzahl = 28;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 27))
	{
		anzahl = 27;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 26))
	{
		anzahl = 26;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 25))
	{
		anzahl = 25;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 24))
	{
		anzahl = 24;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 23))
	{
		anzahl = 23;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 22))
	{
		anzahl = 22;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 21))
	{
		anzahl = 21;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 20))
	{
		anzahl = 20;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 19))
	{
		anzahl = 19;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 18))
	{
		anzahl = 18;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 17))
	{
		anzahl = 17;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 16))
	{
		anzahl = 16;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 15))
	{
		anzahl = 15;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 14))
	{
		anzahl = 14;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 13))
	{
		anzahl = 13;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 12))
	{
		anzahl = 12;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 11))
	{
		anzahl = 11;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 10))
	{
		anzahl = 10;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 9))
	{
		anzahl = 9;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 8))
	{
		anzahl = 8;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 7))
	{
		anzahl = 7;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 6))
	{
		anzahl = 6;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 5))
	{
		anzahl = 5;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 4))
	{
		anzahl = 4;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 3))
	{
		anzahl = 3;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 2))
	{
		anzahl = 2;
	}
	else if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * 1))
	{
		anzahl = 1;
	};
	Print(ConcatStrings(IntToString(anzahl),PRINT_SENDMERCS));
	if(Npc_HasItems(hero,ItMi_Gold) >= (SOELDNERLEVEL4_COST * anzahl))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,SOELDNERLEVEL4_COST * anzahl);
		L1_CURRENT_MERCLEVEL = 4;
		b_spawnmanysoeldner(GIL_PAL,anzahl);
		REACTONMERCS = REACTONMERCS + anzahl;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_soeldner);
};

func void pal_1003_verwalter_soeldner_level_4()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SOELDNERLEVEL4_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,SOELDNERLEVEL4_COST);
		L1_CURRENT_MERCLEVEL = 4;
		b_spawnsoeldner(GIL_PAL);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_soeldner);
};

func void pal_1003_verwalter_soeldner_level_3()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SOELDNERLEVEL3_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,SOELDNERLEVEL3_COST);
		L1_CURRENT_MERCLEVEL = 3;
		b_spawnsoeldner(GIL_PAL);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_soeldner);
};

func void pal_1003_verwalter_soeldner_level_2()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SOELDNERLEVEL2_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,SOELDNERLEVEL2_COST);
		L1_CURRENT_MERCLEVEL = 2;
		b_spawnsoeldner(GIL_PAL);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_soeldner);
};

func void pal_1003_verwalter_soeldner_level_1()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SOELDNERLEVEL1_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,SOELDNERLEVEL1_COST);
		L1_CURRENT_MERCLEVEL = 1;
		b_spawnsoeldner(GIL_PAL);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_soeldner);
};


instance PAL_1003_VERWALTER_WACHEN(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_wachen_condition;
	information = pal_1003_verwalter_wachen_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETWACHEN;
};


func int pal_1003_verwalter_wachen_condition()
{
	if(((pal_1160_wache.attribute[ATR_HITPOINTS] == 0) || (pal_1161_wache.attribute[ATR_HITPOINTS] == 0)) && ((MAP == MAP01) || (MAP == VARUS_MAP)))
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_wachen_info()
{
	Info_ClearChoices(pal_1003_verwalter_wachen);
	Info_AddChoice(pal_1003_verwalter_wachen,Dialog_Back,pal_1003_verwalter_wachen_back);
	if(pal_1161_wache.attribute[ATR_HITPOINTS] == 0)
	{
		Info_AddChoice(pal_1003_verwalter_wachen,b_getcoststring(PRINT_GETWACHE2,WACHE_COST),pal_1003_verwalter_wachen_ebene_2);
	};
	if(pal_1160_wache.attribute[ATR_HITPOINTS] == 0)
	{
		Info_AddChoice(pal_1003_verwalter_wachen,b_getcoststring(PRINT_GETWACHE1,WACHE_COST),pal_1003_verwalter_wachen_ebene_1);
	};
};

func void pal_1003_verwalter_wachen_back()
{
	Info_ClearChoices(pal_1003_verwalter_wachen);
};

func void pal_1003_verwalter_wachen_ebene_1()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= WACHE_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,WACHE_COST);
		Wld_InsertNpc(pal_1160_wache,"L1_WACHE_01");
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_wachen);
};

func void pal_1003_verwalter_wachen_ebene_2()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= WACHE_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(other,self,ItMi_Gold,WACHE_COST);
		Wld_InsertNpc(pal_1161_wache,"L1_WACHE_02");
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_wachen);
};


instance PAL_1003_VERWALTER_HOEHLEN_SOELDNER(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_hoehlen_soeldner_condition;
	information = pal_1003_verwalter_hoehlen_soeldner_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETHOEHLENSOELDNER;
};


func int pal_1003_verwalter_hoehlen_soeldner_condition()
{
	if(MAP == VARUS_MAP)
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_hoehlen_soeldner_info()
{
	Info_ClearChoices(pal_1003_verwalter_hoehlen_soeldner);
	Info_AddChoice(pal_1003_verwalter_hoehlen_soeldner,Dialog_Back,pal_1003_verwalter_hoehlen_soeldner_back);
	if(L1_LEBENDEHOEHLENSOELDNER <= (MAXHOEHLENWACHEN - 5))
	{
		Info_AddChoice(pal_1003_verwalter_hoehlen_soeldner,b_getcoststring(PRINT_5HOEHLENSOELDNER,5 * HOEHLENSOELDNER),pal_1003_verwalter_hoehlen_soeldner_5_soeld);
	};
	if(L1_LEBENDEHOEHLENSOELDNER <= (MAXHOEHLENWACHEN - 3))
	{
		Info_AddChoice(pal_1003_verwalter_hoehlen_soeldner,b_getcoststring(PRINT_3HOEHLENSOELDNER,3 * HOEHLENSOELDNER),pal_1003_verwalter_hoehlen_soeldner_3_soeld);
	};
	if(L1_LEBENDEHOEHLENSOELDNER <= (MAXHOEHLENWACHEN - 1))
	{
		Info_AddChoice(pal_1003_verwalter_hoehlen_soeldner,b_getcoststring(PRINT_1HOEHLENSOELDNER,HOEHLENSOELDNER),pal_1003_verwalter_hoehlen_soeldner_1_soeld);
	};
};

func void pal_1003_verwalter_hoehlen_soeldner_back()
{
	Info_ClearChoices(pal_1003_verwalter_hoehlen_soeldner);
};

func void pal_1003_verwalter_hoehlen_soeldner_1_soeld()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HOEHLENSOELDNER)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,HOEHLENSOELDNER);
		L1_LEBENDEHOEHLENSOELDNER += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_hoehlen_soeldner);
};

func void pal_1003_verwalter_hoehlen_soeldner_3_soeld()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (HOEHLENSOELDNER * 3))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,HOEHLENSOELDNER * 3);
		L1_LEBENDEHOEHLENSOELDNER += 3;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_hoehlen_soeldner);
};

func void pal_1003_verwalter_hoehlen_soeldner_5_soeld()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (HOEHLENSOELDNER * 5))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1190_hoehlensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,HOEHLENSOELDNER * 5);
		L1_LEBENDEHOEHLENSOELDNER += 5;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_hoehlen_soeldner);
};


instance PAL_1003_VERWALTER_MINEN_SOELDNER(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_minen_soeldner_condition;
	information = pal_1003_verwalter_minen_soeldner_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_BIGMINEMERCS;
};


func int pal_1003_verwalter_minen_soeldner_condition()
{
	if((MAP == MACHTL_MAP) || (MAP == VARUS_MAP))
	{
		return TRUE;
	};
};

func void pal_1003_verwalter_minen_soeldner_info()
{
	Info_ClearChoices(pal_1003_verwalter_minen_soeldner);
	Info_AddChoice(pal_1003_verwalter_minen_soeldner,Dialog_Back,pal_1003_verwalter_minen_soeldner_back);
	if(L1_MINENLEUTE <= (MAXMINENLEUTE - 5))
	{
		Info_AddChoice(pal_1003_verwalter_minen_soeldner,b_getcoststring(PRINT_5MINENWACHE,5 * MINENWACHE),pal_1003_verwalter_minen_soeldner_5_wache);
	};
	if(L1_MINENLEUTE <= (MAXMINENLEUTE - 3))
	{
		Info_AddChoice(pal_1003_verwalter_minen_soeldner,b_getcoststring(PRINT_3MINENWACHE,3 * MINENWACHE),pal_1003_verwalter_minen_soeldner_3_wache);
	};
	if(L1_MINENLEUTE <= (MAXMINENLEUTE - 1))
	{
		Info_AddChoice(pal_1003_verwalter_minen_soeldner,b_getcoststring(PRINT_1MINENWACHE,MINENWACHE),pal_1003_verwalter_minen_soeldner_wache);
	};
	if(L1_MINENLEUTE <= (MAXMINENLEUTE - 2))
	{
		Info_AddChoice(pal_1003_verwalter_minen_soeldner,b_getcoststring(PRINT_2MINENARBEITER,MINENARBEITERSOELDNER * 2),pal_1003_verwalter_minen_soeldner_2_arbeiter);
	};
	if(L1_MINENLEUTE <= (MAXMINENLEUTE - 1))
	{
		Info_AddChoice(pal_1003_verwalter_minen_soeldner,b_getcoststring(PRINT_1MINENARBEITER,MINENARBEITERSOELDNER),pal_1003_verwalter_minen_soeldner_arbeiter);
	};
};

func void pal_1003_verwalter_minen_soeldner_back()
{
	Info_ClearChoices(pal_1003_verwalter_minen_soeldner);
};

func void pal_1003_verwalter_minen_soeldner_wache()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MINENWACHE)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,MINENWACHE);
		L1_LEBENDEMINENWACHEN += 1;
		L1_MINENLEUTE += 1;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_minen_soeldner);
};

func void pal_1003_verwalter_minen_soeldner_3_wache()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (MINENWACHE * 3))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,MINENWACHE * 3);
		L1_LEBENDEMINENWACHEN += 3;
		L1_MINENLEUTE += 3;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_minen_soeldner);
};

func void pal_1003_verwalter_minen_soeldner_5_wache()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (MINENWACHE * 5))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1180_minensoeldner,SPAWNWAYPOINT);
		B_GiveInvItems(other,self,ItMi_Gold,MINENWACHE * 5);
		L1_LEBENDEMINENWACHEN += 5;
		L1_MINENLEUTE += 5;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_minen_soeldner);
};

func void pal_1003_verwalter_minen_soeldner_arbeiter()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MINENARBEITERSOELDNER)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
		L1_LEBENDEMINENARBEITER += 1;
		L1_MINENLEUTE += 1;
		B_GiveInvItems(other,self,ItMi_Gold,MINENARBEITERSOELDNER);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_minen_soeldner);
};

func void pal_1003_verwalter_minen_soeldner_2_arbeiter()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (MINENARBEITERSOELDNER * 2))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
		L1_LEBENDEMINENARBEITER += 2;
		L1_MINENLEUTE += 2;
		B_GiveInvItems(other,self,ItMi_Gold,MINENARBEITERSOELDNER * 2);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_minen_soeldner);
};

func void pal_1003_verwalter_minen_soeldner_4_arbeiter()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (MINENARBEITERSOELDNER * 4))
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
		Wld_InsertNpc(pal_1070_minenarbeitersoeldner,SPAWNWAYPOINT);
		L1_LEBENDEMINENARBEITER += 4;
		L1_MINENLEUTE += 4;
		B_GiveInvItems(other,self,ItMi_Gold,MINENARBEITERSOELDNER * 4);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1003_verwalter_minen_soeldner);
};


instance PAL_1003_VERWALTER_EHRENPUNKTE(C_Info)
{
	npc = pal_1003_verwalter;
	condition = pal_1003_verwalter_ehrenpunkte_condition;
	information = pal_1003_verwalter_ehrenpunkte_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_FUEREHREKAUFEN;
};


func int pal_1003_verwalter_ehrenpunkte_condition()
{
	return TRUE;
};

func void pal_1003_verwalter_ehrenpunkte_info()
{
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
	Info_AddChoice(pal_1003_verwalter_ehrenpunkte,Dialog_Back,pal_1003_verwalter_ehrenpunkte_back);
	if((L1_REVIVE == FALSE) && (((LAGER == 2) && (FRAKTION_L2 == Pal)) || ((LAGER == 1) && (FRAKTION_L1 == Pal))))
	{
		Info_AddChoice(pal_1003_verwalter_ehrenpunkte,b_ehrenpunktstring("REVIVE"),pal_1003_verwalter_ehrenpunkte_revive);
	};
	if((L1_VAMPIRSCHLAG == FALSE) && (((LAGER == 2) && (FRAKTION_L2 == TMP)) || ((LAGER == 1) && (FRAKTION_L1 == TMP))))
	{
		Info_AddChoice(pal_1003_verwalter_ehrenpunkte,b_ehrenpunktstring("VAMPIRSCHLAG"),pal_1003_verwalter_ehrenpunkte_vampir);
	};
	if((L1_INSTANTKILL == FALSE) && (((LAGER == 2) && (FRAKTION_L2 == DJG)) || ((LAGER == 1) && (FRAKTION_L1 == DJG))))
	{
		Info_AddChoice(pal_1003_verwalter_ehrenpunkte,b_ehrenpunktstring("INSTANTKILL"),pal_1003_verwalter_ehrenpunkte_instantkill);
	};
	if((L1_UNTOTEN_SPAWN == FALSE) && (((LAGER == 2) && (FRAKTION_L2 == SKE)) || ((LAGER == 1) && (FRAKTION_L1 == SKE))))
	{
		Info_AddChoice(pal_1003_verwalter_ehrenpunkte,b_ehrenpunktstring("UNTOTENSPAWN"),pal_1003_verwalter_ehrenpunkte_untotenspawn);
	};
	if(L1_UNSTERBLICHKEIT == FALSE)
	{
		Info_AddChoice(pal_1003_verwalter_ehrenpunkte,b_ehrenpunktstring("UNSTERBLICHKEIT"),pal_1003_verwalter_ehrenpunkte_unsterblichkeit);
	};
	Info_AddChoice(pal_1003_verwalter_ehrenpunkte,b_ehrenpunktstring("SOELDNER"),pal_1003_verwalter_ehrenpunkte_merc);
	Info_AddChoice(pal_1003_verwalter_ehrenpunkte,b_ehrenpunktstring("KING_HEAL"),pal_1003_verwalter_ehrenpunkte_king_heal);
	Info_AddChoice(pal_1003_verwalter_ehrenpunkte,b_ehrenpunktstring("KLAUEN"),pal_1003_verwalter_ehrenpunkte_klau);
	Info_AddChoice(pal_1003_verwalter_ehrenpunkte,b_ehrenpunktstring("GOLD"),pal_1003_verwalter_ehrenpunkte_gold);
};

func void pal_1003_verwalter_ehrenpunkte_back()
{
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

func void pal_1003_verwalter_ehrenpunkte_revive()
{
	if(L1_EHRENPUNKTE >= REVIVE_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L1_REVIVE = TRUE;
		L1_EHRENPUNKTE -= REVIVE_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

func void pal_1003_verwalter_ehrenpunkte_vampir()
{
	if(L1_EHRENPUNKTE >= REVIVE_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L1_VAMPIRSCHLAG = TRUE;
		L1_EHRENPUNKTE -= REVIVE_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

func void pal_1003_verwalter_ehrenpunkte_instantkill()
{
	if(L1_EHRENPUNKTE >= INSTANTKILL_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L1_INSTANTKILL = TRUE;
		L1_EHRENPUNKTE -= INSTANTKILL_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

func void pal_1003_verwalter_ehrenpunkte_untotenspawn()
{
	if(L1_EHRENPUNKTE >= UNTOTENRESPAWN_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L1_UNTOTEN_SPAWN = TRUE;
		L1_EHRENPUNKTE -= UNTOTENRESPAWN_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

func void pal_1003_verwalter_ehrenpunkte_unsterblichkeit()
{
	if(L1_EHRENPUNKTE >= UNSTERBLICHKEIT_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		b_mach_unsterblich_1();
		L1_EHRENPUNKTE -= UNSTERBLICHKEIT_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

func void pal_1003_verwalter_ehrenpunkte_king_heal()
{
	if(L1_EHRENPUNKTE >= KINGHEAL_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		pal_1000_king.attribute[ATR_HITPOINTS] += (pal_1000_king.attribute[ATR_HITPOINTS_MAX] * KING_HEAL_PROZENT) / 100;
		if(pal_1000_king.attribute[ATR_HITPOINTS] > pal_1000_king.attribute[ATR_HITPOINTS_MAX])
		{
			pal_1000_king.attribute[ATR_HITPOINTS] = pal_1000_king.attribute[ATR_HITPOINTS_MAX];
		};
		L1_EHRENPUNKTE -= KINGHEAL_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

func void pal_1003_verwalter_ehrenpunkte_gold()
{
	if(L1_EHRENPUNKTE >= GOLD_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		B_GiveInvItems(self,other,ItMi_Gold,GOLD_FUER_EHRENPUNKTE);
		L1_EHRENPUNKTE -= GOLD_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

func void pal_1003_verwalter_ehrenpunkte_merc()
{
	if(L1_EHRENPUNKTE >= MERC_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		L1_CURRENT_MERCLEVEL = 4;
		b_spawnmanysoeldner(GIL_PAL,MERC_FUER_EHRENPUNKTE);
		L1_EHRENPUNKTE -= MERC_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

func void pal_1003_verwalter_ehrenpunkte_klau()
{
	var int klaugold;
	if(L1_EHRENPUNKTE >= KLAU_COST)
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_WEAPONS_Info_06_02");	//Dobrze.
		if(L2_HAVEGOLD >= KLAU_FUER_EHRENPUNKTE)
		{
			klaugold = KLAU_FUER_EHRENPUNKTE;
			L2_HAVEGOLD = L2_HAVEGOLD - KLAU_FUER_EHRENPUNKTE;
		}
		else
		{
			L2_HAVEGOLD = 0;
			klaugold = L2_HAVEGOLD;
		};
		B_GiveInvItems(self,other,ItMi_Gold,klaugold);
		L1_EHRENPUNKTE -= KLAU_COST;
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_EHRENPUNKTE_REVIVE_06_01");	//Nie masz wystarczaj¹co punktów honoru!
	};
	Info_ClearChoices(pal_1003_verwalter_ehrenpunkte);
};

