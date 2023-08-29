// Dialog z Budowniczym Kopalnie Niebieskiego Obozu

instance DJG_2006_MINEBAUER_EXIT(C_Info)
{
	npc = djg_2006_minebauer;
	condition = djg_2006_minebauer_exit_condition;
	information = djg_2006_minebauer_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int djg_2006_minebauer_exit_condition()
{
	return TRUE;
};

func void djg_2006_minebauer_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DJG_2006_MINEBAUER_ERBAUEN(C_Info)
{
	npc = djg_2006_minebauer;
	condition = djg_2006_minebauer_erbauen_condition;
	information = djg_2006_minebauer_erbauen_info;
	important = FALSE;
	permanent = TRUE;
	description = b_getcoststring(PRINT_BUILDMINE,MINENCOST);
};


func int djg_2006_minebauer_erbauen_condition()
{
	if(L2_MINE_ERBAUT != TRUE)
	{
		return TRUE;
	};
};

func void djg_2006_minebauer_erbauen_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= MINENCOST)
	{
		B_GiveInvItems(other,self,ItMi_Gold,MINENCOST);
		Npc_RemoveInvItems(self,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
		L2_MINE_ERBAUT = TRUE;
		self.aivar[91] = FALSE;
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance DJG_2006_MINEBAUER_ERBAUT(C_Info)
{
	npc = djg_2006_minebauer;
	condition = djg_2006_minebauer_erbaut_condition;
	information = djg_2006_minebauer_erbaut_info;
	important = TRUE;
	permanent = TRUE;
};


func int djg_2006_minebauer_erbaut_condition()
{
	if((L2_MINE_ERBAUT == TRUE) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void djg_2006_minebauer_erbaut_info()
{
	AI_StopProcessInfos(self);
};

