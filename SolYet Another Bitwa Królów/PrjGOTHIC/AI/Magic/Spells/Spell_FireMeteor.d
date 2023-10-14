
const int SPL_COST_FireMeteor = 15;
const int SPL_DAMAGE_FireMeteor = 50;

instance Spell_FireMeteor(C_Spell_Proto)
{
	time_per_mana = 0;
	damage_per_level = SPL_DAMAGE_FireMeteor;
	damagetype = DAM_MAGIC;
};


func int Spell_Logic_FireMeteor(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_COST_FireMeteor)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_FireMeteor()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_COST_FireMeteor;
	};
	self.aivar[AIV_SelectSpell] += 1;
};

