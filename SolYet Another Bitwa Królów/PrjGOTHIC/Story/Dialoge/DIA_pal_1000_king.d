// Dialog z Krolem Czerwonego Obozu

instance PAL_1000_KING_EXIT(C_Info)
{
	npc = pal_1000_king;
	condition = pal_1000_king_exit_condition;
	information = pal_1000_king_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int pal_1000_king_exit_condition()
{
	return TRUE;
};

func void pal_1000_king_exit_info()
{
	AI_StopProcessInfos(self);
};

