
func void B_AddCityGuideChoices()
{
	Info_ClearChoices(dia_cityguide);
	if(!C_IsQuarterNearest(self,Q_UNTERSTADT))
	{
		Info_AddChoice(dia_cityguide,"In die Unterstadt.",dia_cityguide_unterstadt);
	};
	if(!C_IsQuarterNearest(self,Q_OBERSTADT))
	{
		Info_AddChoice(dia_cityguide,"Ins obere Viertel.",dia_cityguide_oberstadt);
	};
	if(!C_IsQuarterNearest(self,Q_TEMPEL))
	{
		Info_AddChoice(dia_cityguide,"Zum Adanos-Tempel",dia_cityguide_tempel);
	};
	if(!C_IsQuarterNearest(self,Q_MARKT))
	{
		Info_AddChoice(dia_cityguide,"Zum Marktplatz.",dia_cityguide_markt);
	};
	if(!C_IsQuarterNearest(self,Q_GALGEN))
	{
		Info_AddChoice(dia_cityguide,"Zum Galgenplatz",dia_cityguide_galgen);
	};
	if(!C_IsQuarterNearest(self,Q_KASERNE))
	{
		Info_AddChoice(dia_cityguide,"Zur Kaserne.",dia_cityguide_kaserne);
	};
	if(!C_IsQuarterNearest(self,Q_HAFEN))
	{
		Info_AddChoice(dia_cityguide,"Ins Hafenviertel.",dia_cityguide_hafen);
	};
	Info_AddChoice(dia_cityguide,"Danke - das war alles, was ich wissen wollte!",dia_cityguide_back);
};


instance DIA_CITYGUIDE(C_Info)
{
	nr = 700;
	condition = DIA_CITYGUIDE_Condition;
	information = DIA_CITYGUIDE_Info;
	permanent = TRUE;
	description = "Kannst du mir helfen, mich hier zurechtzufinden?";
};


func int DIA_CITYGUIDE_Condition()
{
	return TRUE;
};

func void DIA_CITYGUIDE_Info()
{
	if(C_NpcIsInQuarter(self) == Q_UNTERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_OBERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_TEMPEL)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_MARKT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_GALGEN)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_KASERNE)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_HAFEN)
	{
	};
	B_AddCityGuideChoices();
};

func void dia_cityguide_back()
{
	Info_ClearChoices(dia_cityguide);
};

func void dia_cityguide_unterstadt()
{
	if(C_NpcIsInQuarter(self) == Q_OBERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_TEMPEL)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_MARKT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_GALGEN)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_KASERNE)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_HAFEN)
	{
	};
	B_AddCityGuideChoices();
};

func void dia_cityguide_oberstadt()
{
	if(C_NpcIsInQuarter(self) == Q_UNTERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_TEMPEL)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_MARKT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_GALGEN)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_KASERNE)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_HAFEN)
	{
	};
	B_AddCityGuideChoices();
};

func void dia_cityguide_tempel()
{
	if(C_NpcIsInQuarter(self) == Q_UNTERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_OBERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_MARKT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_GALGEN)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_KASERNE)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_HAFEN)
	{
	};
	B_AddCityGuideChoices();
};

func void dia_cityguide_markt()
{
	if(C_NpcIsInQuarter(self) == Q_UNTERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_OBERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_TEMPEL)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_GALGEN)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_KASERNE)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_HAFEN)
	{
	};
	B_AddCityGuideChoices();
};

func void dia_cityguide_galgen()
{
	if(C_NpcIsInQuarter(self) == Q_UNTERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_OBERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_TEMPEL)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_MARKT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_KASERNE)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_HAFEN)
	{
	};
	B_AddCityGuideChoices();
};

func void dia_cityguide_kaserne()
{
	if(C_NpcIsInQuarter(self) == Q_UNTERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_OBERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_TEMPEL)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_MARKT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_GALGEN)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_HAFEN)
	{
	};
	B_AddCityGuideChoices();
};

func void dia_cityguide_hafen()
{
	if(C_NpcIsInQuarter(self) == Q_UNTERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_OBERSTADT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_TEMPEL)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_MARKT)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_GALGEN)
	{
	}
	else if(C_NpcIsInQuarter(self) == Q_KASERNE)
	{
	};
	B_AddCityGuideChoices();
};

func void B_AssignCityGuide(var C_Npc slf)
{
	dia_cityguide.npc = Hlp_GetInstanceID(slf);
};

