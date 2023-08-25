
func int B_TeachPlayerTalentForeignLanguage(var C_Npc slf,var C_Npc oth,var int Language)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_FOREIGNLANGUAGE,Language);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLearnPoints,-1,-1,FONT_ScreenSmall,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_Language,LOG_NOTE);
	PrintScreen(PRINT_LearnForeignLanguage,-1,-1,FONT_Screen,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_FOREIGNLANGUAGE,1);
	return TRUE;
};

