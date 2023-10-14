
const int SPL_Cost_Teleport = 0;

func void B_PrintTeleportTooFarAway(var int level)
{
	if(level != CurrentLevel)
	{
	};
};


instance Spell_Teleport(C_Spell_Proto)
{
	time_per_mana = 0;
	spellType = SPELL_NEUTRAL;
	targetCollectAlgo = TARGET_COLLECT_CASTER;
	canTurnDuringInvest = 0;
	targetCollectRange = 0;
	targetCollectAzi = 0;
	targetCollectElev = 0;
};


func int Spell_Logic_PalTeleportSecret(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_PalTeleportSecret()
{
	B_PrintTeleportTooFarAway(NEWWORLD_ZEN);
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	AI_Teleport(self,"NW_PAL_SECRETCHAMBER");
	AI_PlayAni(self,"T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportSeaport(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportSeaport()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	if (LAGER == 2){
		AI_Teleport		(self, "L1_KING_02"); //Teleportacja 
	};
	if (LAGER == 1){
		AI_Teleport		(self, "L2_KING_02"); //To jest gdzie się teleporujemy
	};
	AI_PlayAni		(self, "s_BSFIRE_S1" );	//A to jakej animacji użyjemy
};

func int Spell_Logic_TeleportMonastery(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportMonastery()
{
	B_PrintTeleportTooFarAway(NEWWORLD_ZEN);
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	AI_Teleport(self,"KLOSTER");
	AI_PlayAni(self,"T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportFarm(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportFarm()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	if (LAGER == 2){
		AI_Teleport		(self, "L2_KING_02"); //Teleportacja 
	};
	if (LAGER == 1){
		AI_Teleport		(self, "L1_KING_02"); //To jest gdzie się teleporujemy
	};
	AI_PlayAni		(self, "s_BSFIRE_S1" );	//A to jakej animacji użyjemy
};

func int Spell_Logic_TeleportXardas(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportXardas()
{
	B_PrintTeleportTooFarAway(NEWWORLD_ZEN);
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	AI_Teleport(self,"XARDAS");
	AI_PlayAni(self,"T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportPassNW(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportPassNW()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	AI_Teleport(self,"MINE");
	AI_PlayAni(self,"T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportPassOW(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportPassOW()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	AI_Teleport(self,"PASS_01");
	AI_PlayAni(self,"T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportOC(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportOC()
{
	B_PrintTeleportTooFarAway(OldWorld_Zen);
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	AI_Teleport(self,"OC_MAGE_CENTER");
	AI_PlayAni(self,"T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportOWDemonTower(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportOWDemonTower()
{
	B_PrintTeleportTooFarAway(OldWorld_Zen);
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	AI_Teleport(self,"DT_E3_03");
	AI_PlayAni(self,"T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportTaverne(var int manaInvested)
{
	if(Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if(self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportTaverne()
{
	if(Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport;
	};
	AI_Teleport(self,"HOEHLE");
	AI_PlayAni(self,"T_HEASHOOT_2_STAND");
};
// ------ Czerwona Latarnia------
func int Spell_Logic_TeleportMine (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportMine()
{
	B_PrintTeleportTooFarAway (MAP);		// W jakim świecie nie pokaże "Za Daleko"
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport; //Ile many zużyjemy (SPL_cost_Teleport jest na początku pliku jak chcecie własną wartość to dodajcie jedną :D 
	};
	if (LAGER == 1){
		AI_Teleport		(self, "L1_MINE_01"); //Teleportacja 
	};
	if (LAGER == 2){
		AI_Teleport		(self, "L2_MINE_01"); //To jest gdzie się teleporujemy
	};
	AI_PlayAni		(self, "s_BSFIRE_S1" );	//A to jakej animacji użyjemy
};
// ------ Czerwona Latarnia------
func int Spell_Logic_TeleportMonaste (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Scroll))
	{
		return SPL_SENDCAST;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Teleport)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_NEXTLEVEL;
};

func void Spell_Cast_TeleportMonaste()
{
	B_PrintTeleportTooFarAway (MAP);		// W jakim świecie nie pokaże "Za Daleko"
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - SPL_Cost_Teleport; //Ile many zużyjemy (SPL_cost_Teleport jest na początku pliku jak chcecie własną wartość to dodajcie jedną :D 
	};
	if (LAGER == 1){
		AI_Teleport		(self, "L1_MAGIE_01"); //Teleportacja 
	};
	if (LAGER == 2){
		AI_Teleport		(self, "L2_MAGIE_01"); //To jest gdzie się teleporujemy
	};
	AI_PlayAni		(self, "s_BSFIRE_S1" );	//A to jakej animacji użyjemy
};
func void Spell_Cast_Teleport()
{
	if(Npc_GetActiveSpell(self) == SPL_PalTeleportSecret)
	{
		Spell_Cast_PalTeleportSecret();
	};
	if(Npc_GetActiveSpell(self) == SPL_TeleportSeaport)
	{
		Spell_Cast_TeleportSeaport();
	};
	if(Npc_GetActiveSpell(self) == SPL_TeleportMonastery)
	{
		Spell_Cast_TeleportMonastery();
	};
	if(Npc_GetActiveSpell(self) == SPL_TeleportFarm)
	{
		Spell_Cast_TeleportFarm();
	};
	if(Npc_GetActiveSpell(self) == SPL_TeleportXardas)
	{
		Spell_Cast_TeleportXardas();
	};
	if(Npc_GetActiveSpell(self) == SPL_TeleportPassNW)
	{
		Spell_Cast_TeleportPassNW();
	};
	if(Npc_GetActiveSpell(self) == SPL_TeleportPassOW)
	{
		Spell_Cast_TeleportPassOW();
	};
	if(Npc_GetActiveSpell(self) == SPL_TeleportOC)
	{
		Spell_Cast_TeleportOC();
	};
	if(Npc_GetActiveSpell(self) == SPL_TeleportOWDemonTower)
	{
		Spell_Cast_TeleportOWDemonTower();
	};
	if(Npc_GetActiveSpell(self) == SPL_TeleportTaverne)
	{
		Spell_Cast_TeleportTaverne();
	};
	if (Npc_GetActiveSpell(self) == SPL_MineTeleport		)	
	{
		Spell_Cast_TeleportMine		(); 
	};
	if (Npc_GetActiveSpell(self) == SPL_MonasteryTeleport		)	
	{	
		Spell_Cast_TeleportMonaste		(); 
	};

};

