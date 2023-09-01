
instance DJG_2007_MINENAUFSEHER_EXIT(C_Info)
{
	npc = djg_2007_minenaufseher;
	condition = djg_2007_minenaufseher_exit_condition;
	information = djg_2007_minenaufseher_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int djg_2007_minenaufseher_exit_condition()
{
	return TRUE;
};

func void djg_2007_minenaufseher_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DJG_2007_MINENAUFSEHER_MEHR_ARBEITER(C_Info)
{
	npc = djg_2007_minenaufseher;
	condition = djg_2007_minenaufseher_mehr_arbeiter_condition;
	information = djg_2007_minenaufseher_mehr_arbeiter_info;
	important = FALSE;
	permanent = TRUE;
	description = B_GetCostString(PRINT_ADDMINENARBEITER,MINENARBEITERCOST);
};


func int djg_2007_minenaufseher_mehr_arbeiter_condition()
{
	if((L2_MINE > 0) && (L2_MINE < 3))
	{
		return TRUE;
	};
};

func void djg_2007_minenaufseher_mehr_arbeiter_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MINENARBEITERCOST)
	{
		AI_Output(self,other,"PAL_1007_MinenAufseher_MEHR_ARBEITER_Info_06_02");	//Ju¿ siê robi.
		B_GiveInvItems(other,self,ItMi_Gold,MINENARBEITERCOST);
		Npc_RemoveInvItems(self,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
		L2_MINE += 1;
		AI_StopProcessInfos(self);
		if(L2_MINE == 2)
		{
			Wld_InsertNpc(djg_2009_minenarbeiter,"L2_MINE_GOLD_2");
		};
		if(L2_MINE == 3)
		{
			Wld_InsertNpc(djg_2010_minenarbeiter,"L2_MINE_GOLD_3");
		};
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};

