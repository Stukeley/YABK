// Plik zawiera funkcje zwiazana z zadawaniem obrazen.

// Funkcja zadajaca obrazenia.
// self - NPC otrzymujacy obrazenia (bedacy atakowanym)
// other - NPC atakujacy
func void B_AssessDamage()
{
	var int random;
	if(Npc_IsPlayer(other))
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 5;
		return;
	};
	random = Hlp_Random(99);
	random = random + 1;
	if((other.guild == GIL_PAL) && (L1_VAMPIRSCHLAG == TRUE) && (random <= VAMPIR_CHANCE))
	{
		other.attribute[ATR_HITPOINTS] = other.attribute[ATR_HITPOINTS] + (other.attribute[ATR_HITPOINTS_MAX] / 10);
		if(other.attribute[ATR_HITPOINTS] > other.attribute[ATR_HITPOINTS_MAX])
		{
			other.attribute[ATR_HITPOINTS] = other.attribute[ATR_HITPOINTS_MAX];
		};
	}
	else if((other.guild == GIL_DJG) && (L2_VAMPIRSCHLAG == TRUE) && (random <= VAMPIR_CHANCE))
	{
		other.attribute[ATR_HITPOINTS] = other.attribute[ATR_HITPOINTS] + (other.attribute[ATR_HITPOINTS_MAX] / VAMPIR_HEAL);
		if(other.attribute[ATR_HITPOINTS] > other.attribute[ATR_HITPOINTS_MAX])
		{
			other.attribute[ATR_HITPOINTS] = other.attribute[ATR_HITPOINTS_MAX];
		};
	};
	if((other.guild == GIL_PAL) && (L1_INSTANTKILL == TRUE) && (random <= INSTANTKILL_CHANCE) && (self.flags != NPC_FLAG_IMMORTAL) && (self.attribute[ATR_HITPOINTS_MAX] < 4000))
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute[ATR_HITPOINTS_MAX]);
		Wld_PlayEffect("spellFX_BELIARSRAGE",self,self,0,0,0,FALSE);
	}
	else if((other.guild == GIL_DJG) && (L2_INSTANTKILL == TRUE) && (random <= INSTANTKILL_CHANCE) && (self.flags != NPC_FLAG_IMMORTAL) && (self.attribute[ATR_HITPOINTS_MAX] < 4000))
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute[ATR_HITPOINTS_MAX]);
		Wld_PlayEffect("spellFX_BELIARSRAGE",self,self,0,0,0,FALSE);
	};
	B_BeliarsWeaponSpecialDamage(other,self);
	if(self.aivar[AIV_ArenaFight] == AF_AFTER)
	{
		self.aivar[AIV_ArenaFight] = AF_AFTER_PLUS_DAMAGE;
	};
	if(self.aivar[AIV_EnemyOverride] == TRUE)
	{
	};
	if(Npc_IsInState(self,ZS_Attack))
	{
		if(Npc_IsPlayer(other) && (self.npcType == NPCTYPE_FRIEND))
		{
			return;
		};
		if(Npc_IsPlayer(other) && (self.aivar[AIV_PARTYMEMBER] == TRUE))
		{
			return;
		};
		if(Hlp_GetInstanceID(other) != self.aivar[AIV_LASTTARGET])
		{
			if((self.aivar[AIV_HitByOtherNpc] == Hlp_GetInstanceID(other)) || (Hlp_GetInstanceID(other) != Hlp_GetInstanceID(hero)))
			{
				Npc_SetTarget(self,other);
			}
			else
			{
				self.aivar[AIV_HitByOtherNpc] = Hlp_GetInstanceID(other);
			};
		};
		return;
	};
	if(B_AssessEnemy())
	{
		return;
	};
	if(!Npc_IsPlayer(other) && (other.aivar[AIV_ATTACKREASON] == AR_NONE))
	{
		B_Attack(self,other,AR_NONE,0);
		return;
	};
	if(Npc_IsInFightMode(other,FMODE_MELEE) || Npc_IsInFightMode(other,FMODE_FIST) || Npc_IsInFightMode(other,FMODE_NONE))
	{
		if((Npc_GetAttitude(self,other) == ATT_FRIENDLY) || ((self.npcType == NPCTYPE_FRIEND) && Npc_IsPlayer(other)))
		{
			if(!Npc_IsInState(self,ZS_ReactToDamage))
			{
				Npc_ClearAIQueue(self);
				B_ClearPerceptions(self);
				AI_StartState(self,ZS_ReactToDamage,0,"");
				return;
			};
		};
	};
	B_Attack(self,other,AR_ReactToDamage,0);
};

