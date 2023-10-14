
instance None_8001_Smith_EXIT(C_Info)
{
	npc = None_8001_Smith;
	condition = None_8001_Smith_exit_condition;
	information = None_8001_Smith_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int None_8001_Smith_exit_condition()
{
	return TRUE;
};

func void None_8001_Smith_exit_info()
{
	AI_StopProcessInfos(self);
};


instance None_8001_Smith_SCHMIEDE_MIR_RUESSIS(C_Info)
{
	npc = None_8001_Smith;
	condition = None_8001_Smith_schmiede_mir_ruessis_condition;
	information = None_8001_Smith_schmiede_mir_ruessis_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SCHMIEDRUESSIS;
};


func int None_8001_Smith_schmiede_mir_ruessis_condition()
{
	if((L1_SCHMIEDGEGENSTAND != SCHMIED_RUESSI) && (L1_USED_ARMOR < MAXARMORSTEP))
	{
		return TRUE;
	};
};

func void None_8001_Smith_schmiede_mir_ruessis_info()
{
	AI_Output	(other, self, "DIA_Addon_Cavalorn_AUSRUESTUNG_15_00"); //Potrzebujê lepszego wyposa¿enia.
	L1_SCHMIEDGEGENSTAND = SCHMIED_RUESSI;
	AI_StopProcessInfos(self);
};


instance None_8001_Smith_SCHMIEDE_MIR_WAFFEN(C_Info)
{
	npc = None_8001_Smith;
	condition = None_8001_Smith_schmiede_mir_waffen_condition;
	information = None_8001_Smith_schmiede_mir_waffen_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SCHMIEDWAFFEN;
};


func int None_8001_Smith_schmiede_mir_waffen_condition()
{
	if((L1_SCHMIEDGEGENSTAND != SCHMIED_WAFFEN) && (L1_USED_WEAPON < MAXWEAPONSTEP))
	{
		return TRUE;
	};
};

func void None_8001_Smith_schmiede_mir_waffen_info()
{
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_waffe_15_00"); //Potrzebujê lepszej broni.
	L1_SCHMIEDGEGENSTAND = SCHMIED_WAFFEN;
	AI_StopProcessInfos(self);
};


instance None_8001_Smith_SCHMIEDE_MIR_GOLD(C_Info)
{
	npc = None_8001_Smith;
	condition = None_8001_Smith_schmiede_mir_gold_condition;
	information = None_8001_Smith_schmiede_mir_gold_info;
	important = FALSE;
	permanent = TRUE;
	description = PRINT_SCHMIEDGOLD;
};


func int None_8001_Smith_schmiede_mir_gold_condition()
{
	if(L1_SCHMIEDGEGENSTAND != SCHMIED_GOLD)
	{
		return TRUE;
	};
};

func void None_8001_Smith_schmiede_mir_gold_info()
{
	AI_Output (other, self, "DIA_Addon_Lares_RangerHelp_geld_15_00"); //Potrzebujê z³ota.
	L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
	AI_StopProcessInfos(self);
};

