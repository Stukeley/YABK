func void ZS_STAND_HALBERD ()
{
	Perception_Set_Normal();
	
	B_ResetAll (self);
	
	AI_SetWalkmode 	(self,NPC_WALK);
	 	
	if (Npc_GetDistToWP (self,self.wp) > TA_DIST_SELFWP_MAX) 
    {
		AI_GotoWP	(self, self.wp);
	};
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_STAND_HALBERD_loop ()
{
	if (Npc_IsOnFP (self, "STAND"))
 	{ 
 		AI_AlignToFP (self);
  		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
  		{
  			self.aivar[AIV_TAPOSITION] = NOTINPOS;
  		};
 	} 
 	else if (Wld_IsFPAvailable(self,"STAND"))
 	{
 		AI_GotoFP   (self, "STAND");
  		AI_StandUp   (self);
  		AI_AlignToFP  (self);
  		self.aivar[AIV_TAPOSITION] = NOTINPOS_WALK;
 	}
 	else
 	{
  		AI_AlignToWP (self); 
  		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK )
  		{
  			self.aivar[AIV_TAPOSITION] = NOTINPOS;
  		};  
 	}; 
 		
	if ((self.aivar[AIV_TAPOSITION] == NOTINPOS)
	&& (Npc_IsOnFP (self, "STAND")))
	{
			if (Npc_HasItems (self, ItMw_Hellebarde) == 0)
			{

			CreateInvItems	(self, ItMw_Hellebarde, 1);
			//EquipItem (self, ItMw_Hellebarde);
			AI_EquipBestMeleeWeapon (self);
		};
	
		
		
		AI_ReadyMeleeWeapon	(self);
		AI_AlignToFP 	(self);
		AI_StandUp 		(self);
		AI_PlayAni (self,"T_STAND_2_HALBERD");
		self.aivar[AIV_TAPOSITION] = ISINPOS;
	};

	return LOOP_CONTINUE;
};
