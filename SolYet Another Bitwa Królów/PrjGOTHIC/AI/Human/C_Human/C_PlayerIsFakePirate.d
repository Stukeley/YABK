
func int C_PlayerIsFakePirate(var C_Npc slf,var C_Npc oth)
{
	var C_Item itm;
	if(slf.aivar[AIV_IgnoresArmor] == TRUE)
	{
		return FALSE;
	};
	if(slf.aivar[AIV_IgnoresFakeGuild] == TRUE)
	{
		return FALSE;
	};
	if(Npc_HasEquippedArmor(other) == TRUE)
	{
		itm = Npc_GetEquippedArmor(oth);
		if((Hlp_IsItem(itm,ithe_crown) == TRUE) || (Hlp_IsItem(itm,ithe_crown2) == TRUE) || (Hlp_IsItem(itm,ithe_crown3) == TRUE))
		{
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	}
	else
	{
		return FALSE;
	};
};

