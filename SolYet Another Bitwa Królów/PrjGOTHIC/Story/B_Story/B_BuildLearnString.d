// Funkcje do budowania opcji dialogowych.

func string B_BuildLearnString(var string text, var int kosten)
{
	var string concatText;
	concatText = ConcatStrings(text,PRINT_Kosten);
	concatText = ConcatStrings(concatText,IntToString(kosten));
	concatText = ConcatStrings(concatText,PRINT_LP);
	return concatText;
};

// Funkcja sluzaca do budowania napisu opcji dialogowej zwiekszania poziomu zolnierzy.
func string b_BuildImproveLevelString(var int level)
{
	var string concatText;
	var int kosten;
	var string text;
	kosten = COSTPERLEVELSTEP * level;
	text = PRINT_IMPROVELEVELSTRING_1;
	concatText = ConcatStrings(text,IntToString(kosten));
	concatText = ConcatStrings(concatText,PRINT_IMPROVELEVELSTRING_2);
	return concatText;
};

// Funkcja sluzaca do budowania napisu opcji dialogowej uczenia sie nowego czaru.
func string B_GetSpellString(var string spell, var int kosten)
{
	var string concatText;
	concatText = ConcatStrings("(",spell);
	concatText = ConcatStrings(concatText,PRINT_SPELLSTRING_1);
	concatText = ConcatStrings(concatText,IntToString(kosten));
	concatText = ConcatStrings(concatText,PRINT_SPELLSTRING_2);
	return concatText;
};

// Funkcja sluzaca do budowania napisu opcji dialogowej kupowania czegokolwiek za zloto.
// Moze powinno by tak samo jak wyzej?
func string B_GetCostString(var string text, var int kosten)
{
	var string concatText;
	concatText = ConcatStrings(text," (");
	concatText = ConcatStrings(concatText,IntToString(kosten));
	concatText = ConcatStrings(concatText,PRINT_SPELLSTRING_2);
	return concatText;
};

// Funkcja sluzaca do budowania napisu opcji dialogowej kupowania wielu najemnikow za zloto.
func string B_GetCostString_Vielesoeldner(var string text, var int kosten)
{
	var string concatText;
	concatText = ConcatStrings(text,PRINT_STRING_VIELESOELDNER);
	concatText = ConcatStrings(concatText,IntToString(kosten));
	concatText = ConcatStrings(concatText,PRINT_SPELLSTRING_2);
	return concatText;
};

// Funkcja sluzaca do budowania napisu opcji dialogowej kupowania rzeczy za honor.
func string b_EhrenpunktString(var string wish)
{
	var string concatText;
	var string cost;
	var string Chance;
	if(Hlp_StrCmp(wish,"BONUSHPPERK"))
	{
		cost = IntToString(BONUSHPPERK_COST);
		concatText = ConcatStrings(PRINT_BONUSHPPERK,cost);
		concatText = ConcatStrings(concatText,PRINT_NEEDEDEHRE);
	}
	else if(Hlp_StrCmp(wish,"GOLD"))
	{
		cost = IntToString(GOLD_COST);
		concatText = ConcatStrings(PRINT_BUY,IntToString(GOLD_FUER_EHRENPUNKTE));
		concatText = ConcatStrings(concatText,PRINT_EHRENPUNKTEGOLD);
		concatText = ConcatStrings(concatText,cost);
		concatText = ConcatStrings(concatText,PRINT_NEEDEDEHRE);
	}
	else if(Hlp_StrCmp(wish,"SOELDNER"))
	{
		cost = IntToString(MERC_COST);
		concatText = ConcatStrings(PRINT_BUY,IntToString(MERC_FUER_EHRENPUNKTE));
		concatText = ConcatStrings(concatText,PRINT_BUYMERCS);
		concatText = ConcatStrings(concatText,cost);
		concatText = ConcatStrings(concatText,PRINT_NEEDEDEHRE);
	}
	else if(Hlp_StrCmp(wish,"KLAUEN"))
	{
		cost = IntToString(KLAU_COST);
		concatText = ConcatStrings(PRINT_STEAL,IntToString(KLAU_FUER_EHRENPUNKTE));
		concatText = ConcatStrings(concatText,PRINT_GOLDSTEHLEN);
		concatText = ConcatStrings(concatText,cost);
		concatText = ConcatStrings(concatText,PRINT_NEEDEDEHRE);
	}
	else if(Hlp_StrCmp(wish,"REVIVE"))
	{
		Chance = IntToString(REVIVAL_CHANCE);
		concatText = ConcatStrings(PRINT_REVEALSTRING1,Chance);
		concatText = ConcatStrings(concatText,PRINT_REVEALSTRING2);
		concatText = ConcatStrings(concatText,IntToString(REVIVE_COST));
		concatText = ConcatStrings(concatText,PRINT_NEEDEDEHRE);
	}
	else if(Hlp_StrCmp(wish,"KING_HEAL"))
	{
		cost = IntToString(KINGHEAL_COST);
		concatText = ConcatStrings(PRINT_HEALSTRING1,IntToString(KING_HEAL_PROZENT));
		concatText = ConcatStrings(concatText,PRINT_HEALSTRING2);
		concatText = ConcatStrings(concatText,cost);
		concatText = ConcatStrings(concatText,PRINT_NEEDEDEHRE);
	}
	else if(Hlp_StrCmp(wish,"VAMPIRSCHLAG"))
	{
		cost = IntToString(VAMPIR_COST);
		Chance = IntToString(VAMPIR_CHANCE);
		concatText = ConcatStrings(PRINT_VAMPIRSCHLAG1,IntToString(KING_HEAL_PROZENT));
		concatText = ConcatStrings(concatText,PRINT_VAMPIRSCHLAG2);
		concatText = ConcatStrings(concatText,IntToString(VAMPIR_HEAL));
		concatText = ConcatStrings(concatText,PRINT_VAMPIRSCHLAG3);
		concatText = ConcatStrings(concatText,cost);
		concatText = ConcatStrings(concatText,PRINT_NEEDEDEHRE);
	}
	else if(Hlp_StrCmp(wish,"INSTANTKILL"))
	{
		cost = IntToString(INSTANTKILL_COST);
		Chance = IntToString(INSTANTKILL_CHANCE);
		concatText = ConcatStrings(PRINT_INSTANTKILL1,Chance);
		concatText = ConcatStrings(concatText,PRINT_INSTANTKILL2);
		concatText = ConcatStrings(concatText,cost);
		concatText = ConcatStrings(concatText,PRINT_NEEDEDEHRE);
	}
	else if(Hlp_StrCmp(wish,"UNTOTENSPAWN"))
	{
		cost = IntToString(UNTOTENRESPAWN_COST);
		Chance = IntToString(UNTOTENRESPAWN_CHANCE);
		concatText = ConcatStrings(PRINT_UNTOTENSPAWN1,Chance);
		concatText = ConcatStrings(concatText,PRINT_UNTOTENSPAWN2);
		concatText = ConcatStrings(concatText,cost);
		concatText = ConcatStrings(concatText,PRINT_NEEDEDEHRE);
	};
	return concatText;
};

func string b_KlauString(var int gold)
{
	var string concatText;
	concatText = ConcatStrings(PRINT_KLAUSTRING1,IntToString(gold));
	concatText = ConcatStrings(concatText,PRINT_KLAUSTRING2);
	return concatText;
};

