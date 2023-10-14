// **********************
// NSC Zielt
// **********************

func void ZS_AimAt ()
{
    Perception_Set_Normal();
    
    B_ResetAll (self);
	  
	AI_SetWalkmode		(self,	NPC_WALK);	
	
	if (Npc_GetDistToWP (self,self.wp) > TA_DIST_SELFWP_MAX) 
	{
		AI_GotoWP		(self, self.wp);
		AI_AlignToWP	(self);
	};
			
	AI_EquipBestMeleeWeapon (self);
	
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_AimAt_Loop()
{	
    if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
    {
    	if (!Npc_HasEquippedRangedWeapon (self))
		{
			CreateInvItems	(self, ItRw_Bow_H_01, 1);
			CreateInvItem 	(self,ItRw_Arrow);
			AI_EquipBestRangedWeapon (self);
		};
		
		AI_ReadyRangedWeapon (self);
		AI_AimAt (self, hero);
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};
	
	return LOOP_CONTINUE;
};

func void ZS_AimAt_End ()
{
	AI_StandUp (self);
	AI_StopAim (self);
	AI_RemoveWeapon (self);
};