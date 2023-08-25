
func void b_debug(var string text,var int cost)
{
	var string concatText;
	if(cost != 0)
	{
		concatText = ConcatStrings(text,IntToString(cost));
	}
	else
	{
		concatText = text;
	};
	if(DEBUG == TRUE)
	{
		AI_PrintScreen(concatText,5,5,FONT_ScreenSmall,8);
	};
};

