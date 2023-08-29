// Dialog z Budowniczym Kuzni Niebieskiego Obozu

instance DJG_2001_SCHMIEDEBAUER_EXIT(C_Info)
{
	npc = djg_2001_schmiedebauer;
	condition = djg_2001_schmiedebauer_exit_condition;
	information = djg_2001_schmiedebauer_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int djg_2001_schmiedebauer_exit_condition()
{
	return TRUE;
};

func void djg_2001_schmiedebauer_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DJG_2001_SCHMIEDEBAUER_ERBAUEN(C_Info)
{
	npc = djg_2001_schmiedebauer;
	condition = djg_2001_schmiedebauer_erbauen_condition;
	information = djg_2001_schmiedebauer_erbauen_info;
	important = FALSE;
	permanent = TRUE;
	description = b_getcoststring(PRINT_BUILDSMITH,SMITHCOST);
};


func int djg_2001_schmiedebauer_erbauen_condition()
{
	if(L2_SCHMIEDE_ERBAUT != TRUE)
	{
		return TRUE;
	};
};

func void djg_2001_schmiedebauer_erbauen_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= SMITHCOST)
	{
		B_GiveInvItems(other,self,ItMi_Gold,SMITHCOST);
		Npc_RemoveInvItems(self,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
		L2_SCHMIEDE_ERBAUT = TRUE;
		self.aivar[91] = FALSE;
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2001_SCHMIEDEBAUER_ERBAUT(C_Info)
{
	npc = djg_2001_schmiedebauer;
	condition = djg_2001_schmiedebauer_erbaut_condition;
	information = djg_2001_schmiedebauer_erbaut_info;
	important = TRUE;
	permanent = TRUE;
};


func int djg_2001_schmiedebauer_erbaut_condition()
{
	if((L2_SCHMIEDE_ERBAUT == TRUE) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void djg_2001_schmiedebauer_erbaut_info()
{
	AI_StopProcessInfos(self);
};

