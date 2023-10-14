// Dialog z Rezyserem (poczatek gry, wybor poziomu trudnosci i frakcji)

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
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_Info_07_01");	//Witaj w Bitwie Kr�l�w!
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_Info_07_02");	//Wybierz poziom trudno�ci.
	Info_ClearChoices(vlk_666_spielleiter_important);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_HORROR,vlk_666_spielleiter_important_horror);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_HEAVY,vlk_666_spielleiter_important_schwer);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_NORMAL,vlk_666_spielleiter_important_normal);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_EASY,vlk_666_spielleiter_important_leicht);
};

func void vlk_666_spielleiter_important_leicht()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz ob�z, w kt�rym chcesz gra�:
	SCHWIERIGKEIT = DIFF_LIGHT;
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_BLUECAMP,vlk_666_spielleiter_important_lager_2);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_REDCAMP,vlk_666_spielleiter_important_lager_1);
};

func void vlk_666_spielleiter_important_normal()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz ob�z, w kt�rym chcesz gra�:
	SCHWIERIGKEIT = DIFF_NORMAL;
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_BLUECAMP,vlk_666_spielleiter_important_lager_2);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_REDCAMP,vlk_666_spielleiter_important_lager_1);
};

func void vlk_666_spielleiter_important_schwer()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz ob�z, w kt�rym chcesz gra�:
	SCHWIERIGKEIT = DIFF_HEAVY;
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_BLUECAMP,vlk_666_spielleiter_important_lager_2);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_REDCAMP,vlk_666_spielleiter_important_lager_1);
};

func void vlk_666_spielleiter_important_horror()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz ob�z, w kt�rym chcesz gra�:
	SCHWIERIGKEIT = DIFF_HORROR;
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_BLUECAMP,vlk_666_spielleiter_important_lager_2);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_REDCAMP,vlk_666_spielleiter_important_lager_1);
};

func void vlk_666_spielleiter_important_lager_1()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	LAGER = 1;
	Log_CreateTopic (TOPIC_PASSIVE_INFO, LOG_NOTE);
	Log_CreateTopic (TOPIC_SMITH, LOG_NOTE);
	Log_CreateTopic (TOPIC_EQ_INFO, LOG_NOTE);
	B_LogEntry(TOPIC_PASSIVE_INFO,"Ka�da z frakcji posiada unikaln� umiej�tno�� pasywn�. Obecne umiej�tno�ci s� nast�puj�ce:");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Jednostki Starego Obozu maj� dodatkowe 40% ochrony przed obra�eniami fizycznymi.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Paladyni posiadaj� 200% zr�czno�ci.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Stra�nicy �wi�tynni maj� o 40% zwi�kszon� ochron� przed magi�.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Najemnicy posiadaj� 20% wi�cej HP.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Szkielety maj� dodatkowe 75% ochrony od obra�e� fizycznym kosztem redukcji ochrony od magii o 75%.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Orkowie maj� 30% wi�cej si�y.");
	B_LogEntry(TOPIC_SMITH, "Za 50 sztuk z�ota mo�esz zatrudni� kowala. Kowal mo�e robi� jedn� z trzech rzeczy:");
	B_LogEntry(TOPIC_SMITH, "Kowal mo�e wytwarza� dla Ciebie bro� dzi�ki kt�rej ulepszysz bro� swoich �o�nierzy. Co 45 sekund Kowal wyda jedn� sztuk�. Do ulepszenia potrzeba trzech. Je�li zmienisz zadanie Kowala w trakcie wykonywania broni to nie otrzymasz wi�cej broni je�li nie zdecydujesz si� wr�ci� do wytwarzania broni.");
	B_LogEntry(TOPIC_SMITH, "Drug� opcj� jest wytwarzanie pancerza kt�re dzia�a tak samo jak wytwarzanie broni");
	B_LogEntry(TOPIC_SMITH, "Ostatni� mo�liwo�ci� jest wytarzanie z�ota. Co 45 sekund otrzymasz 10 sztuk z�ota. Po nakazaniu kowalowi wytwarzania z�ota, b�dzie on je produkowa� a� nie zmienisz mu zadania.");
	B_LogEntry(TOPIC_EQ_INFO, "Wraz z ulepszeniem broni lub pancerza zwi�ksz� si� statystyki odpowiedniego przedmiotu. Dla kolejnych poziom�w warto�ci s� nast�puj�ce:");
	B_LogEntry(TOPIC_EQ_INFO,"Pancerz, poziom pierwszy: Ochrona fizyczna: 40 / Ochrona magiczna 40");
	B_LogEntry(TOPIC_EQ_INFO,"Pancerz, poziom drugi: Ochrona fizyczna: 80 / Ochrona magiczna 80");
	B_LogEntry(TOPIC_EQ_INFO,"Pancerz, poziom trzeci: Ochrona fizyczna: 115 / Ochrona magiczna 115");
	B_LogEntry(TOPIC_EQ_INFO,"Pancerz, poziom czwarty: Ochrona fizyczna: 150 / Ochrona magiczna 150");
	B_LogEntry(TOPIC_EQ_INFO,"Bro�, poziom pierwszy: Obra�enia fizyczne: 45");
	B_LogEntry(TOPIC_EQ_INFO,"Bro�, poziom drugi: Obra�enia fizyczne: 80");
	B_LogEntry(TOPIC_EQ_INFO,"Bro�, poziom trzeci: Obra�enia fizyczne: 115");
	B_LogEntry(TOPIC_EQ_INFO,"Bro�, poziom czwarty: Obra�enia fizyczne: 150");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom pierwszy: Ochrona fizyczna: 20 / Ochrona magiczna 20");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom drugi: Ochrona fizyczna: 35 / Ochrona magiczna 35");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom trzeci: Ochrona fizyczna: 70 / Ochrona magiczna 70");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom czwarty: Ochrona fizyczna: 85 / Ochrona magiczna 85");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom pi�ty: Ochrona fizyczna: 100 / Ochrona magiczna 100");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom pierwszy: Obra�enia magiczne: 50");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom drugi: Obra�enia magiczne: 100");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom trzeci: Obra�enia magiczne: 150");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom czwarty: Obra�enia magiczne: 250");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom pi�ty: Obra�enia magiczne: 400");
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LAGER_1_07_01");	//Wybierz grup�, kt�r� chcesz gra�:
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_SKEDESCRIPTION,vlk_666_spielleiter_important_ske);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_TMPDESCRIPTION,vlk_666_spielleiter_important_tmp);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_DJGDESCRIPTION,vlk_666_spielleiter_important_djg);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_PALDESCRIPTION,vlk_666_spielleiter_important_pal);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_PCHDESCRIPTION, vlk_666_spielleiter_important_PCH);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_ORCDESCRITPION, vlk_666_spielleiter_important_ORC);
};

func void vlk_666_spielleiter_important_lager_2()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	LAGER = 2;
	Log_CreateTopic (TOPIC_PASSIVE_INFO, LOG_NOTE);
	Log_CreateTopic (TOPIC_SMITH, LOG_NOTE);
	Log_CreateTopic (TOPIC_EQ_INFO, LOG_NOTE);
	B_LogEntry(TOPIC_PASSIVE_INFO,"Ka�da z frakcji posiada unikaln� umiej�tno�� pasywn�. Obecne umiej�tno�ci s� nast�puj�ce:");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Jednostki Starego Obozu maj� dodatkowe 40% ochrony przed obra�eniami fizycznymi.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Paladyni posiadaj� 200% zr�czno�ci.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Stra�nicy �wi�tynni maj� o 40% zwi�kszon� ochron� przed magi�.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Najemnicy posiadaj� 20% wi�cej HP.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Szkielety maj� dodatkowe 75% ochrony od obra�e� fizycznym kosztem redukcji ochrony od magii o 75%.");
	B_LogEntry(TOPIC_PASSIVE_INFO,"Orkowie maj� 30% wi�cej si�y.");
	B_LogEntry(TOPIC_SMITH, "Za 50 sztuk z�ota mo�esz zatrudni� kowala. Kowal mo�e robi� jedn� z trzech rzeczy:");
	B_LogEntry(TOPIC_SMITH, "Kowal mo�e wytwarza� dla Ciebie bro� dzi�ki kt�rej ulepszysz bro� swoich �o�nierzy. Co 45 sekund Kowal wyda jedn� sztuk�. Do ulepszenia potrzeba trzech. Je�li zmienisz zadanie Kowala w trakcie wykonywania broni to nie otrzymasz wi�cej broni je�li nie zdecydujesz si� wr�ci� do wytwarzania broni.");
	B_LogEntry(TOPIC_SMITH, "Drug� opcj� jest wytwarzanie pancerza kt�re dzia�a tak samo jak wytwarzanie broni");
	B_LogEntry(TOPIC_SMITH, "Ostatni� mo�liwo�ci� jest wytarzanie z�ota. Co 45 sekund otrzymasz 10 sztuk z�ota. Po nakazaniu kowalowi wytwarzania z�ota, b�dzie on je produkowa� a� nie zmienisz mu zadania.");
	B_LogEntry(TOPIC_EQ_INFO, "Wraz z ulepszeniem broni lub pancerza zwi�ksz� si� statystyki odpowiedniego przedmiotu. Dla kolejnych poziom�w warto�ci s� nast�puj�ce:");
	B_LogEntry(TOPIC_EQ_INFO,"Pancerz, poziom pierwszy: Ochrona fizyczna: 40 / Ochrona magiczna 40");
	B_LogEntry(TOPIC_EQ_INFO,"Pancerz, poziom drugi: Ochrona fizyczna: 80 / Ochrona magiczna 80");
	B_LogEntry(TOPIC_EQ_INFO,"Pancerz, poziom trzeci: Ochrona fizyczna: 115 / Ochrona magiczna 115");
	B_LogEntry(TOPIC_EQ_INFO,"Pancerz, poziom czwarty: Ochrona fizyczna: 150 / Ochrona magiczna 150");
	B_LogEntry(TOPIC_EQ_INFO,"Bro�, poziom pierwszy: Obra�enia fizyczne: 45");
	B_LogEntry(TOPIC_EQ_INFO,"Bro�, poziom drugi: Obra�enia fizyczne: 80");
	B_LogEntry(TOPIC_EQ_INFO,"Bro�, poziom trzeci: Obra�enia fizyczne: 115");
	B_LogEntry(TOPIC_EQ_INFO,"Bro�, poziom czwarty: Obra�enia fizyczne: 150");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom pierwszy: Ochrona fizyczna: 20 / Ochrona magiczna 20");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom drugi: Ochrona fizyczna: 35 / Ochrona magiczna 35");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom trzeci: Ochrona fizyczna: 70 / Ochrona magiczna 70");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom czwarty: Ochrona fizyczna: 85 / Ochrona magiczna 85");
	B_LogEntry(TOPIC_EQ_INFO,"Szata maga, poziom pi�ty: Ochrona fizyczna: 100 / Ochrona magiczna 100");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom pierwszy: Obra�enia magiczne: 50");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom drugi: Obra�enia magiczne: 100");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom trzeci: Obra�enia magiczne: 150");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom czwarty: Obra�enia magiczne: 250");
	B_LogEntry(TOPIC_EQ_INFO,"Magia, poziom pi�ty: Obra�enia magiczne: 400");
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LAGER_1_07_01");	//Wybierz grup�, kt�r� chcesz gra�:
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_SKEDESCRIPTION,vlk_666_spielleiter_important_ske);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_TMPDESCRIPTION,vlk_666_spielleiter_important_tmp);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_DJGDESCRIPTION,vlk_666_spielleiter_important_djg);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_PALDESCRIPTION,vlk_666_spielleiter_important_pal);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_PCHDESCRIPTION, vlk_666_spielleiter_important_PCH);
	Info_AddChoice(vlk_666_spielleiter_important,PRINT_ORCDESCRITPION, vlk_666_spielleiter_important_ORC);
};

func void vlk_666_spielleiter_important_ORC()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = ORC;
		MojaGildia = "Orkowie";
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = ORC;
		MojaGildia = "Orkowie";
	};
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz p�jd� do obrazu mapy, w kt�rej chcesz gra�.
	b_otherteamfraktion();
	AI_StopProcessInfos(self);
};
func void vlk_666_spielleiter_important_PCH()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = PCH;
		MojaGildia = "Stary Ob�z";
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = PCH;
		MojaGildia = "Stary Ob�z";
	};
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz p�jd� do obrazu mapy, w kt�rej chcesz gra�.
	b_otherteamfraktion();
	AI_StopProcessInfos(self);
};
func void vlk_666_spielleiter_important_MGB()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = MGB;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = MGB;
	};
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz p�jd� do obrazu mapy, w kt�rej chcesz gra�.
	b_otherteamfraktion();
	AI_StopProcessInfos(self);
};
func void vlk_666_spielleiter_important_bst()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = Bst;
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = Bst;
	};
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz p�jd� do obrazu mapy, w kt�rej chcesz gra�.
	b_otherteamfraktion();
	AI_StopProcessInfos(self);
};


func void vlk_666_spielleiter_important_pal()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = Pal;
		MojaGildia = "Paladyni";
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = Pal;
		MojaGildia = "Paladyni";
	};
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz p�jd� do obrazu mapy, w kt�rej chcesz gra�.
	b_otherteamfraktion();
	AI_StopProcessInfos(self);
};

func void vlk_666_spielleiter_important_djg()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = DJG;
		MojaGildia = "Najemnicy";
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = DJG;
		MojaGildia = "Najemnicy";
	};
	b_otherteamfraktion();
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz p�jd� do obrazu mapy, w kt�rej chcesz gra�.
	AI_StopProcessInfos(self);
};

func void vlk_666_spielleiter_important_tmp()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = TMP;
		MojaGildia = "Sekta";
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = TMP;
		MojaGildia = "Sekta";
	};
	b_otherteamfraktion();
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz p�jd� do obrazu mapy, w kt�rej chcesz gra�.
	AI_StopProcessInfos(self);
};

func void vlk_666_spielleiter_important_ske()
{
	Info_ClearChoices(vlk_666_spielleiter_important);
	if(LAGER == 1)
	{
		FRAKTION_L1 = SKE;
		MojaGildia = "Szkielety";
	}
	else if(LAGER == 2)
	{
		FRAKTION_L2 = SKE;
		MojaGildia = "Szkielety";
	};
	b_otherteamfraktion();
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_PAL_07_01");	//Teraz p�jd� do obrazu mapy, w kt�rej chcesz gra�.
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
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_Info_07_02");	//Wybierz poziom trudno�ci.
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
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LAGER_1_07_01");	//Wybierz grup�, kt�r� chcesz gra�:
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
	AI_Output(self,other,"VLK_666_Spielleiter_IMPORTANT_LEICHT_07_01");	//Wybierz ob�z, w kt�rym chcesz gra�:
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
	if (passive_perks == FALSE)
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,"W��cz umiej�tno�ci pasywne gildii",vlk_666_spielleiter_modifikatoren_passive_on);
	}
	else
	{
		Info_AddChoice(vlk_666_spielleiter_modifikatoren,"Wy��cz umiej�tno�ci pasywne gildii",vlk_666_spielleiter_modifikatoren_passive_off);
	};
	
};

func void vlk_666_spielleiter_modifikatoren_passive_on()
{
	passive_perks = TRUE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
};

func void vlk_666_spielleiter_modifikatoren_passive_off()
{
	passive_perks = FALSE;
	Info_ClearChoices(vlk_666_spielleiter_modifikatoren);
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

