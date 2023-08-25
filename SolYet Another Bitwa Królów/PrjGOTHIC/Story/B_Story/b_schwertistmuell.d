
var int muellmannstandup;

func int b_schwertistmuell(var C_Item schwert)
{
	if((Hlp_GetInstanceID(schwert) == itmw_sword_pal) && (L1_USED_WEAPON < 2))
	{
		return FALSE;
	}
	else if((Hlp_GetInstanceID(schwert) == itmw_langschwert_pal) && (L1_USED_WEAPON < 3))
	{
		return FALSE;
	}
	else if((Hlp_GetInstanceID(schwert) == itmw_elbastardo_pal) && (L1_USED_WEAPON < 4))
	{
		return FALSE;
	}
	else if((Hlp_GetInstanceID(schwert) == itmw_sword_djg) && (L2_USED_WEAPON < 2))
	{
		return FALSE;
	}
	else if((Hlp_GetInstanceID(schwert) == itmw_langschwert_djg) && (L2_USED_WEAPON < 3))
	{
		return FALSE;
	}
	else if((Hlp_GetInstanceID(schwert) == itmw_elbastardo_djg) && (L2_USED_WEAPON < 4))
	{
		return FALSE;
	};
	return TRUE;
};

func void zs_muell()
{
	Perception_Set_Normal();
	B_ResetAll(self);
	AI_SetWalkMode(self,NPC_RUN);
	if(Npc_GetDistToWP(self,self.wp) > TA_DIST_SELFWP_MAX)
	{
		AI_GotoWP(self,self.wp);
	};
	AI_AlignToWP(self);
};

func int zs_muell_loop()
{
	Npc_PerceiveAll(self);
	if(Wld_DetectItem(self,ITEM_KAT_FF))
	{
		if(Hlp_IsValidItem(item) && (Npc_GetDistToItem(self,item) < 600) && b_schwertistmuell(item) && (Npc_GetHeightToItem(self,item) < 230))
		{
			self.aivar[93] = FALSE;
			if(Npc_GetDistToItem(self,item) > 400)
			{
				AI_GotoItem(self,item);
			};
			AI_TakeItem(self,item);
			Npc_SetStateTime(self,0);
			if(Npc_GetDistToWP(self,self.wp) > 200)
			{
				AI_GotoWP(self,self.wp);
			};
			Npc_SetStateTime(self,0);
		}
		else
		{
			if(Npc_GetDistToWP(self,self.wp) > 200)
			{
				AI_GotoWP(self,self.wp);
			};
			self.aivar[93] = TRUE;
			b_muellmann(self);
			Npc_SetStateTime(self,0);
		};
	}
	else if(Wld_DetectItem(self,ITEM_KAT_NF))
	{
		if(Hlp_IsValidItem(item) && (Npc_GetDistToItem(self,item) < 600) && b_schwertistmuell(item) && (Npc_GetHeightToItem(self,item) < 230))
		{
			self.aivar[93] = FALSE;
			if(Npc_GetDistToItem(self,item) > 400)
			{
				AI_GotoItem(self,item);
			};
			AI_TakeItem(self,item);
			Npc_SetStateTime(self,0);
			if(Npc_GetDistToWP(self,self.wp) > 200)
			{
				AI_GotoWP(self,self.wp);
			};
			Npc_SetStateTime(self,0);
		}
		else
		{
			if(Npc_GetDistToWP(self,self.wp) > 200)
			{
				AI_GotoWP(self,self.wp);
			};
			self.aivar[93] = TRUE;
			b_muellmann(self);
			Npc_SetStateTime(self,0);
		};
	}
	else if(Wld_DetectItem(self,ITEM_KAT_MUN))
	{
		if(Hlp_IsValidItem(item) && (Npc_GetDistToItem(self,item) < 600) && b_schwertistmuell(item) && (Npc_GetHeightToItem(self,item) < 230))
		{
			self.aivar[93] = FALSE;
			if(Npc_GetDistToItem(self,item) > 400)
			{
				AI_GotoItem(self,item);
			};
			AI_TakeItem(self,item);
			Npc_SetStateTime(self,0);
			if(Npc_GetDistToWP(self,self.wp) > 200)
			{
				AI_GotoWP(self,self.wp);
			};
			Npc_SetStateTime(self,0);
		}
		else
		{
			if(Npc_GetDistToWP(self,self.wp) > 200)
			{
				AI_GotoWP(self,self.wp);
			};
			self.aivar[93] = TRUE;
			b_muellmann(self);
			Npc_SetStateTime(self,0);
		};
	}
	else
	{
		if(Npc_GetDistToWP(self,self.wp) > 200)
		{
			AI_GotoWP(self,self.wp);
		};
		self.aivar[93] = TRUE;
		b_muellmann(self);
		Npc_SetStateTime(self,0);
	};
	return LOOP_CONTINUE;
};

func int zs_muell_end()
{
	return TRUE;
};

