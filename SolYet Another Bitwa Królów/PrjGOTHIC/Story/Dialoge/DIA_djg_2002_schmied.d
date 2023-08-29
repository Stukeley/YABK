// Dialog z Kowalem Niebieskiego Obozu

instance DJG_2002_SCHMIED_EXIT(C_Info)
{
	npc = djg_2002_schmied;
	condition = djg_2002_schmied_exit_condition;
	information = djg_2002_schmied_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int djg_2002_schmied_exit_condition()
{
	return TRUE;
};

func void djg_2002_schmied_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DJG_2002_SCHMIED_SCHMIEDE_MIR_RUESSIS(C_Info)
{
	npc = djg_2002_schmied;
	condition = djg_2002_schmied_schmiede_mir_ruessis_condition;
	information = djg_2002_schmied_schmiede_mir_ruessis_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SCHMIEDRUESSIS;
};


func int djg_2002_schmied_schmiede_mir_ruessis_condition()
{
	if((L2_SCHMIEDGEGENSTAND != SCHMIED_RUESSI) && (L2_USED_ARMOR < MAXARMORSTEP))
	{
		return TRUE;
	};
};

func void djg_2002_schmied_schmiede_mir_ruessis_info()
{
	L2_SCHMIEDGEGENSTAND = SCHMIED_RUESSI;
	AI_StopProcessInfos(self);
};


instance DJG_2002_SCHMIED_SCHMIEDE_MIR_WAFFEN(C_Info)
{
	npc = djg_2002_schmied;
	condition = djg_2002_schmied_schmiede_mir_waffen_condition;
	information = djg_2002_schmied_schmiede_mir_waffen_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SCHMIEDWAFFEN;
};


func int djg_2002_schmied_schmiede_mir_waffen_condition()
{
	if((L2_SCHMIEDGEGENSTAND != SCHMIED_WAFFEN) && (L2_USED_WEAPON < MAXWEAPONSTEP))
	{
		return TRUE;
	};
};

func void djg_2002_schmied_schmiede_mir_waffen_info()
{
	L2_SCHMIEDGEGENSTAND = SCHMIED_WAFFEN;
	AI_StopProcessInfos(self);
};


instance DJG_2002_SCHMIED_SCHMIEDE_MIR_GOLD(C_Info)
{
	npc = djg_2002_schmied;
	condition = djg_2002_schmied_schmiede_mir_gold_condition;
	information = djg_2002_schmied_schmiede_mir_gold_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SCHMIEDGOLD;
};


func int djg_2002_schmied_schmiede_mir_gold_condition()
{
	if(L2_SCHMIEDGEGENSTAND != SCHMIED_GOLD)
	{
		return TRUE;
	};
};

func void djg_2002_schmied_schmiede_mir_gold_info()
{
	L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
	AI_StopProcessInfos(self);
};

