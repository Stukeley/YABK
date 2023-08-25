
func void ZS_CommentFakeGuild()
{
	Perception_Set_Minimal();
	AI_Standup(self);
	if(!C_BodyStateContains(self,BS_SIT))
	{
		B_TurnToNpc(self,other);
	};
	if(!C_BodyStateContains(other,BS_SIT))
	{
		B_TurnToNpc(other,self);
		if(Npc_GetDistToNpc(other,self) < 80)
		{
			AI_Dodge(other);
		};
	};
};

