
instance PAL_1005_MAGIEBAUER_EXIT(C_Info)
{
	npc = pal_1005_magiebauer;
	condition = pal_1005_magiebauer_exit_condition;
	information = pal_1005_magiebauer_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int pal_1005_magiebauer_exit_condition()
{
	return TRUE;
};

func void pal_1005_magiebauer_exit_info()
{
	AI_StopProcessInfos(self);
};


instance PAL_1005_MAGIEBAUER_ERBAUEN(C_Info)
{
	npc = pal_1005_magiebauer;
	condition = pal_1005_magiebauer_erbauen_condition;
	information = pal_1005_magiebauer_erbauen_info;
	important = FALSE;
	permanent = TRUE;
	description = b_getcoststring(PRINT_BUILDMAGE,MAGECOST);
};


func int pal_1005_magiebauer_erbauen_condition()
{
	if(L1_MAGIE_ERBAUT != TRUE)
	{
		return TRUE;
	};
};

func void pal_1005_magiebauer_erbauen_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MAGECOST)
	{
		B_GiveInvItems(other,self,ItMi_Gold,MAGECOST);
		Npc_RemoveInvItems(self,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
		L1_MAGIE_ERBAUT = TRUE;
		self.aivar[91] = FALSE;
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance PAL_1005_MAGIEBAUER_ERBAUT(C_Info)
{
	npc = pal_1005_magiebauer;
	condition = pal_1005_magiebauer_erbaut_condition;
	information = pal_1005_magiebauer_erbaut_info;
	important = TRUE;
	permanent = TRUE;
};


func int pal_1005_magiebauer_erbaut_condition()
{
	if((L1_MAGIE_ERBAUT == TRUE) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void pal_1005_magiebauer_erbaut_info()
{
	AI_StopProcessInfos(self);
};

