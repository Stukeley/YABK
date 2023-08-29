
func void B_Message(var string message)
{
	if(NONEWS_ON == FALSE)
	{
		if(Hlp_StrCmp(message,"NEWS_Eigen_HeldRevive") == 1)
		{
			Snd_Play("NEWSw_Eigen_HeldRevive");
		};
		if(Hlp_StrCmp(message,"NEWS_Eigen_HeldLevelup") == 1)
		{
			Snd_Play("NEWSw_Eigen_HeldLevelup");
		};
		if(Hlp_StrCmp(message,"NEWS_Eigen_HeldKilled") == 1)
		{
			Snd_Play("NEWSw_Eigen_HeldKilled");
		};
		if(Hlp_StrCmp(message,"NEWS_Eigen_KoenigAngegriffen") == 1)
		{
			Snd_Play("NEWSw_Eigen_KoenigAngegriffen");
		};
		if(Hlp_StrCmp(message,"NEWS_Eigen_MinenarbeiterKilled") == 1)
		{
			Snd_Play("NEWSw_Eigen_MinenarbeiterKilled");
		};
		if(Hlp_StrCmp(message,"NEWS_Eigen_SchmiedRuessiFertig") == 1)
		{
			Snd_Play("NEWSw_Eigen_SchmiedRuessiFertig");
		};
		if(Hlp_StrCmp(message,"NEWS_Eigen_SchmiedWaffeFertig") == 1)
		{
			Snd_Play("NEWSw_Eigen_SchmiedWaffeFertig");
		};
		if(Hlp_StrCmp(message,"NEWS_Eigen_WacheKilled") == 1)
		{
			Snd_Play("NEWSw_Eigen_WacheKilled");
		};
		if(Hlp_StrCmp(message,"NEWS_Gegner_Held") == 1)
		{
			Snd_Play("NEWSw_Gegner_Held");
		};
		if(Hlp_StrCmp(message,"NEWS_Gegner_HoehlenSoeldner") == 1)
		{
			Snd_Play("NEWSw_Gegner_HoehlenSoeldner");
		};
		if(Hlp_StrCmp(message,"NEWS_Gegner_MagierFertig") == 1)
		{
			Snd_Play("NEWSw_Gegner_MagierFertig");
		};
		if(Hlp_StrCmp(message,"NEWS_Gegner_MineFertig") == 1)
		{
			Snd_Play("NEWSw_Gegner_MineFertig");
		};
		if(Hlp_StrCmp(message,"NEWS_Gegner_Minenwachen") == 1)
		{
			Snd_Play("NEWSw_Gegner_Minenwachen");
		};
		if(Hlp_StrCmp(message,"NEWS_Gegner_SchmiedeFertig") == 1)
		{
			Snd_Play("NEWSw_Gegner_SchmiedeFertig");
		};
		if(Hlp_StrCmp(message,"NEWS_Gegner_Soeldner") == 1)
		{
			Snd_Play("NEWSw_Gegner_Soeldner");
		};
		if(Hlp_StrCmp(message,"NEWS_Neutral_SkelettBlauesLager") == 1)
		{
			Snd_Play("NEWSw_Neutral_SkelettBlauesLager");
		};
		if(Hlp_StrCmp(message,"NEWS_Neutral_SkelettRotesLager") == 1)
		{
			Snd_Play("NEWSw_Neutral_SkelettRotesLager");
		};
	};
};

