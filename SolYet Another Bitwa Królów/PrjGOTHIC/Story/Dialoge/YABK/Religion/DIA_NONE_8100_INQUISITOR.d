
func void SpawnInquisitionSoldier()
{
	if (LAGER == 1)
	{
		Wld_InsertNPC(NONE_8110_SOLDIERINNOS, SPAWNWAYPOINT);
		Wld_InsertNPC(NONE_8211_SOLDIERBELIAR,SPAWNWAYPOINT);
	}
	else if (LAGER == 2)
	{
		Wld_InsertNPC(NONE_8210_SOLDIERINNOS, SPAWNWAYPOINT);
		Wld_InsertNPC(NONE_8111_SOLDIERBELIAR,SPAWNWAYPOINT);
	};

};


// Dialog z Inkwizytorem

instance NONE_8100_INQUISITOR_EXIT(C_Info)
{
	npc = NONE_8100_INQUISITOR;
	condition = NONE_8100_INQUISITOR_exit_condition;
	information = NONE_8100_INQUISITOR_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int NONE_8100_INQUISITOR_exit_condition()
{
	return TRUE;
};

func void NONE_8100_INQUISITOR_exit_info()
{
	AI_StopProcessInfos(self);
};


instance NONE_8100_INQUISITORR_ERBAUEN(C_Info)
{
	npc = NONE_8100_INQUISITOR;
	condition = NONE_8100_INQUISITOR_erbauen_condition;
	information = NONE_8100_INQUISITOR_erbauen_info;
	important = FALSE;
	permanent = TRUE;
	description = "Przyjmij wiarê w Innosa";
};


func int NONE_8100_INQUISITOR_erbauen_condition()
{
	if(ReligionBeliar != TRUE && ReligionInnos == FALSE)
	{
		return TRUE;
	};
};

func void NONE_8100_INQUISITOR_erbauen_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= 20)
	{
		B_GiveInvItems(other,self,ItMi_Gold,20);
		ReligionInnos = TRUE;
		if (LAGER == 1)
		{
			Wld_InsertNPC(NONE_8110_SOLDIERINNOS,SPAWNWAYPOINT);
			Wld_InsertNPC(NONE_8211_SOLDIERBELIAR,SPAWNWAYPOINT);
		}
		else if (LAGER == 2)
		{
			Wld_InsertNPC(NONE_8210_SOLDIERINNOS,SPAWNWAYPOINT);
			Wld_InsertNPC(NONE_8111_SOLDIERBELIAR,SPAWNWAYPOINT);
		};
		FF_APPLYOnceExtGT(SpawnInquisitionSoldier, 90000,-1);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};

