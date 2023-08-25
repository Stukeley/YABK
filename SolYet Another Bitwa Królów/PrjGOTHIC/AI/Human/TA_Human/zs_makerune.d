
func void zs_makerune()
{
	Perception_Set_Normal();
	B_ResetAll(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
	if(Npc_HasItems(self,ItMi_Flask) == 0)
	{
		CreateInvItem(self,ItMi_RuneBlank);
	};
};

func int zs_makerune_loop()
{
	if(!C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT) && Wld_IsMobAvailable(self,"RMAKER"))
	{
		AI_UseMob(self,"RMAKER",1);
	};
	return LOOP_CONTINUE;
};

func void zs_makerune_end()
{
	AI_UseMob(self,"RMAKER",-1);
};

