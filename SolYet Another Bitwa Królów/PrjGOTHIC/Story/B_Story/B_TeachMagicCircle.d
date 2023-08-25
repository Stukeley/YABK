
func int B_TeachMagicCircle(var C_Npc slf,var C_Npc oth,var int circle)
{
	var int kosten;
	kosten = B_GetLearnCostTalent(oth,NPC_TALENT_MAGE,circle);
	if((circle < 1) || (circle > 6))
	{
		Print("*** ERROR: Wrong Parameter ***");
		return FALSE;
	};
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NotEnoughLP,-1,-1,FONT_Screen,2);
		B_Say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Npc_SetTalentSkill(oth,NPC_TALENT_MAGE,circle);
	Log_CreateTopic(TOPIC_TalentMagicCircle,LOG_NOTE);
	B_LogEntry(TOPIC_TalentMagicCircle,"Die mir zugängliche magischen Runen sind in Kreise eingeteilt. Einen Spruch mit einem höheren Kreis als ich gemeistert habe, kann ich nicht verwenden.");
	if(circle == 1)
	{
		PrintScreen(PRINT_LearnCircle_1,-1,-1,FONT_Screen,2);
		B_LogEntry(TOPIC_TalentMagicCircle,"Die Sprüche des 1. Kreises sind: Licht, Feuerpfeil, Kleiner Blitz, leichte Wunden heilen und Goblin Skelett beschwören.");
		return TRUE;
	};
	if(circle == 2)
	{
		PrintScreen(PRINT_LearnCircle_2,-1,-1,FONT_Screen,2);
		B_LogEntry(TOPIC_TalentMagicCircle,"Die Sprüche des 2. Kreises sind: Feuerball, Eispfeil, Wolf rufen, Windfaust und Schlaf");
		return TRUE;
	};
	if(circle == 3)
	{
		PrintScreen(PRINT_LearnCircle_3,-1,-1,FONT_Screen,2);
		B_LogEntry(TOPIC_TalentMagicCircle,"Die Sprüche des 3. Kreises sind: mittlere Wunden heilen, Kugelblitz ,Kleiner Feuersturm, Skelett erschaffen, Angst und Eisblock");
		return TRUE;
	};
	if(circle == 4)
	{
		PrintScreen(PRINT_LearnCircle_4,-1,-1,FONT_Screen,2);
		B_LogEntry(TOPIC_TalentMagicCircle,"Die Sprüche des 4. Kreises sind: Blitzschlag, Steingolem erschaffen, Untote vernichten und Grosser Feuerball.");
		return TRUE;
	};
	if(circle == 5)
	{
		PrintScreen(PRINT_LearnCircle_5,-1,-1,FONT_Screen,2);
		B_LogEntry(TOPIC_TalentMagicCircle,"Die Sprüche des 5. Kreises sind: Grosser Feuersturm, Eiswelle ,Dämon beschwören und schwere Wunden heilen.");
		return TRUE;
	};
	if(circle == 6)
	{
		PrintScreen(PRINT_LearnCircle_6,-1,-1,FONT_Screen,2);
		B_LogEntry(TOPIC_TalentMagicCircle,"Die Sprüche des 6. Kreises sind: Feuerregen, Todeshauch, Todeswelle, Armee der Finsternis und Monster schrumpfen.");
		return TRUE;
	};
};

