
const int SPL_Cost_DESTROYUNDEAD = MageSpellCost_3;
const int SPL_Damage_DESTROYUNDEAD = MageDamageSpell_3;

instance Spell_DestroyUndead(C_Spell_Proto)
{
	time_per_mana = 0;
	damage_per_level = SPL_Damage_DESTROYUNDEAD;
};


func int Spell_Logic_DestroyUndead(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_DESTROYUNDEAD)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_DestroyUndead()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_DESTROYUNDEAD;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

