// Dialog z Uczonym Niebieskiego Obozu

instance DJG_2004_MAGIER_EXIT(C_Info)
{
	npc = djg_2004_magier;
	condition = djg_2004_magier_exit_condition;
	information = djg_2004_magier_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int djg_2004_magier_exit_condition()
{
	return TRUE;
};

func void djg_2004_magier_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DJG_2004_MAGIER_FAVORIT_SPELL(C_Info)
{
	npc = djg_2004_magier;
	condition = djg_2004_magier_favorit_spell_condition;
	information = djg_2004_magier_favorit_spell_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_MAGEUSESPELL;
};


func int djg_2004_magier_favorit_spell_condition()
{
	return TRUE;
};

func void djg_2004_magier_favorit_spell_info()
{
	Info_ClearChoices(djg_2004_magier_favorit_spell);
	Info_AddChoice(djg_2004_magier_favorit_spell,Dialog_Back,djg_2004_magier_favorit_spell_back);
	Info_AddChoice(djg_2004_magier_favorit_spell,"Kula Ognia!",djg_2004_magier_favorit_spell_feuerball);
	if(L2_EISBLOCKERFORSCHT == TRUE)
	{
		Info_AddChoice(djg_2004_magier_favorit_spell,"Bry³a Lodu!",djg_2004_magier_favorit_spell_eisblock);
	};
	if(L2_RANKENERFORSCHT == TRUE)
	{
		Info_AddChoice(djg_2004_magier_favorit_spell,"Korzeñ!",djg_2004_magier_favorit_spell_ranken);
	};
	if(L2_BLITZSCHLAGERFORSCHT == TRUE)
	{
		Info_AddChoice(djg_2004_magier_favorit_spell,"B³yskawica!",djg_2004_magier_favorit_spell_blitzschlag);
	};
};

func void djg_2004_magier_favorit_spell_back()
{
	Info_ClearChoices(djg_2004_magier_favorit_spell);
};

func void djg_2004_magier_favorit_spell_feuerball()
{
	L2_FAVORITSPELL = SPELLFEUERBALL;
	Info_ClearChoices(djg_2004_magier_favorit_spell);
};

func void djg_2004_magier_favorit_spell_eisblock()
{
	L2_FAVORITSPELL = SPELLEISBLOCK;
	Info_ClearChoices(djg_2004_magier_favorit_spell);
};

func void djg_2004_magier_favorit_spell_ranken()
{
	L2_FAVORITSPELL = SPELLRANKEN;
	Info_ClearChoices(djg_2004_magier_favorit_spell);
};

func void djg_2004_magier_favorit_spell_blitzschlag()
{
	L2_FAVORITSPELL = SPELLBLITZSCHLAG;
	Info_ClearChoices(djg_2004_magier_favorit_spell);
};


instance DJG_2004_MAGIER_RUNEN_ERFORSCHEN(C_Info)
{
	npc = djg_2004_magier;
	condition = djg_2004_magier_runen_erforschen_condition;
	information = djg_2004_magier_runen_erforschen_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETRUNES;
};


func int djg_2004_magier_runen_erforschen_condition()
{
	if((L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0))
	{
		return TRUE;
	};
};

func void djg_2004_magier_runen_erforschen_info()
{
	Info_ClearChoices(djg_2004_magier_runen_erforschen);
	Info_AddChoice(djg_2004_magier_runen_erforschen,Dialog_Back,djg_2004_magier_runen_erforschen_back);
	if(L2_BLITZSCHLAGERFORSCHT == FALSE)
	{
		Info_AddChoice(djg_2004_magier_runen_erforschen,B_GetSpellString(NAME_SPL_LightningFlash,BLITZSCHLAG_COST),djg_2004_magier_runen_erforschen_blitzschlag);
	};
	if(L2_WUNDENHEILENERFORSCHT == FALSE)
	{
		Info_AddChoice(djg_2004_magier_runen_erforschen,B_GetSpellString(PRINT_SELFHEALING,HEILUNG_COST),djg_2004_magier_runen_erforschen_heilung);
	};
};

func void djg_2004_magier_runen_erforschen_back()
{
	Info_ClearChoices(djg_2004_magier_runen_erforschen);
};

func void djg_2004_magier_runen_erforschen_blitzschlag()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= BLITZSCHLAG_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_ZAUBER_ERFORSCHEN = SPELLBLITZSCHLAG;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,BLITZSCHLAG_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_runen_erforschen);
};

func void djg_2004_magier_runen_erforschen_eisblock()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= EISBLOCK_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_ZAUBER_ERFORSCHEN = SPELLEISBLOCK;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,EISBLOCK_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_runen_erforschen);
};

func void djg_2004_magier_runen_erforschen_ranken()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= RANKEN_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_ZAUBER_ERFORSCHEN = SPELLRANKEN;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,RANKEN_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_runen_erforschen);
};

func void djg_2004_magier_runen_erforschen_heilung()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HEILUNG_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_ZAUBER_ERFORSCHEN = SPELLHEILUNG;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,HEILUNG_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_runen_erforschen);
};


instance DJG_2004_MAGIER_TRAENKE_ERFORSCHEN(C_Info)
{
	npc = djg_2004_magier;
	condition = djg_2004_magier_traenke_erforschen_condition;
	information = djg_2004_magier_traenke_erforschen_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_GETPOTIONS;
};


func int djg_2004_magier_traenke_erforschen_condition()
{
	if((L2_ZAUBER_ERFORSCHEN == 0) && (L2_TRANK_ERFORSCHEN == 0))
	{
		return TRUE;
	};
};

func void djg_2004_magier_traenke_erforschen_info()
{
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
	Info_AddChoice(djg_2004_magier_traenke_erforschen,Dialog_Back,djg_2004_magier_traenke_erforschen_back);
	if(L2_SCHMIEDESTEP == SCHMIEDESTEP)
	{
		Info_AddChoice(djg_2004_magier_traenke_erforschen,B_GetCostString(PRINT_IMPROVESMITH,SMITHUPGRADE_COST),djg_2004_magier_traenke_erforschen_schmiede_step);
	};
	if(L2_EHRE_UPDATE == FALSE)
	{
		Info_AddChoice(djg_2004_magier_traenke_erforschen,B_GetCostString(PRINT_EHREEIGENESOLDATEN,GOLD_UPDATE),djg_2004_magier_traenke_erforschen_ehren_update);
	};
	if(L2_GOLD_UPDATE == FALSE)
	{
		Info_AddChoice(djg_2004_magier_traenke_erforschen,B_GetCostString(PRINT_GOLDEIGENESOLDATEN,GOLD_UPDATE),djg_2004_magier_traenke_erforschen_gold_update);
	};
	if(L2_MAGIERUPDATE == FALSE)
	{
		Info_AddChoice(djg_2004_magier_traenke_erforschen,B_GetCostString(PRINT_VERBESSEREMAGIER,MAGIERUPDATE_COST),djg_2004_magier_traenke_erforschen_magier_update);
	};
	if((L2_WACHEN_LEVEL < 4) && ((MAP == MAP01) || (MAP == VARUS_MAP)))
	{
		Info_AddChoice(djg_2004_magier_traenke_erforschen,B_GetCostString(PRINT_VERBESSEREWACHEN,L2_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL),djg_2004_magier_traenke_erforschen_wachen_update);
	};
	if(L2_HEILTRANKERFORSCHT == FALSE)
	{
		Info_AddChoice(djg_2004_magier_traenke_erforschen,B_GetSpellString(PRINT_HEALPOTION,HEILTRANK_COST),djg_2004_magier_traenke_erforschen_heiltrank);
	};
};

func void djg_2004_magier_traenke_erforschen_back()
{
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};

func void djg_2004_magier_traenke_erforschen_schmiede_step()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SMITHUPGRADE_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_TRANK_ERFORSCHEN = POTION_SMITHUPGRADE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,SMITHUPGRADE_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};

func void djg_2004_magier_traenke_erforschen_magier_update()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MAGIERUPDATE_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_TRANK_ERFORSCHEN = POTION_MAGIERUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
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

func void djg_2004_magier_traenke_erforschen_heiltrank()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= HEILTRANK_COST)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_TRANK_ERFORSCHEN = POTION_HEILTRANK;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,HEILTRANK_COST);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};

func void djg_2004_magier_traenke_erforschen_wachen_update()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= (L2_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL))
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_TRANK_ERFORSCHEN = POTION_WACHENUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,L2_WACHEN_LEVEL * WACHEN_UPDATE_PER_LEVEL);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};

func void djg_2004_magier_traenke_erforschen_gold_update()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= GOLD_UPDATE)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_TRANK_ERFORSCHEN = POTION_GOLDUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,GOLD_UPDATE);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};

func void djg_2004_magier_traenke_erforschen_ehren_update()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= GOLD_UPDATE)
	{
		AI_Output(self,other,"PAL_1004_Magier_RUNEN_ERFORSCHEN_HEILUNG_06_01");	//Zrozumiano.
		L2_TRANK_ERFORSCHEN = POTION_EHRENUPDATE;
		L2_FORSCHEN_STEP = ABLAUF;
		L2_AKTUELLER_FORSCHEN_STEP = ABLAUF;
		Npc_ExchangeRoutine(self,"BUCH");
		B_GiveInvItems(other,self,ItMi_Gold,GOLD_UPDATE);
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
	Info_ClearChoices(djg_2004_magier_traenke_erforschen);
};

