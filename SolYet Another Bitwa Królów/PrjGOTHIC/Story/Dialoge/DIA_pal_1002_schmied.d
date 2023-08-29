// Dialog z Kowalem Czerwonego Obozu

instance PAL_1002_SCHMIED_EXIT(C_Info)
{
	npc = pal_1002_schmied;
	condition = pal_1002_schmied_exit_condition;
	information = pal_1002_schmied_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int pal_1002_schmied_exit_condition()
{
	return TRUE;
};

func void pal_1002_schmied_exit_info()
{
	AI_StopProcessInfos(self);
};


instance PAL_1002_SCHMIED_SCHMIEDE_MIR_RUESSIS(C_Info)
{
	npc = pal_1002_schmied;
	condition = pal_1002_schmied_schmiede_mir_ruessis_condition;
	information = pal_1002_schmied_schmiede_mir_ruessis_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SCHMIEDRUESSIS;
};


func int pal_1002_schmied_schmiede_mir_ruessis_condition()
{
	if((L1_SCHMIEDGEGENSTAND != SCHMIED_RUESSI) && (L1_USED_ARMOR < MAXARMORSTEP))
	{
		return TRUE;
	};
};

func void pal_1002_schmied_schmiede_mir_ruessis_info()
{
	L1_SCHMIEDGEGENSTAND = SCHMIED_RUESSI;
	AI_StopProcessInfos(self);
};


instance PAL_1002_SCHMIED_SCHMIEDE_MIR_WAFFEN(C_Info)
{
	npc = pal_1002_schmied;
	condition = pal_1002_schmied_schmiede_mir_waffen_condition;
	information = pal_1002_schmied_schmiede_mir_waffen_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SCHMIEDWAFFEN;
};


func int pal_1002_schmied_schmiede_mir_waffen_condition()
{
	if((L1_SCHMIEDGEGENSTAND != SCHMIED_WAFFEN) && (L1_USED_WEAPON < MAXWEAPONSTEP))
	{
		return TRUE;
	};
};

func void pal_1002_schmied_schmiede_mir_waffen_info()
{
	L1_SCHMIEDGEGENSTAND = SCHMIED_WAFFEN;
	AI_StopProcessInfos(self);
};


instance PAL_1002_SCHMIED_SCHMIEDE_MIR_GOLD(C_Info)
{
	npc = pal_1002_schmied;
	condition = pal_1002_schmied_schmiede_mir_gold_condition;
	information = pal_1002_schmied_schmiede_mir_gold_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SCHMIEDGOLD;
};


func int pal_1002_schmied_schmiede_mir_gold_condition()
{
	if(L1_SCHMIEDGEGENSTAND != SCHMIED_GOLD)
	{
		return TRUE;
	};
};

func void pal_1002_schmied_schmiede_mir_gold_info()
{
	L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
	AI_StopProcessInfos(self);
};

