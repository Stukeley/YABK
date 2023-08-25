
func void ZS_Ghost()
{
};

func int ZS_Ghost_Loop()
{
	if(Npc_GetStateTime(self) >= 5)
	{
		if(Npc_GetDistToNpc(self,hero) > PERC_DIST_DIALOG)
		{
			AI_AlignToWP(self);
			Npc_SetStateTime(self,0);
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_Ghost_End()
{
};

