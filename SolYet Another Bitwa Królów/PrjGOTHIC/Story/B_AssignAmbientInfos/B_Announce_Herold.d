
func void B_Announce_Herold()
{
	var int randy;
	if(C_BodyStateContains(self,BS_SIT))
	{
		AI_Standup(self);
		B_TurnToNpc(self,hero);
	};
	AI_RemoveWeapon(self);
	CreateInvItem(self,Fakescroll);
	AI_UseItemToState(self,Fakescroll,1);
	if(Kapitel <= 2)
	{
		randy = Hlp_Random(5);
		if(randy == 0)
		{
		}
		else if(randy == 1)
		{
		}
		else if(randy == 2)
		{
		}
		else if(randy == 3)
		{
		}
		else
		{
		};
	}
	else if(Kapitel == 3)
	{
		if(MIS_RescueBennet != LOG_SUCCESS)
		{
		}
		else
		{
		};
	}
	else if(Kapitel == 4)
	{
	}
	else
	{
		randy = Hlp_Random(2);
		if(randy == 0)
		{
		}
		else
		{
		};
	};
	AI_UseItemToState(self,Fakescroll,-1);
};

