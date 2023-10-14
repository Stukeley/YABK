// Dialog z Uczonym Czerwonego Obozu

instance PAL_1004_MAGIER_EXIT(C_Info)
{
	npc = pal_1004_magier;
	condition = pal_1004_magier_exit_condition;
	information = pal_1004_magier_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int pal_1004_magier_exit_condition()
{
	return TRUE;
};

func void pal_1004_magier_exit_info()
{
	AI_StopProcessInfos(self);
};


instance PAL_1004_MAGIER_FAVORIT_SPELL(C_Info)
{
	npc = pal_1004_magier;
	condition = pal_1004_magier_favorit_spell_condition;
	information = pal_1004_magier_favorit_spell_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_MAGEUSESPELL;
};


func int pal_1004_magier_favorit_spell_condition()
{
	return FALSE;
};

func void pal_1004_magier_favorit_spell_info()
{
	Info_ClearChoices(pal_1004_magier_favorit_spell);
	Info_AddChoice(pal_1004_magier_favorit_spell,Dialog_Back,pal_1004_magier_favorit_spell_back);
	Info_AddChoice(pal_1004_magier_favorit_spell,"Kula Ognia!",pal_1004_magier_favorit_spell_feuerball);
	if(L1_EISBLOCKERFORSCHT == TRUE)
	{
		Info_AddChoice(pal_1004_magier_favorit_spell,"Bry³a Lodu!",pal_1004_magier_favorit_spell_eisblock);
	};
	if(L1_RANKENERFORSCHT == TRUE)
	{
		Info_AddChoice(pal_1004_magier_favorit_spell,"Korzeñ!",pal_1004_magier_favorit_spell_ranken);
	};
	if(L1_BLITZSCHLAGERFORSCHT == TRUE)
	{
		Info_AddChoice(pal_1004_magier_favorit_spell,"B³yskawica!",pal_1004_magier_favorit_spell_blitzschlag);
	};
};

func void pal_1004_magier_favorit_spell_back()
{
	Info_ClearChoices(pal_1004_magier_favorit_spell);
};

func void pal_1004_magier_favorit_spell_feuerball()
{
	L1_FAVORITSPELL = SPELLFEUERBALL;
	Info_ClearChoices(pal_1004_magier_favorit_spell);
};

func void pal_1004_magier_favorit_spell_eisblock()
{
	L1_FAVORITSPELL = SPELLEISBLOCK;
	Info_ClearChoices(pal_1004_magier_favorit_spell);
};

func void pal_1004_magier_favorit_spell_ranken()
{
	L1_FAVORITSPELL = SPELLRANKEN;
	Info_ClearChoices(pal_1004_magier_favorit_spell);
};

func void pal_1004_magier_favorit_spell_blitzschlag()
{
	L1_FAVORITSPELL = SPELLBLITZSCHLAG;
	Info_ClearChoices(pal_1004_magier_favorit_spell);
};


instance PAL_1004_MAGIER_RUNEN_ERFORSCHEN(C_Info)
{
	npc = pal_1004_magier;
	condition = pal_1004_magier_runen_erforschen_condition;
	information = pal_1004_magier_runen_erforschen_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETRUNES;
};


func int pal_1004_magier_runen_erforschen_condition()
{
	if((L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0))
	{
		return FALSE;
	};
};

func void pal_1004_magier_runen_erforschen_info()
{
	Info_ClearChoices(pal_1004_magier_runen_erforschen);
	Info_AddChoice(pal_1004_magier_runen_erforschen,Dialog_Back,pal_1004_magier_runen_erforschen_back);
	if(L1_BLITZSCHLAGERFORSCHT == FALSE)
	{
		Info_AddChoice(pal_1004_magier_runen_erforschen,B_GetSpellString(NAME_SPL_LightningFlash,BLITZSCHLAG_COST),pal_1004_magier_runen_erforschen_blitzschlag);
	};
	if(L1_WUNDENHEILENERFORSCHT == FALSE)
	{
		Info_AddChoice(pal_1004_magier_runen_erforschen,B_GetSpellString(PRINT_SELFHEALING,HEILUNG_COST),pal_1004_magier_runen_erforschen_heilung);
	};
};

func void pal_1004_magier_runen_erforschen_back()
{
	Info_ClearChoices(pal_1004_magier_runen_erforschen);
};

func void pal_1004_magier_runen_erforschen_blitzschlag()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= BLITZSCHLAG_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_ZAUBER_ERFORSCHEN = SPELLBLITZSCHLAG;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,BLITZSCHLAG_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1004_magier_runen_erforschen);
};

func void pal_1004_magier_runen_erforschen_eisblock()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= EISBLOCK_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_ZAUBER_ERFORSCHEN = SPELLEISBLOCK;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,EISBLOCK_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1004_magier_runen_erforschen);
};

func void pal_1004_magier_runen_erforschen_ranken()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= RANKEN_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_ZAUBER_ERFORSCHEN = SPELLRANKEN;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,RANKEN_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1004_magier_runen_erforschen);
};

func void pal_1004_magier_runen_erforschen_heilung()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HEILUNG_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_ZAUBER_ERFORSCHEN = SPELLHEILUNG;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,HEILUNG_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1004_magier_runen_erforschen);
};


instance PAL_1004_MAGIER_TRAENKE_ERFORSCHEN(C_Info)
{
	npc = pal_1004_magier;
	condition = pal_1004_magier_traenke_erforschen_condition;
	information = pal_1004_magier_traenke_erforschen_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETPOTIONS;
};


func int pal_1004_magier_traenke_erforschen_condition()
{
	if((L1_ZAUBER_ERFORSCHEN == 0) && (L1_TRANK_ERFORSCHEN == 0))
	{
		return TRUE;
	};
};

func void pal_1004_magier_traenke_erforschen_info()
{
	Info_ClearChoices(pal_1004_magier_traenke_erforschen);
	Info_AddChoice(pal_1004_magier_traenke_erforschen,Dialog_Back,pal_1004_magier_traenke_erforschen_back);
	if(FALSE)
	{
		Info_AddChoice(pal_1004_magier_traenke_erforschen,B_GetCostString(PRINT_IMPROVESMITH,SMITHUPGRADE_COST),pal_1004_magier_traenke_erforschen_schmiede_step);
	};
	if(L1_EHRE_UPDATE == FALSE)
	{
		Info_AddChoice(pal_1004_magier_traenke_erforschen,B_GetCostString(PRINT_EHREEIGENESOLDATEN,GOLD_UPDATE),pal_1004_magier_traenke_erforschen_ehren_update);
	};
	if(L1_GOLD_UPDATE == FALSE)
	{
		Info_AddChoice(pal_1004_magier_traenke_erforschen,B_GetCostString(PRINT_GOLDEIGENESOLDATEN,GOLD_UPDATE),pal_1004_magier_traenke_erforschen_gold_update);
	};
	if(L1_MAGIERUPDATE == FALSE)
	{
		Info_AddChoice(pal_1004_magier_traenke_erforschen,B_GetCostString(PRINT_VERBESSEREMAGIER,MAGIERUPDATE_COST),pal_1004_magier_traenke_erforschen_magier_update);
	};
	if(L1_MAGIERUPDATE == TRUE && L1_FourthCircle == FALSE)
	{
		Info_AddChoice(pal_1004_magier_traenke_erforschen,B_GetCostString(PRINT_VERBESSEREMAGIER,MAGIERUPDATE_COST_3),pal_1004_magier_traenke_erforschen_magier_update_3);
	};
	if(L1_FourthCircle == TRUE && L1_FifthCircle == FALSE)
	{
		Info_AddChoice(pal_1004_magier_traenke_erforschen,B_GetCostString(PRINT_VERBESSEREMAGIER,MAGIERUPDATE_COST_3),pal_1004_magier_traenke_erforschen_magier_update_4);
	};
	if(L1_FifthCircle == TRUE && L1_SixthCircle == FALSE)
	{
		Info_AddChoice(pal_1004_magier_traenke_erforschen,B_GetCostString(PRINT_VERBESSEREMAGIER,MAGIERUPDATE_COST_3),pal_1004_magier_traenke_erforschen_magier_update_5);
	};
	if((L1_WACHEN_LEVEL < 4) && ((MAP == MAP01) || (MAP == VARUS_MAP)))
	{
		Info_AddChoice(pal_1004_magier_traenke_erforschen,B_GetCostString(PRINT_VERBESSEREWACHEN,L1_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL),pal_1004_magier_traenke_erforschen_wachen_update);
	};
	if(L1_HEILTRANKERFORSCHT == FALSE)
	{
		Info_AddChoice(pal_1004_magier_traenke_erforschen,B_GetSpellString(PRINT_HEALPOTION,HEILTRANK_COST),pal_1004_magier_traenke_erforschen_heiltrank);
	};
};

func void pal_1004_magier_traenke_erforschen_back()
{
	Info_ClearChoices(pal_1004_magier_traenke_erforschen);
};


func void pal_1004_magier_traenke_erforschen_magier_update_3()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MAGIERUPDATE_COST_3)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_TRANK_ERFORSCHEN = POTION_FOURTHCIRCLE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		if(FRAKTION_L1 == DJG) {
			L1_FAVORITSPELL = SPELLWATERCIRCLE4;
		}
		else if (FRAKTION_L1 == SKE)
		{
			L1_FAVORITSPELL = SPELLDARKCIRCLE4;
		}
		else if (FRAKTION_L1 == TMP)
		{
			L1_FAVORITSPELL = SPELLSWAMPCIRCLE4;
		}
		else 
		{
			L1_FAVORITSPELL = SPELLFIRECIRCLE4;
		};
		PoziomTwojegoMaga = "3/5";
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,MAGIERUPDATE_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};
func void pal_1004_magier_traenke_erforschen_magier_update_4()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MAGIERUPDATE_COST_3)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_TRANK_ERFORSCHEN = POTION_FIFTHCIRCLE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		if(FRAKTION_L1 == DJG) {
			L1_FAVORITSPELL = SPELLWATERCIRCLE5;
		}
		else if (FRAKTION_L1 == SKE)
		{
			L1_FAVORITSPELL = SPELLDARKCIRCLE5;
		}
		else if (FRAKTION_L1 == TMP)
		{
			L1_FAVORITSPELL = SPELLSWAMPCIRCLE5;
		}
		else 
		{
			L1_FAVORITSPELL = SPELLFIRECIRCLE5;
		};
		PoziomTwojegoMaga = "4/5";
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,MAGIERUPDATE_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};
func void pal_1004_magier_traenke_erforschen_magier_update_5()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MAGIERUPDATE_COST_3)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_TRANK_ERFORSCHEN = POTION_SIXCIRCLE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		if(FRAKTION_L1 == DJG) {
			L1_FAVORITSPELL = SPELLWATERCIRCLE6;
		}
		else if (FRAKTION_L1 == SKE)
		{
			L1_FAVORITSPELL = SPELLDARKCIRCLE6;
		}
		else if (FRAKTION_L1 == TMP)
		{
			L1_FAVORITSPELL = SPELLSWAMPCIRCLE6;
		}
		else 
		{
			L1_FAVORITSPELL = SPELLFIRECIRCLE6;
		};
		PoziomTwojegoMaga = "5/5";
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,MAGIERUPDATE_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};

func void pal_1004_magier_traenke_erforschen_schmiede_step()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SMITHUPGRADE_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_TRANK_ERFORSCHEN = POTION_SMITHUPGRADE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,SMITHUPGRADE_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1004_magier_traenke_erforschen);
};

func void pal_1004_magier_traenke_erforschen_magier_update()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MAGIERUPDATE_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_TRANK_ERFORSCHEN = POTION_MAGIERUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		if(FRAKTION_L1 == DJG) {
			L1_FAVORITSPELL = SPELLWATERCIRCLE3;
		}
		else if (FRAKTION_L1 == SKE)
		{
			L1_FAVORITSPELL = SPELLDARKCIRCLE3;
		}
		else if (FRAKTION_L1 == TMP)
		{
			L1_FAVORITSPELL = SPELLSWAMPCIRCLE3;
		}
		else 
		{
			L1_FAVORITSPELL = SPELLFIRECIRCLE3;
		};
		PoziomTwojegoMaga = "2/5";
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,MAGIERUPDATE_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};

func void pal_1004_magier_traenke_erforschen_heiltrank()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HEILTRANK_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_TRANK_ERFORSCHEN = POTION_HEILTRANK;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,HEILTRANK_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1004_magier_traenke_erforschen);
};

func void pal_1004_magier_traenke_erforschen_wachen_update()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L1_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL))
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_TRANK_ERFORSCHEN = POTION_WACHENUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,L1_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1004_magier_traenke_erforschen);
};

func void pal_1004_magier_traenke_erforschen_gold_update()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= GOLD_UPDATE)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_TRANK_ERFORSCHEN = POTION_GOLDUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,GOLD_UPDATE);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1004_magier_traenke_erforschen);
};

func void pal_1004_magier_traenke_erforschen_ehren_update()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= GOLD_UPDATE)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L1_TRANK_ERFORSCHEN = POTION_EHRENUPDATE;
		L1_FORSCHEN_STEP = ABLAUF;
		L1_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,GOLD_UPDATE);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(pal_1004_magier_traenke_erforschen);
};

