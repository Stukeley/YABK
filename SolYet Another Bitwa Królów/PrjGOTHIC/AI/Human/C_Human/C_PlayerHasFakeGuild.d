
func int C_PlayerHasFakeGuild(var C_Npc slf,var C_Npc oth)
{
	var C_Item itm;
	var int NSC_CommentRangerArmor;
	itm = Npc_GetEquippedArmor(oth);
	NSC_CommentRangerArmor = TRUE;
	if(slf.aivar[AIV_IgnoresArmor] == TRUE)
	{
		return FALSE;
	};
	if(slf.aivar[AIV_IgnoresFakeGuild] == TRUE)
	{
		return FALSE;
	};
	if(C_NpcIsGateGuard(self) == TRUE)
	{
		return FALSE;
	};
	if((slf.guild == GIL_BDT) && C_PlayerIsFakeBandit(slf,oth))
	{
		if(Npc_HasEquippedArmor(oth) == FALSE)
		{
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(Npc_HasEquippedArmor(oth) == FALSE)
	{
		return FALSE;
	}
	else if(slf.guild == oth.guild)
	{
		if(Hlp_IsItem(itm,ithe_crown2) == TRUE)
		{
			if(NSC_CommentRangerArmor == TRUE)
			{
				return TRUE;
			}
			else
			{
				return FALSE;
			};
		};
		if((oth.guild == GIL_NONE) && (Hlp_IsItem(itm,ithe_crown) == TRUE))
		{
			return FALSE;
		}
		else
		{
			return TRUE;
		};
	}
	else
	{
		return FALSE;
	};
};

