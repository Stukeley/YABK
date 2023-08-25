
func int B_AssessEnterRoom()
{
	var int portalguild;
	return FALSE;
};

func void B_AssessPortalCollision()
{
	var int formerportalguild;
	formerportalguild = Wld_GetFormerPlayerPortalGuild();
	if(B_AssessEnterRoom())
	{
		return;
	};
	if(!Npc_CanSeeNpc(self,other) && (C_BodyStateContains(other,BS_SNEAK) || C_BodyStateContains(other,BS_STAND)))
	{
		return;
	};
	Npc_PerceiveAll(self);
	if(Wld_DetectNpcEx(self,-1,ZS_ClearRoom,-1,FALSE))
	{
		return;
	};
	if((self.guild == formerportalguild) || (Wld_GetGuildAttitude(self.guild,formerportalguild) == ATT_FRIENDLY))
	{
		if((Wld_GetGuildAttitude(self.guild,other.guild) == ATT_FRIENDLY) || (Npc_IsPlayer(other) && (self.npcType == NPCTYPE_FRIEND)))
		{
			return;
		};
		if(self.guild == GIL_NONE)
		{
			return;
		};
		if(((formerportalguild == GIL_MIL) || (formerportalguild == GIL_SLD)) && (Wld_GetGuildAttitude(self.guild,formerportalguild) == ATT_FRIENDLY))
		{
			B_Attack(self,other,AR_LeftPortalRoom,0);
			return;
		}
		else
		{
			self.aivar[AIV_SeenLeftRoom] = TRUE;
			Npc_ClearAIQueue(self);
			B_ClearPerceptions(self);
			AI_StartState(self,ZS_ObservePlayer,0,"");
			return;
		};
	};
};

