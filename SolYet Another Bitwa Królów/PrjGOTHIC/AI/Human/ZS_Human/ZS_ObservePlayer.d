
func void ZS_ObservePlayer()
{
	Perception_Set_Normal();
};

func int ZS_ObservePlayer_Loop()
{
	if(C_BodyStateContains(other,BS_SNEAK) && (Player_SneakerComment == FALSE))
	{
		Player_SneakerComment = TRUE;
		AI_PointAtNpc(self,other);
		B_Say(self,other,"$WHATSTHISSUPPOSEDTOBE");
		AI_StopPointAt(self);
		Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,other);
	};
	if(Npc_GetStateTime(self) > self.aivar[AIV_StateTime])
	{
		if(!C_BodyStateContains(self,BS_SIT))
		{
			B_TurnToNpc(self,other);
		};
		self.aivar[AIV_StateTime] = Hlp_Random(2) + 1;
		Npc_SetStateTime(self,0);
	};
	if(Npc_GetDistToNpc(self,other) > PERC_DIST_INTERMEDIAT)
	{
		Npc_ClearAIQueue(self);
		return LOOP_END;
	}
	else
	{
		return LOOP_CONTINUE;
	};
};

func void ZS_ObservePlayer_End()
{
	B_StopLookAt(self);
};

