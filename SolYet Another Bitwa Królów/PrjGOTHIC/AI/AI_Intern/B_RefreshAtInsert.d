
func void B_RefreshAtInsert()
{
	var C_Npc her;
	if(self.attribute[ATR_HITPOINTS] <= 0)
	{
		return;
	};
	her = Hlp_GetNpc(PC_Hero);
	if((self.guild < GIL_SEPERATOR_HUM) && (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(her)))
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};

