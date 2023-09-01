
func void ZS_HealSelf()
{
	Perception_Set_Minimal();
	B_ToggleImmortal(self);
};

func int ZS_HealSelf_Loop()
{
	B_ToggleImmortal(self);
	if(self.attribute[ATR_HITPOINTS] == self.attribute[ATR_HITPOINTS_MAX])
	{
		Npc_ClearAIQueue(self);
		return LOOP_END;
	};
	if(Npc_HasItems(self,ItPo_Health_03) > 0)
	{
		AI_UseItem(self,ItPo_Health_03);
		return LOOP_CONTINUE;
	}
	else if(Npc_HasItems(self,ItPo_Health_02) > 0)
	{
		AI_UseItem(self,ItPo_Health_02);
		return LOOP_CONTINUE;
	}
	else if(Npc_HasItems(self,ItPo_Health_01) > 0)
	{
		AI_UseItem(self,ItPo_Health_01);
		return LOOP_CONTINUE;
	}
	else
	{
		Npc_ClearAIQueue(self);
		return LOOP_END;
	};
};

func void ZS_HealSelf_End()
{
};

