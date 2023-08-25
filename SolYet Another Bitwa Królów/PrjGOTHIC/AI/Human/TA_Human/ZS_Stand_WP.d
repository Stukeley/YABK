
func void ZS_Stand_WP()
{
	Perception_Set_Normal();
	B_ResetAll(self);
	AI_SetWalkMode(self,NPC_RUN);
	AI_GotoWP(self,self.wp);
	AI_AlignToWP(self);
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_Stand_WP_loop()
{
	return LOOP_CONTINUE;
};

func void ZS_Stand_WP_end()
{
	AI_PlayAni(self,"T_LGUARD_2_STAND");
};

