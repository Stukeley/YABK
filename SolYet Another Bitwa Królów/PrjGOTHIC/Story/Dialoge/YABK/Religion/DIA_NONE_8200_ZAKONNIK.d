
func void SpawnZakonSoldier()
{
	if (LAGER == 1)
	{
		Wld_InsertNPC(NONE_8210_SOLDIERINNOS, SPAWNWAYPOINT);
		Wld_InsertNPC(NONE_8111_SOLDIERBELIAR,SPAWNWAYPOINT);

	}
	else if (LAGER == 2)
	{
		Wld_InsertNPC(NONE_8110_SOLDIERINNOS, SPAWNWAYPOINT);
		Wld_InsertNPC(NONE_8211_SOLDIERBELIAR,SPAWNWAYPOINT);
	};

};


// Dialog z Inkwizytorem

instance NONE_8200_ZAKONNIK_EXIT(C_Info)
{
	npc = NONE_8200_ZAKONNIK;
	condition = NONE_8200_ZAKONNIK_exit_condition;
	information = NONE_8200_ZAKONNIK_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int NONE_8200_ZAKONNIK_exit_condition()
{
	return TRUE;
};

func void NONE_8200_ZAKONNIK_exit_info()
{
	AI_StopProcessInfos(self);
};


instance NONE_8200_ZAKONNIK_ERBAUEN(C_Info)
{
	npc = NONE_8200_ZAKONNIK;
	condition = NONE_8200_ZAKONNIK_erbauen_condition;
	information = NONE_8200_ZAKONNIK_erbauen_info;
	important = FALSE;
	permanent = TRUE;
	description = "Przyjmij wiarê w Beliara";
};


func int NONE_8200_ZAKONNIK_erbauen_condition()
{
	if(ReligionBeliar == FALSE && ReligionInnos != TRUE)
	{
		return TRUE;
	};
};

func void NONE_8200_ZAKONNIK_erbauen_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= 20)
	{
		B_GiveInvItems(other,self,ItMi_Gold,20);
		ReligionBeliar = TRUE;
		if (LAGER == 1)
		{


			Wld_InsertNPC(NONE_8210_SOLDIERINNOS,SPAWNWAYPOINT);
			Wld_InsertNPC(NONE_8111_SOLDIERBELIAR,SPAWNWAYPOINT);
		}
		else if (LAGER == 2)
		{
			Wld_InsertNPC(NONE_8110_SOLDIERINNOS,SPAWNWAYPOINT);
			Wld_InsertNPC(NONE_8211_SOLDIERBELIAR,SPAWNWAYPOINT);
		};
		FF_APPLYOnceExtGT(SpawnZakonSoldier, 90000,-1);
	}
	else
	{
		AI_Output(self,other,"PAL_1003_Verwalter_IMPROVE_LEVEL_1_Info_06_03");	//Nie masz wystarczaj¹co z³ota.
	};
};

