// Dialog z Nekromant¹

instance NONE_4000_NECROMANCER_EXIT(C_Info)
{
	npc = NONE_4000_NECROMANCER;
	condition = NONE_4000_NECROMANCER_exit_condition;
	information = NONE_4000_NECROMANCER_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int NONE_4000_NECROMANCER_exit_condition()
{
	return TRUE;
};

func void NONE_4000_NECROMANCER_exit_info()
{
	B_StartOtherRoutine (NONE_4001_Skeleton,"Start_Lager_2_Attack");
	AI_StopProcessInfos(self);
};


instance NONE_4000_NECROMANCER_ERBAUEN(C_Info)
{
	npc = NONE_4000_NECROMANCER;
	condition = NONE_4000_NECROMANCER_erbauen_condition;
	information = NONE_4000_NECROMANCER_erbauen_info;
	important = FALSE;
	permanent = TRUE;
	description = "Przyzwij szkieleta wojownika";
};


func int NONE_4000_NECROMANCER_erbauen_condition()
{
	if(L2_MAGIE_ERBAUT != TRUE)
	{
		return TRUE;
	};
};

func void NONE_4000_NECROMANCER_erbauen_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= 20)
	{
		B_GiveInvItems(other,self,ItMi_Gold,20);
		AI_StopProcessInfos(self);
		Wld_InsertNpc(PAL_7500_Demon,"SPAWNWAYPOINT");

	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};


instance NONE_4000_NECROMANCER_ERBAUT(C_Info)
{
	npc = NONE_4000_NECROMANCER;
	condition = NONE_4000_NECROMANCER_erbaut_condition;
	information = NONE_4000_NECROMANCER_erbaut_info;
	important = TRUE;
	permanent = TRUE;
};


func int NONE_4000_NECROMANCER_erbaut_condition()
{
	if((L2_MAGIE_ERBAUT == TRUE) && Npc_IsInState(self,ZS_Talk))
	{
		return TRUE;
	};
};

func void NONE_4000_NECROMANCER_erbaut_info()
{
	AI_StopProcessInfos(self);
};

