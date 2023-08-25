
instance VLK_666_SPIELLEITER_EXIT(C_Info)
{
	npc = vlk_666_spielleiter;
	condition = vlk_666_spielleiter_exit_condition;
	information = vlk_666_spielleiter_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int vlk_666_spielleiter_exit_condition()
{
	return TRUE;
};

func void vlk_666_spielleiter_exit_info()
{
	AI_StopProcessInfos(self);
};


instance VLK_666_SPIELLEITER_IMPORTANT(C_Info)
{
	npc = vlk_666_spielleiter;
	condition = vlk_666_spielleiter_important_condition;
	information = vlk_666_spielleiter_important_info;
	important = TRUE;
	permanent = FALSE;
};


func int vlk_666_spielleiter_important_condition()
{
	return TRUE;
};

func void vlk_666_spielleiter_important_info()
{
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_Info_07_01");	//Witaj w Bitwie Królów!
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_Info_07_02");	//Wybierz poziom trudnoœci.
	Info_ClearChoices(vlk_666_spielleiter_important);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_HORROR,vlk_666_spielleiter_important_horror);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_HEAVY,vlk_666_spielleiter_important_schwer);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_NORMAL,vlk_666_spielleiter_important_normal);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_EASY,vlk_666_spielleiter_important_leicht);
};

func void vlk_666_spielleiter_important_leicht()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz obóz, w którym chcesz graæ:
	SCHWIERIGKEIT = DIFF_LIGHT;
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_BLUECAMP,vlk_666_spielleiter_important_lager_2);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_REDCAMP,vlk_666_spielleiter_important_lager_1);
};

func void vlk_666_spielleiter_important_normal()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz obóz, w którym chcesz graæ:
	SCHWIERIGKEIT = DIFF_NORMAL;
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_BLUECAMP,vlk_666_spielleiter_important_lager_2);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_REDCAMP,vlk_666_spielleiter_important_lager_1);
};

func void vlk_666_spielleiter_important_schwer()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz obóz, w którym chcesz graæ:
	SCHWIERIGKEIT = DIFF_HEAVY;
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_BLUECAMP,vlk_666_spielleiter_important_lager_2);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_REDCAMP,vlk_666_spielleiter_important_lager_1);
};

func void vlk_666_spielleiter_important_horror()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz obóz, w którym chcesz graæ:
	SCHWIERIGKEIT = DIFF_HORROR;
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_BLUECAMP,vlk_666_spielleiter_important_lager_2);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_REDCAMP,vlk_666_spielleiter_important_lager_1);
};

func void vlk_666_spielleiter_important_lager_1()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	LAGER = 1;
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LAGER_1_07_01");	//Wybierz grupê, któr¹ chcesz graæ:
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_SKEDESCRIPTION,vlk_666_spielleiter_important_ske);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_TMPDESCRIPTION,vlk_666_spielleiter_important_tmp);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_DJGDESCRIPTION,vlk_666_spielleiter_important_djg);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_PALDESCRIPTION,vlk_666_spielleiter_important_pal);
};

func void vlk_666_spielleiter_important_lager_2()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	LAGER = 2;
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LAGER_1_07_01");	//Wybierz grupê, któr¹ chcesz graæ:
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_SKEDESCRIPTION,vlk_666_spielleiter_important_ske);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_TMPDESCRIPTION,vlk_666_spielleiter_important_tmp);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_DJGDESCRIPTION,vlk_666_spielleiter_important_djg);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_PALDESCRIPTION,vlk_666_spielleiter_important_pal);
};

func void vlk_666_spielleiter_important_pal()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = Pal;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = Pal;
	};
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz pójdŸ do obrazu mapy, w której chcesz graæ.
	b_otherteamfraktion();
	AI_StopProcessInfos(self);
};

func void vlk_666_spielleiter_important_djg()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = DJG;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = DJG;
	};
	b_otherteamfraktion();
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz pójdŸ do obrazu mapy, w której chcesz graæ.
	AI_StopProcessInfos(self);
};

func void vlk_666_spielleiter_important_tmp()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = TMP;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = TMP;
	};
	b_otherteamfraktion();
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz pójdŸ do obrazu mapy, w której chcesz graæ.
	AI_StopProcessInfos(self);
};

func void vlk_666_spielleiter_important_ske()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = SKE;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = SKE;
	};
	b_otherteamfraktion();
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz pójdŸ do obrazu mapy, w której chcesz graæ.
	AI_StopProcessInfos(self);
};


instance VLK_666_SPIELLEITER_DIFFICULTY(C_Info)
{
	npc = vlk_666_spielleiter;
	condition = vlk_666_spielleiter_difficulty_condition;
	information = vlk_666_spielleiter_difficulty_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_DECIDEDIFFICULTY;
};


func int vlk_666_spielleiter_difficulty_condition()
{
	return TRUE;
};

func void vlk_666_spielleiter_difficulty_info()
{
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_Info_07_02");	//Wybierz poziom trudnoœci.
	Info_ClearChoices(vlk_666_spielleiter_difficulty);
	Info_AddChoice(vlk_666_spielleiter_difficulty,PRINT_HORROR,vlk_666_spielleiter_difficulty_horror);
	Info_AddChoice(vlk_666_spielleiter_difficulty,PRINT_HEAVY,vlk_666_spielleiter_difficulty_schwer);
	Info_AddChoice(vlk_666_spielleiter_difficulty,PRINT_NORMAL,vlk_666_spielleiter_difficulty_normal);
	Info_AddChoice(vlk_666_spielleiter_difficulty,PRINT_EASY,vlk_666_spielleiter_difficulty_leicht);
};

func void vlk_666_spielleiter_difficulty_leicht()
{
	Info_ClearChoices(vlk_666_spielleiter_difficulty);
	SCHWIERIGKEIT = DIFF_LIGHT;
};

func void vlk_666_spielleiter_difficulty_normal()
{
	Info_ClearChoices(vlk_666_spielleiter_difficulty);
	SCHWIERIGKEIT = DIFF_NORMAL;
};

func void vlk_666_spielleiter_difficulty_schwer()
{
	Info_ClearChoices(vlk_666_spielleiter_difficulty);
	SCHWIERIGKEIT = DIFF_HEAVY;
};

func void vlk_666_spielleiter_difficulty_horror()
{
	Info_ClearChoices(vlk_666_spielleiter_difficulty);
	SCHWIERIGKEIT = DIFF_HORROR;
};


instance VLK_666_SPIELLEITER_FRAKTION(C_Info)
{
	npc = vlk_666_spielleiter;
	condition = vlk_666_spielleiter_fraktion_condition;
	information = vlk_666_spielleiter_fraktion_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_DECIDEFRAKTION;
};


func int vlk_666_spielleiter_fraktion_condition()
{
	return TRUE;
};

func void vlk_666_spielleiter_fraktion_info()
{
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LAGER_1_07_01");	//Wybierz grupê, któr¹ chcesz graæ:
	Info_ClearChoices(vlk_666_spielleiter_fraktion);
	Info_AddChoice(vlk_666_spielleiter_fraktion,PRINT_SKEDESCRIPTION,vlk_666_spielleiter_fraktion_ske);
	Info_AddChoice(vlk_666_spielleiter_fraktion,PRINT_TMPDESCRIPTION,vlk_666_spielleiter_fraktion_tmp);
	Info_AddChoice(vlk_666_spielleiter_fraktion,PRINT_DJGDESCRIPTION,vlk_666_spielleiter_fraktion_djg);
	Info_AddChoice(vlk_666_spielleiter_fraktion,PRINT_PALDESCRIPTION,vlk_666_spielleiter_fraktion_pal);
};

func void vlk_666_spielleiter_fraktion_pal()
{
	if(LAGER == 1)
	{
		FRAKTION_L1 = Pal;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = Pal;
	};
	b_otherteamfraktion();
	Info_ClearChoices(vlk_666_spielleiter_fraktion);
};

func void vlk_666_spielleiter_fraktion_djg()
{
	if(LAGER == 1)
	{
		FRAKTION_L1 = DJG;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = DJG;
	};
	b_otherteamfraktion();
	Info_ClearChoices(vlk_666_spielleiter_fraktion);
};

func void vlk_666_spielleiter_fraktion_tmp()
{
	if(LAGER == 1)
	{
		FRAKTION_L1 = TMP;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = TMP;
	};
	b_otherteamfraktion();
	Info_ClearChoices(vlk_666_spielleiter_fraktion);
};

func void vlk_666_spielleiter_fraktion_ske()
{
	if(LAGER == 1)
	{
		FRAKTION_L1 = SKE;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = SKE;
	};
	b_otherteamfraktion();
	Info_ClearChoices(vlk_666_spielleiter_fraktion);
};


instance VLK_666_SPIELLEITER_LAGER(C_Info)
{
	npc = vlk_666_spielleiter;
	condition = vlk_666_spielleiter_lager_condition;
	information = vlk_666_spielleiter_lager_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_DECIDECAMP;
};


func int vlk_666_spielleiter_lager_condition()
{
	return TRUE;
};

func void vlk_666_spielleiter_lager_info()
{
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz obóz, w którym chcesz graæ:
	Info_ClearChoices(vlk_666_spielleiter_lager);
	Info_AddChoice(vlk_666_spielleiter_lager,PRINT_BLUECAMP,vlk_666_spielleiter_lager_lager_2);
	Info_AddChoice(vlk_666_spielleiter_lager,PRINT_REDCAMP,vlk_666_spielleiter_lager_lager_1);
};

func void vlk_666_spielleiter_lager_lager_1()
{
	Info_ClearChoices(vlk_666_spielleiter_lager);
	if(LAGER == 2)
	{
		FRAKTION_L1 = FRAKTION_L2;
	};
	LAGER = 1;
	b_otherteamfraktion();
};

func void vlk_666_spielleiter_lager_lager_2()
{
	Info_ClearChoices(vlk_666_spielleiter_lager);
	if(LAGER == 1)
	{
		FRAKTION_L2 = FRAKTION_L1;
	};
	LAGER = 2;
	b_otherteamfraktion();
};


instance VLK_666_SPIELLEITER_MODIFIKATOREN(C_Info)
{
	npc = vlk_666_spielleiter;
	condition = vlk_666_spielleiter_modifikatoren_condition;
	information = vlk_666_spielleiter_modifikatoren_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_CHANGERULES;
};


func int vlk_666_spielleiter_modifikatoren_condition()
{
	return TRUE;
};

func void vlk_666_spielleiter_modifikatoren_info()
{
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
	Info_AddChoice(vlk_666_spielleiter_modifikatoren,Dialog_Back,vlk_666_spielleiter_modifikatoren_back);
	if(NONEWS_ON == FALSE)
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_NONEWSON,vlk_666_spielleiter_modifikatoren_nonews_on);
	}
	else
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_NONEWSOFF,vlk_666_spielleiter_modifikatoren_nonews_off);
	};
	if(TWOSOLDIERS_ON == FALSE)
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_TWOSOLDIERSON,vlk_666_spielleiter_modifikatoren_twosoldiers_on);
	}
	else
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_TWOSOLDIERSOFF,vlk_666_spielleiter_modifikatoren_twosoldiers_off);
	};
	if(TWOMAGES_ON == FALSE)
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_TWOMAGESON,vlk_666_spielleiter_modifikatoren_twomages_on);
	}
	else
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_TWOMAGESOFF,vlk_666_spielleiter_modifikatoren_twomages_off);
	};
	if(NOMERCS_ON == FALSE)
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_NOMERCSON,vlk_666_spielleiter_modifikatoren_nomercs_on);
	}
	else
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_NOMERCSOFF,vlk_666_spielleiter_modifikatoren_nomercs_off);
	};
	if(NOSTARTMONEY == FALSE)
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_NOSTARTMONEYON,vlk_666_spielleiter_modifikatoren_nostartmoney_on);
	}
	else
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_NOSTARTMONEYOFF,vlk_666_spielleiter_modifikatoren_nostartmoney_off);
	};
	if(INSTANTWEAPONS == FALSE)
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_INSTANTWEAPONSON,vlk_666_spielleiter_modifikatoren_instantweapons_on);
	}
	else
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,PRINT_INSTANTWEAPONSOFF,vlk_666_spielleiter_modifikatoren_instantweapons_off);
	};
};

func void vlk_666_spielleiter_modifikatoren_nonews_on()
{
	NONEWS_ON = TRUE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_nonews_off()
{
	NONEWS_ON = FALSE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_twosoldiers_on()
{
	TWOSOLDIERS_ON = TRUE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_twosoldiers_off()
{
	TWOSOLDIERS_ON = FALSE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_twomages_on()
{
	TWOMAGES_ON = TRUE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_twomages_off()
{
	TWOMAGES_ON = FALSE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_nomercs_on()
{
	NOMERCS_ON = TRUE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_nomercs_off()
{
	NOMERCS_ON = FALSE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_nostartmoney_on()
{
	NOSTARTMONEY = TRUE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_nostartmoney_off()
{
	NOSTARTMONEY = FALSE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_instantweapons_on()
{
	INSTANTWEAPONS = TRUE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_instantweapons_off()
{
	INSTANTWEAPONS = FALSE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_back()
{
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

