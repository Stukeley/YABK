
instance DJG_2000_KING_EXIT(C_Info)
{
	npc = djg_2000_king;
	condition = djg_2000_king_exit_condition;
	information = djg_2000_king_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int djg_2000_king_exit_condition()
{
	return TRUE;
};

func void djg_2000_king_exit_info()
{
	AI_StopProcessInfos(self);
};

