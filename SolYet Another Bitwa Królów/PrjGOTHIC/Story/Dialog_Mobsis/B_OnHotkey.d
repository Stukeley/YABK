
func int B_GetBestPlayerMap()
{
	if(CurrentLevel == NEWWORLD_ZEN)
	{
		if(Npc_HasItems(hero,ItWr_Map_NewWorld) >= 1)
		{
			return ItWr_Map_NewWorld;
		}
		else if(Npc_HasItems(hero,ItWr_Map_Shrine_MIS) >= 1)
		{
			return ItWr_Map_Shrine_MIS;
		}
		else if(Npc_HasItems(hero,ItWr_Map_Caves_MIS) >= 1)
		{
			return ItWr_Map_Caves_MIS;
		}
		else if(Npc_HasItems(hero,ItWr_Map_NewWorld_Ornaments_Addon) >= 1)
		{
			return ItWr_Map_NewWorld_Ornaments_Addon;
		}
		else if(Npc_HasItems(hero,ItWr_Map_NewWorld_Dexter) >= 1)
		{
			return ItWr_Map_NewWorld_Dexter;
		}
		else if(Npc_HasItems(hero,ItWr_ShatteredGolem_MIS) >= 1)
		{
			return ItWr_ShatteredGolem_MIS;
		}
		else if(Npc_HasItems(hero,ItWr_Map_Orcelite_MIS) >= 1)
		{
			return ItWr_Map_Orcelite_MIS;
		}
		else if(Npc_HasItems(hero,ItWr_Map_NewWorld_City) >= 1)
		{
			return ItWr_Map_NewWorld_City;
		};
	}
	else if(CurrentLevel == OldWorld_Zen)
	{
		if(Npc_HasItems(hero,ItWr_Map_OldWorld) >= 1)
		{
			return ItWr_Map_OldWorld;
		}
		else if(Npc_HasItems(hero,ItWr_Map_OldWorld_Oremines_MIS) >= 1)
		{
			return ItWr_Map_OldWorld_Oremines_MIS;
		};
	}
	else if(CurrentLevel == DRAGONISLAND_ZEN)
	{
	}
	else if(CurrentLevel == ADDONWORLD_ZEN)
	{
		if(Npc_HasItems(hero,ItWr_Map_AddonWorld) >= 1)
		{
			return ItWr_Map_AddonWorld;
		}
		else if(Npc_HasItems(hero,ItWR_Addon_TreasureMap) >= 1)
		{
			return ItWR_Addon_TreasureMap;
		};
	};
	return 0;
};

func int B_GetAnyPlayerMap()
{
	if(Npc_HasItems(hero,ItWr_Map_NewWorld) >= 1)
	{
		return ItWr_Map_NewWorld;
	}
	else if(Npc_HasItems(hero,ItWr_Map_Shrine_MIS) >= 1)
	{
		return ItWr_Map_Shrine_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_Caves_MIS) >= 1)
	{
		return ItWr_Map_Caves_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_NewWorld_Ornaments_Addon) >= 1)
	{
		return ItWr_Map_NewWorld_Ornaments_Addon;
	}
	else if(Npc_HasItems(hero,ItWr_Map_NewWorld_Dexter) >= 1)
	{
		return ItWr_Map_NewWorld_Dexter;
	}
	else if(Npc_HasItems(hero,ItWr_ShatteredGolem_MIS) >= 1)
	{
		return ItWr_ShatteredGolem_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_Orcelite_MIS) >= 1)
	{
		return ItWr_Map_Orcelite_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_NewWorld_City) >= 1)
	{
		return ItWr_Map_NewWorld_City;
	}
	else if(Npc_HasItems(hero,ItWr_Map_OldWorld) >= 1)
	{
		return ItWr_Map_OldWorld;
	}
	else if(Npc_HasItems(hero,ItWr_Map_OldWorld_Oremines_MIS) >= 1)
	{
		return ItWr_Map_OldWorld_Oremines_MIS;
	}
	else if(Npc_HasItems(hero,ItWr_Map_AddonWorld) >= 1)
	{
		return ItWr_Map_AddonWorld;
	}
	else if(Npc_HasItems(hero,ItWR_Addon_TreasureMap) >= 1)
	{
		return ItWR_Addon_TreasureMap;
	};
	return 0;
};

func int player_hotkey_screen_map()
{
	Mdl_ApplyOverlayMdsTimed(hero,"HUMANS_SPRINT.MDS",Time_Speed * 12);
	if(DEBUG == TRUE)
	{
	};
	return TRUE;
};

func void B_LameSchlork()
{
	Snd_Play("DRINKBOTTLE");
};

func void player_hotkey_lame_potion()
{
	B_Say(hero,hero,"$EnemyKilled");
};

func void player_hotkey_lame_heal()
{
	Mdl_ApplyOverlayMdsTimed(hero,"HUMANS_SPRINT.MDS",Time_Speed * 30);
};

