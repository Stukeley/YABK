
instance PAL_1007_MINENAUFSEHER_EXIT(C_Info)
{
	npc = pal_1007_minenaufseher;
	condition = pal_1007_minenaufseher_exit_condition;
	information = pal_1007_minenaufseher_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int pal_1007_minenaufseher_exit_condition()
{
	return TRUE;
};

func void pal_1007_minenaufseher_exit_info()
{
	AI_StopProcessInfos(self);
};


instance PAL_1007_MINENAUFSEHER_MEHR_ARBEITER(C_Info)
{
	npc = pal_1007_minenaufseher;
	condition = pal_1007_minenaufseher_mehr_arbeiter_condition;
	information = pal_1007_minenaufseher_mehr_arbeiter_info;
	important = FALSE;
	permanent = TRUE;
	description = B_GetCostString(PRINT_ADDMINENARBEITER,MINENARBEITERCOST);
};


func int pal_1007_minenaufseher_mehr_arbeiter_condition()
{
	if((L1_MINE < 3) && (L1_MINE > 0))
	{
		return TRUE;
	};
};

func void pal_1007_minenaufseher_mehr_arbeiter_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MINENARBEITERCOST)
	{
		AI_Output(self,other,"PAL_1007_MinenAufseher_MEHR_ARBEITER_Info_06_02");	//Ju¿ siê robi.
		B_GiveInvItems(other,self,ItMi_Gold,MINENARBEITERCOST);
		Npc_RemoveInvItems(self,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
		L1_MINE += 1;
		Przychod +=24;
		AI_StopProcessInfos(self);
		if(L1_MINE == 2)
		{
			Wld_InsertNpc(pal_1009_minenarbeiter,"L1_MINE_GOLD_2");
		};
		if(L1_MINE == 3)
		{
			Wld_InsertNpc(pal_1010_minenarbeiter,"L1_MINE_GOLD_3");
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};

