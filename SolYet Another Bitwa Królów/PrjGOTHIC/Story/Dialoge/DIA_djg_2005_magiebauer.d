// Dialog z Budowniczym Domu Magow Niebieskiego Obozu

instance DJG_2005_MAGIEBAUER_EXIT(C_Info)
{
	npc = djg_2005_magiebauer;
	condition = djg_2005_magiebauer_exit_condition;
	information = djg_2005_magiebauer_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int djg_2005_magiebauer_exit_condition()
{
	return TRUE;
};

func void djg_2005_magiebauer_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DJG_2005_MAGIEBAUER_ERBAUEN(C_Info)
{
	npc = djg_2005_magiebauer;
	condition = djg_2005_magiebauer_erbauen_condition;
	information = djg_2005_magiebauer_erbauen_info;
	important = FALSE;
	permanent = TRUE;
	description = B_GetCostString(PRINT_BUILDMAGE,MAGECOST);
};


func int djg_2005_magiebauer_erbauen_condition()
{
	if(L2_MAGIE_ERBAUT != TRUE)
	{
		return TRUE;
	};
};

func void djg_2005_magiebauer_erbauen_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MAGECOST)
	{
		B_GiveInvItems(other,self,ItMi_Gold,MAGECOST);
		Npc_RemoveInvItems(self,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
		L2_MAGIE_ERBAUT = TRUE;
		self.aivar[91] = FALSE;
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2005_MAGIEBAUER_ERBAUT(C_Info)
{
	npc = djg_2005_magiebauer;
	condition = djg_2005_magiebauer_erbaut_condition;
	information = djg_2005_magiebauer_erbaut_info;
	important = TRUE;
	permanent = TRUE;
};


func int djg_2005_magiebauer_erbaut_condition()
{
	if((L2_MAGIE_ERBAUT == TRUE) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void djg_2005_magiebauer_erbaut_info()
{
	AI_StopProcessInfos(self);
};

