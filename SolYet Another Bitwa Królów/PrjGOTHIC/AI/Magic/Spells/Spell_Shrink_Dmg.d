// ************
// SPL_ShrinkDmg
// ************

const int SPL_Cost_ShrinkDmg		= 15;
const int SPL_Damage_ShrinkDmg 	= 50;


INSTANCE Spell_ShrinkDmg (C_Spell_Proto)
{
	time_per_mana			= 0;
	damage_per_level		= SPL_Damage_ShrinkDmg;
	damageType				= DAM_MAGIC;
};

func int Spell_Logic_ShrinkDmg (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_ShrinkDmg)
	{	
		return SPL_SENDCAST;
	}
	else //nicht genug Mana
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_ShrinkDmg()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_ShrinkDmg;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};