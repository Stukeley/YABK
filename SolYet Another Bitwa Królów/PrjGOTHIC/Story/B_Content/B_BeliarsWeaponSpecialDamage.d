
func void B_BeliarsWeaponSpecialDamage(var C_Npc oth,var C_Npc slf)
{
	var int DamageRandy;
	if(Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(hero))
	{
		DamageRandy = Hlp_Random(100);
		if(C_ScHasReadiedBeliarsWeapon() && (DamageRandy <= BeliarDamageChance))
		{
			if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
			{
				Wld_PlayEffect("spellFX_BELIARSRAGE",oth,oth,0,0,0,FALSE);
				B_MagicHurtNpc(slf,oth,100);
			}
			else if(slf.flags != NPC_FLAG_IMMORTAL)
			{
				Wld_PlayEffect("spellFX_BELIARSRAGE",slf,slf,0,0,0,FALSE);
				B_MagicHurtNpc(oth,slf,100);
			};
			Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE",hero,hero,0,0,0,FALSE);
		};
		if(C_ScHasReadiedBeliarsWeapon() && (DamageRandy <= 50))
		{
			Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE",hero,hero,0,0,0,FALSE);
		};
	};
};

