// Plik zawiera funkcje zwiazana ze smiercia NPC.

// Funkcja wywolywana po smierci NPC.
// self - NPC zabity
// other - NPC ktory zabil
func void ZS_Dead()
{
	var int skilllevel;
	var int has_gold;
	var int rand;
	var int randomvalue;
	Npc_RemoveInvItem(self,ItRw_Bolt);
	self.aivar[AIV_RANSACKED] = FALSE;
	self.aivar[AIV_PARTYMEMBER] = FALSE;
	B_StopLookAt(self);
	AI_StopPointAt(self);
	skilllevel = 0;
	if(Hlp_IsValidNpc(self))
	{
		if((Hlp_GetInstanceID(self) == pal_1012_hero) && (LAGER == 1))
		{
			B_Message("NEWS_Eigen_HeldKilled");
		};
		if((Hlp_GetInstanceID(self) == djg_2012_hero) && (LAGER == 2))
		{
			B_Message("NEWS_Eigen_HeldKilled");
		};
		if((Hlp_GetInstanceID(self) == pal_1160_wache) && (LAGER == 1))
		{
			B_Message("NEWS_Eigen_WacheKilled");
		};
		if((Hlp_GetInstanceID(self) == djg_2160_wache) && (LAGER == 2))
		{
			B_Message("NEWS_Eigen_WacheKilled");
		};
		if((Hlp_GetInstanceID(self) == pal_1161_wache) && (LAGER == 1))
		{
			B_Message("NEWS_Eigen_WacheKilled");
		};
		if((Hlp_GetInstanceID(self) == djg_2161_wache) && (LAGER == 2))
		{
			B_Message("NEWS_Eigen_WacheKilled");
		};
	};
	if((Hlp_GetInstanceID(other) == pal_1012_hero) && (self.guild == GIL_DJG))
	{
		L1_HELD_SKILLLEVEL = L1_HELD_SKILLLEVEL + 1;
		skilllevel = L1_HELD_SKILLLEVEL;
	};
	if((Hlp_GetInstanceID(other) == djg_2012_hero) && (self.guild == GIL_PAL))
	{
		L2_HELD_SKILLLEVEL = L2_HELD_SKILLLEVEL + 1;
		skilllevel = L2_HELD_SKILLLEVEL;
	};
	if((skilllevel >= (7 * TOTEGEGNERFUERSKILLLEVEL)) && (other.aivar[96] < 7) && ((Hlp_GetInstanceID(other) == pal_1012_hero) || (Hlp_GetInstanceID(other) == djg_2012_hero)))
	{
		B_SetAttributesToChapter(other,12);
		other.fight_tactic = FAI_HUMAN_MASTER;
		Wld_PlayEffect("spellFX_LIGHTSTAR_RED",other,other,0,0,0,FALSE);
		other.aivar[96] = 7;
		if(((other.guild == GIL_PAL) && (LAGER == 1)) || ((other.guild == GIL_DJG) && (LAGER == 2)))
		{
			B_Message("NEWS_Eigen_HeldLevelup");
		};
	}
	else if((skilllevel >= (6 * TOTEGEGNERFUERSKILLLEVEL)) && (other.aivar[96] < 6) && ((Hlp_GetInstanceID(other) == pal_1012_hero) || (Hlp_GetInstanceID(other) == djg_2012_hero)))
	{
		B_SetAttributesToChapter(other,11);
		other.fight_tactic = FAI_HUMAN_MASTER;
		Wld_PlayEffect("spellFX_LIGHTSTAR_RED",other,other,0,0,0,FALSE);
		other.aivar[96] = 6;
		if(((other.guild == GIL_PAL) && (LAGER == 1)) || ((other.guild == GIL_DJG) && (LAGER == 2)))
		{
			B_Message("NEWS_Eigen_HeldLevelup");
		};
	}
	else if((skilllevel >= (5 * TOTEGEGNERFUERSKILLLEVEL)) && (other.aivar[96] < 5) && ((Hlp_GetInstanceID(other) == pal_1012_hero) || (Hlp_GetInstanceID(other) == djg_2012_hero)))
	{
		B_SetAttributesToChapter(other,10);
		other.fight_tactic = FAI_HUMAN_MASTER;
		Wld_PlayEffect("spellFX_LIGHTSTAR_RED",other,other,0,0,0,FALSE);
		other.aivar[96] = 5;
		if(((other.guild == GIL_PAL) && (LAGER == 1)) || ((other.guild == GIL_DJG) && (LAGER == 2)))
		{
			B_Message("NEWS_Eigen_HeldLevelup");
		};
	}
	else if((skilllevel >= (4 * TOTEGEGNERFUERSKILLLEVEL)) && (other.aivar[96] < 4) && ((Hlp_GetInstanceID(other) == pal_1012_hero) || (Hlp_GetInstanceID(other) == djg_2012_hero)))
	{
		B_SetAttributesToChapter(other,9);
		other.fight_tactic = FAI_HUMAN_MASTER;
		Wld_PlayEffect("spellFX_LIGHTSTAR_RED",other,other,0,0,0,FALSE);
		other.aivar[96] = 4;
		if(((other.guild == GIL_PAL) && (LAGER == 1)) || ((other.guild == GIL_DJG) && (LAGER == 2)))
		{
			B_Message("NEWS_Eigen_HeldLevelup");
		};
	}
	else if((skilllevel >= (3 * TOTEGEGNERFUERSKILLLEVEL)) && (other.aivar[96] < 3) && ((Hlp_GetInstanceID(other) == pal_1012_hero) || (Hlp_GetInstanceID(other) == djg_2012_hero)))
	{
		B_SetAttributesToChapter(other,6);
		other.fight_tactic = FAI_HUMAN_MASTER;
		Wld_PlayEffect("spellFX_LIGHTSTAR_RED",other,other,0,0,0,FALSE);
		other.aivar[96] = 3;
		if(((other.guild == GIL_PAL) && (LAGER == 1)) || ((other.guild == GIL_DJG) && (LAGER == 2)))
		{
			B_Message("NEWS_Eigen_HeldLevelup");
		};
	}
	else if((skilllevel >= (2 * TOTEGEGNERFUERSKILLLEVEL)) && (other.aivar[96] < 2) && ((Hlp_GetInstanceID(other) == pal_1012_hero) || (Hlp_GetInstanceID(other) == djg_2012_hero)))
	{
		B_SetAttributesToChapter(other,5);
		other.fight_tactic = FAI_HUMAN_STRONG;
		Wld_PlayEffect("spellFX_LIGHTSTAR_RED",other,other,0,0,0,FALSE);
		other.aivar[96] = 2;
		if(((other.guild == GIL_PAL) && (LAGER == 1)) || ((other.guild == GIL_DJG) && (LAGER == 2)))
		{
			B_Message("NEWS_Eigen_HeldLevelup");
		};
	}
	else if((skilllevel >= (1 * TOTEGEGNERFUERSKILLLEVEL)) && (other.aivar[96] < 1) && ((Hlp_GetInstanceID(other) == pal_1012_hero) || (Hlp_GetInstanceID(other) == djg_2012_hero)))
	{
		B_SetAttributesToChapter(other,4);
		other.fight_tactic = FAI_HUMAN_STRONG;
		Wld_PlayEffect("spellFX_LIGHTSTAR_RED",other,other,0,0,0,FALSE);
		other.aivar[96] = 1;
		if(((other.guild == GIL_PAL) && (LAGER == 1)) || ((other.guild == GIL_DJG) && (LAGER == 2)))
		{
			B_Message("NEWS_Eigen_HeldLevelup");
		};
	};
	if(Hlp_GetInstanceID(self) == pal_1012_hero)
	{
		if(L1_HELD_QUICKREVIVE == FALSE)
		{
			L1_HELD_TOT = ABLAUF + HERO_WAITFORREVIVE_NORMAL;
		}
		else
		{
			L1_HELD_TOT = ABLAUF + HERO_WAITFORREVIVE_SHORT;
		};
	};
	if(Hlp_GetInstanceID(self) == djg_2012_hero)
	{
		if(L2_HELD_QUICKREVIVE == FALSE)
		{
			L2_HELD_TOT = ABLAUF + HERO_WAITFORREVIVE_NORMAL;
		}
		else
		{
			L2_HELD_TOT = ABLAUF + HERO_WAITFORREVIVE_SHORT;
		};
	};
	if(MAP == VARUS_MAP)
	{
		if(Hlp_GetInstanceID(self) == pal_skeleton)
		{
			Wld_SendTrigger("B_SKELETTKONTROLLCHANGE_TRIGGER");
		};
		if(Hlp_GetInstanceID(self) == djg_skeleton)
		{
			Wld_SendTrigger("B_SKELETTKONTROLLCHANGE_TRIGGER");
		};
		if(((Hlp_GetInstanceID(self) == skeleton_01) || (Hlp_GetInstanceID(self) == skeleton_02) || (Hlp_GetInstanceID(self) == skeleton_03)) && Npc_IsDead(skeleton_01) && Npc_IsDead(skeleton_02) && Npc_IsDead(skeleton_03))
		{
			if((other.guild == GIL_MIL) || (other.guild == GIL_PAL) || (Hlp_GetInstanceID(other) == pal_1190_hoehlensoeldner))
			{
				SKELETONKONTROLL = GIL_DJG;
				Wld_SendTrigger("B_SKELETTKONTROLLCHANGE_TRIGGER");
			}
			else
			{
				SKELETONKONTROLL = GIL_PAL;
				Wld_SendTrigger("B_SKELETTKONTROLLCHANGE_TRIGGER");
			};
		};
	};
	if(Hlp_GetInstanceID(self) == pal_1190_hoehlensoeldner)
	{
		L1_LEBENDEHOEHLENSOELDNER -= 1;
	};
	if(Hlp_GetInstanceID(self) == djg_2190_hoehlensoeldner)
	{
		L2_LEBENDEHOEHLENSOELDNER -= 1;
	};
	if(Hlp_GetInstanceID(self) == pal_1180_minensoeldner)
	{
		L1_LEBENDEMINENWACHEN -= 1;
		L1_MINENLEUTE -= 1;
	}
	else if(Hlp_GetInstanceID(self) == pal_1070_minenarbeitersoeldner)
	{
		if(LAGER == 1)
		{
			B_Message("NEWS_Eigen_MinenarbeiterKilled");
		};
		L1_MINENLEUTE -= 1;
		if(self.aivar[AIV_TAPOSITION] == ISINPOS)
		{
			L1_AKTIVEMINENARBEITER = L1_AKTIVEMINENARBEITER - 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == djg_2070_minenarbeitersoeldner)
	{
		if(LAGER == 2)
		{
			B_Message("NEWS_Eigen_MinenarbeiterKilled");
		};
		L2_MINENLEUTE -= 1;
		if(self.aivar[AIV_TAPOSITION] == ISINPOS)
		{
			L2_AKTIVEMINENARBEITER = L2_AKTIVEMINENARBEITER - 1;
		};
	}
	else if(Hlp_GetInstanceID(self) == djg_2180_minensoeldner)
	{
		L2_MINENLEUTE -= 1;
		L2_LEBENDEMINENWACHEN -= 1;
	};
	has_gold = Npc_HasItems(self,ItMi_Gold);
	rand = Hlp_Random(99);
	rand = rand + 1;
	if((Hlp_GetInstanceID(self) != djg_2070_minenarbeitersoeldner) && (Hlp_GetInstanceID(self) != pal_1070_minenarbeitersoeldner) && (self.aivar[96] != 7))
	{
		if(((self.guild == GIL_DJG) || (self.guild == GIL_SLD)) && (self.aivar[AIV_VictoryXPGiven] == FALSE))
		{
			if((L1_GET_GOLD == TRUE) && (has_gold > 0))
			{
				if(LAGER == 1)
				{
					CreateInvItems(hero,ItMi_Gold,GOLDPERDEATH);
				}
				else
				{
					L1_HAVEGOLD += GOLDPERDEATH;
				};
				Npc_RemoveInvItems(self,ItMi_Gold,has_gold);
			};
			if((L2_GET_GOLD == TRUE) && (L2_GOLD_UPDATE == TRUE))
			{
				if(LAGER == 2)
				{
					CreateInvItems(hero,ItMi_Gold,GOLDPEROWNDEATH);
				}
				else
				{
					L2_HAVEGOLD += GOLDPEROWNDEATH;
				};
			};
			self.aivar[AIV_VictoryXPGiven] = TRUE;
			L1_EHRENPUNKTE += 1;
			if(L2_EHRE_UPDATE == TRUE)
			{
				L2_EHRENPUNKTE += 1;
			};
			if((L2_REVIVE == TRUE) && (rand <= REVIVAL_CHANCE))
			{
				self.aivar[95] = TRUE;
				CreateInvItems(self,ItMi_Gold,GOLDPERDEATH);
			}
			else
			{
				Npc_ExchangeRoutine(self,"TOT");
				AI_Teleport(self,"TOT");
				self.wp = "TOT";
				B_RemoveNpc(self);
			};
		}
		else if(((self.guild == GIL_PAL) || (self.guild == GIL_MIL)) && (self.aivar[AIV_VictoryXPGiven] == FALSE))
		{
			if(L2_GET_GOLD == TRUE)
			{
				if(LAGER == 2)
				{
					CreateInvItems(hero,ItMi_Gold,GOLDPERDEATH);
				}
				else
				{
					L2_HAVEGOLD += GOLDPERDEATH;
				};
				Npc_RemoveInvItems(self,ItMi_Gold,GOLDPERDEATH);
			};
			if(L1_GOLD_UPDATE == TRUE)
			{
				if(LAGER == 1)
				{
					CreateInvItems(hero,ItMi_Gold,GOLDPEROWNDEATH);
				}
				else
				{
					L1_HAVEGOLD += GOLDPEROWNDEATH;
				};
			};
			self.aivar[AIV_VictoryXPGiven] = TRUE;
			L2_EHRENPUNKTE += 1;
			if(L1_EHRE_UPDATE == TRUE)
			{
				L1_EHRENPUNKTE += 1;
			};
			if((L1_REVIVE == TRUE) && (rand <= REVIVAL_CHANCE))
			{
				self.aivar[95] = TRUE;
				CreateInvItems(self,ItMi_Gold,GOLDPERDEATH);
			}
			else
			{
				Npc_ExchangeRoutine(self,"TOT");
				AI_Teleport(self,"TOT");
				self.wp = "TOT";
				B_RemoveNpc(self);
			};
		};
	};
	has_gold = Npc_HasItems(self,ItMi_Gold);
	Npc_RemoveInvItems(self,ItMi_Gold,has_gold);
	if(self.aivar[95] != TRUE)
	{
		Npc_ExchangeRoutine(self,"TOT");
		AI_Teleport(self,"TOT");
		self.wp = "TOT";
		B_RemoveNpc(self);
	};
	if((L1_UNTOTEN_SPAWN == TRUE) && (self.guild == GIL_PAL) && (self.aivar[96] != 7))
	{
		randomvalue = Hlp_Random(99);
		randomvalue = randomvalue + 1;
		if(randomvalue >= (100 - UNTOTENRESPAWN_CHANCE))
		{
			L1_CURRENT_MERCLEVEL = 7;
			pal_1140_soeldner.aivar[97] = 2;
			Wld_InsertNpc(pal_1140_soeldner,SPAWNWAYPOINT);
		};
	};
	if((L2_UNTOTEN_SPAWN == TRUE) && (self.guild == GIL_DJG) && (self.aivar[96] != 7))
	{
		randomvalue = Hlp_Random(99);
		randomvalue = randomvalue + 1;
		if(randomvalue >= (100 - UNTOTENRESPAWN_CHANCE))
		{
			L2_CURRENT_MERCLEVEL = 7;
			djg_2140_soeldner.aivar[97] = 2;
			Wld_InsertNpc(djg_2140_soeldner,SPAWNWAYPOINT);
		};
	};
	if(self.aivar[AIV_MM_REAL_ID] == ID_SWAMPDRONE)
	{
		if(Npc_GetDistToNpc(self,other) < 300)
		{
			other.attribute[ATR_HITPOINTS] -= 50;
		};
	};

	// Po zabiciu ulecz sie pelnia, jesli ja posiadasz.
	if (Npc_HasItems(other, ItPo_Health_Addon_04) && other.attribute[ATR_HITPOINTS] < other.attribute[ATR_HITPOINTS_MAX])
	{
		other.attribute[ATR_HITPOINTS] = other.attribute[ATR_HITPOINTS_MAX];
		Npc_RemoveInvItems(other, ItPo_Health_Addon_04, 1);
		Wld_PlayEffect("spellFX_PalHeal_ORIGIN", other, other, 0, 0, 0, FALSE);
	};

	B_GiveTradeInv(self);
	B_GiveDeathInv(self);
	B_ClearRuneInv(self);
	B_DeletePetzCrime(self);
	self.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
	AI_UnequipWeapons(self);
	self.aivar[AIV_TAPOSITION] = FALSE;
};

func int ZS_Dead_loop()
{
	if(self.aivar[95] == TRUE)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
		Wld_PlayEffect("spellFX_LIGHTSTAR_RED",self,self,0,0,0,FALSE);
		self.aivar[AIV_VictoryXPGiven] = FALSE;
		Mdl_StartFaceAni(self,"S_NEUTRAL",1,-1);
		AI_Standup(self);
		AI_StandupQuick(self);
		self.aivar[95] = FALSE;
		if(Hlp_GetInstanceID(self) == pal_1004_magier)
		{
			CreateInvItems(self,ItRu_InstantFireball,1);
			if(L1_EISBLOCKERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItRu_IceCube,1);
			};
			if(L1_WUNDENHEILENERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItRu_FullHeal,1);
				self.aivar[90] = TRUE;
			}
			else
			{
				self.aivar[90] = FALSE;
			};
			if(L1_BLITZSCHLAGERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItRu_LightningFlash,1);
			};
			if(L1_HEILTRANKERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItPo_Health_Addon_04,1);
			};
			self.aivar[89] = L1_FAVORITSPELL;
		}
		else if(Hlp_GetInstanceID(self) == djg_2120_magier)
		{
			CreateInvItems(self,ItRu_InstantFireball,1);
			if(L2_EISBLOCKERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItRu_IceCube,1);
			};
			if(L2_WUNDENHEILENERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItRu_FullHeal,1);
				self.aivar[90] = TRUE;
			}
			else
			{
				self.aivar[90] = FALSE;
			};
			if(L2_BLITZSCHLAGERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItRu_LightningFlash,1);
			};
			if(L2_HEILTRANKERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItPo_Health_Addon_04,1);
			};
			self.aivar[89] = L2_FAVORITSPELL;
		}
		else if(Hlp_GetInstanceID(self) == pal_1100_soldat)
		{
			if(self.aivar[96] == 1)
			{
				CreateInvItems(self,itmw_shortsword_pal,1);
			}
			else if(self.aivar[96] == 2)
			{
				CreateInvItems(self,itmw_sword_pal,1);
			}
			else if(self.aivar[96] == 3)
			{
				CreateInvItems(self,itmw_langschwert_pal,1);
			}
			else if(self.aivar[96] == 4)
			{
				CreateInvItems(self,itmw_elbastardo_pal,1);
			};
			if(L1_HEILTRANKERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItPo_Health_Addon_04,1);
			};
		}
		else if(Hlp_GetInstanceID(self) == djg_2100_soldat)
		{
			if(self.aivar[96] == 1)
			{
				CreateInvItems(self,itmw_shortsword_djg,1);
			}
			else if(self.aivar[96] == 2)
			{
				CreateInvItems(self,itmw_sword_djg,1);
			}
			else if(self.aivar[96] == 3)
			{
				CreateInvItems(self,itmw_langschwert_djg,1);
			}
			else if(self.aivar[96] == 4)
			{
				CreateInvItems(self,itmw_elbastardo_djg,1);
			};
			if(L2_HEILTRANKERFORSCHT == TRUE)
			{
				CreateInvItems(self,ItPo_Health_Addon_04,1);
			};
		}
		else if((Hlp_GetInstanceID(self) == pal_1140_soeldner) || (Hlp_GetInstanceID(self) == djg_2140_soeldner))
		{
			if(self.aivar[96] == 1)
			{
				CreateInvItems(self,itmw_shortsword_sk,1);
			}
			else if(self.aivar[96] == 2)
			{
				CreateInvItems(self,itmw_sword_sk,1);
			}
			else if(self.aivar[96] == 3)
			{
				CreateInvItems(self,itmw_langschwert_sk,1);
			}
			else if(self.aivar[96] == 4)
			{
				CreateInvItems(self,itmw_elbastardo_sk,1);
			};
		};
		AI_EquipBestMeleeWeapon(self);
		return LOOP_END;
	};
	if(self.aivar[AIV_TAPOSITION] == FALSE)
	{
		self.aivar[AIV_TAPOSITION] = TRUE;
	};
	return LOOP_CONTINUE;
};

func void zs_dead_end()
{
};

