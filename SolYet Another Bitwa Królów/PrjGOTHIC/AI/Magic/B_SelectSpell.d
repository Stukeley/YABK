
func int B_SelectSpell(var C_Npc slf,var C_Npc oth)
{
	if((slf.npcType == NPCTYPE_FRIEND) && Npc_IsPlayer(oth) && (oth.guild < GIL_SEPERATOR_HUM))
	{
		if((slf.guild == GIL_KDF) || (slf.aivar[AIV_MagicUser] == MAGIC_ALWAYS))
		{
			if(Npc_HasItems(slf,ItRu_Sleep) == 0)
			{
				CreateInvItems(slf,ItRu_Sleep,1);
			};
			B_ReadySpell(slf,SPL_Sleep,SPL_Cost_Sleep);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MagicUser] == MAGIC_ALWAYS)
	{
		if((self.attribute[ATR_HITPOINTS] < 140) && (slf.aivar[90] == TRUE))
		{
			B_ReadySpell(slf,SPL_FullHeal,SPL_Cost_FullHeal);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLFEUERBALL)
		{
			B_ReadySpell(slf,SPL_Concussionbolt,SPL_Cost_Concussionbolt);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLEISBLOCK)
		{
			B_ReadySpell(slf,SPL_IceCube,SPL_Cost_IceCube);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLBLITZSCHLAG)
		{
			B_ReadySpell(slf,SPL_LightningFlash,SPL_Cost_LightningFlash);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLRANKEN)
		{
			B_ReadySpell(slf,SPL_GreenTentacle,SPL_Cost_Greententacle);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLFIRECIRCLE4)
		{
		B_ReadySpell(slf,SPL_Firestorm,SPL_Cost_Firestorm);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLFIRECIRCLE3)
		{
		B_ReadySpell(slf,SPL_InstantFireball,SPL_Cost_InstantFireball);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLFIRECIRCLE5)
		{
		B_ReadySpell(slf,SPL_ChargeFireball,SPL_Cost_ChargeFireball);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLFIRECIRCLE6)
		{
		B_ReadySpell(slf,SPL_FireMeteor,SPL_Cost_FireMeteor);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLWATERCIRCLE2)
		{
		B_ReadySpell(slf,SPL_IceBolt,SPL_Cost_IceBolt);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLWATERCIRCLE4)
		{
		B_ReadySpell(slf,SPL_Icelance,SPL_Cost_IceLance);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLWATERCIRCLE6)
		{
		B_ReadySpell(slf,SPL_Waterfist,SPL_Cost_Waterfist);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLWATERCIRCLE5)
		{
		B_ReadySpell(slf,SPL_LightningFlash,SPL_Cost_LightningFlash);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLWATERCIRCLE3)
		{
		B_ReadySpell(slf,SPL_Zap,SPL_Cost_Zap);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLDARKCIRCLE2)
		{
		B_ReadySpell(slf,SPL_Concussionbolt,SPL_Cost_Concussionbolt);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLDARKCIRCLE3)
		{
		B_ReadySpell(slf,SPL_FireMeteor,SPL_Cost_FireMeteor);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLDARKCIRCLE4)
		{
		B_ReadySpell(slf,SPL_BreathOfDeath,SPL_Cost_BreathOfDeath);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLDARKCIRCLE6)
		{
		B_ReadySpell(slf,SPL_EnergyBall,SPL_Cost_EnergyBall);
			return TRUE;
		}
		else if(slf.aivar[89] == SPELLDARKCIRCLE5)
		{
		B_ReadySpell(slf,SPL_Skull,SPL_Cost_Skull);
			return TRUE;
		}
		else if (slf.aivar[89] == SPELLSWAMPCIRCLE3)
		{
		B_ReadySpell(slf,SPL_Firebolt,SPL_Cost_Firebolt);		
		}
		else if (slf.aivar[89] == SPELLSWAMPCIRCLE4)
		{
		B_ReadySpell(slf,SPL_WindFist,SPL_Cost_WindFist);		
		}
		else if (slf.aivar[89] == SPELLSWAMPCIRCLE5)
		{
		B_ReadySpell(slf,SPL_Deathball,SPL_Cost_Deathball);		
		}
		else if (slf.aivar[89] == SPELLSWAMPCIRCLE6)
		{
		B_ReadySpell(slf,SPL_Deathbolt,SPL_Cost_Deathbolt);		
		}
		else
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		};
	};
	if(slf.guild == GIL_SKELETON_MAGE)
	{
		if(Npc_HasItems(slf,ItRu_SumSkel) == 0)
		{
			CreateInvItems(slf,ItRu_SumSkel,1);
		};
		if(Npc_HasItems(slf,ItRu_IceCube) == 0)
		{
			CreateInvItems(slf,ItRu_IceCube,1);
		};
		if(Npc_HasItems(slf,ItRu_Icebolt) == 0)
		{
			CreateInvItems(slf,ItRu_Icebolt,1);
		};
		if(slf.aivar[AIV_SelectSpell] >= 6)
		{
			slf.aivar[AIV_SelectSpell] = 1;
		};
		if(!Npc_IsInState(oth,ZS_MagicFreeze) && (slf.aivar[AIV_SelectSpell] == 0))
		{
			B_ReadySpell(slf,SPL_IceCube,SPL_Cost_IceCube);
			return TRUE;
		}
		else if(slf.aivar[AIV_SelectSpell] == 1)
		{
			B_ReadySpell(slf,SPL_SummonSkeleton,SPL_Cost_SummonSkeleton);
			return TRUE;
		}
		else
		{
			B_ReadySpell(slf,SPL_Icebolt,SPL_COST_Icebolt);
			return TRUE;
		};
	};
	if(slf.guild == GIL_ICEGOLEM)
	{
		if(Npc_HasItems(slf,ItRu_IceCube) == 0)
		{
			CreateInvItems(slf,ItRu_IceCube,1);
		};
		if((Npc_GetDistToNpc(slf,oth) < FIGHT_DIST_MELEE) || Npc_IsInState(oth,ZS_MagicFreeze))
		{
			return FALSE;
		}
		else
		{
			B_ReadySpell(slf,SPL_IceCube,SPL_Cost_IceCube);
			return TRUE;
		};
	};
	if(slf.guild == GIL_FIREGOLEM)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_MELEE)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_SWAMP)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ROCK)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
	{
		Npc_ClearAIQueue(self);
		if(Npc_HasItems(slf,ItRu_Deathball) == 0)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			B_ReadySpell(slf,SPL_Deathball,SPL_COST_Deathball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	if(slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN)
	{
		if(Npc_HasItems(slf,ItRu_InstantFireball) == 0)
		{
			CreateInvItems(slf,ItRu_InstantFireball,1);
		};
		if(Npc_GetDistToNpc(slf,oth) > FIGHT_DIST_MELEE)
		{
			B_ReadySpell(slf,SPL_InstantFireball,SPL_COST_InstantFireball);
			return TRUE;
		}
		else
		{
			return FALSE;
		};
	};
	return FALSE;
};

