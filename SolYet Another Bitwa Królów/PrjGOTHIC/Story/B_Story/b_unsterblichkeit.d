
func void b_unsterblichkeit(var int npcInstance)
{
	var C_Npc slf;
	slf = Hlp_GetNpc(npcInstance);
	if(Hlp_IsValidNpc(slf) && !Npc_IsDead(slf))
	{
		Wld_PlayEffect("spellFX_Innoseye",slf,slf,0,0,0,FALSE);
		slf.flags = NPC_FLAG_IMMORTAL;
	};
};

func void b_sterblichkeit(var int npcInstance)
{
	var C_Npc slf;
	slf = Hlp_GetNpc(npcInstance);
	if(Hlp_IsValidNpc(slf) && !Npc_IsDead(slf))
	{
		slf.flags = 0;
	};
};

func void b_setunsterblichkeit(var C_Npc slf)
{
	if((slf.flags != NPC_FLAG_IMMORTAL) && (((slf.guild == GIL_PAL) && (L1_UNSTERBLICHKEIT == TRUE)) || ((slf.guild == GIL_DJG) && (L2_UNSTERBLICHKEIT == TRUE))))
	{
		b_unsterblichkeit(8468);
	};
	if((slf.flags == NPC_FLAG_IMMORTAL) && (((slf.guild == GIL_PAL) && (L1_UNSTERBLICHKEIT != TRUE)) || ((slf.guild == GIL_DJG) && (L2_UNSTERBLICHKEIT != TRUE))))
	{
		b_sterblichkeit(8468);
	};
};

// [TODO] niesmiertelnosc totalnie nie dziala
func void b_mach_unsterblich_1()
{
	if(L1_UNSTERBLICHKEIT == FALSE)
	{
		b_unsterblichkeit(9881);
		b_unsterblichkeit(9822);
		b_unsterblichkeit(9902);
		b_unsterblichkeit(9923);
		b_unsterblichkeit(9944);
		b_unsterblichkeit(9947);
		L1_UNSTERBLICHKEIT = TRUE;
		Wld_SendTrigger("MACH_WIEDER_STERBLICH_1");
	};
};

func void b_mach_wieder_sterblich_1()
{
	b_sterblichkeit(9881);
	b_sterblichkeit(9822);
	b_sterblichkeit(9902);
	b_sterblichkeit(9923);
	b_sterblichkeit(9944);
	b_sterblichkeit(9947);
	L1_UNSTERBLICHKEIT = FALSE;
};

func void b_mach_unsterblich_2()
{
	if(L2_UNSTERBLICHKEIT == FALSE)
	{
		b_unsterblichkeit(9753);
		b_unsterblichkeit(9694);
		b_unsterblichkeit(9774);
		b_unsterblichkeit(9795);
		b_unsterblichkeit(9816);
		b_unsterblichkeit(9819);
		L2_UNSTERBLICHKEIT = TRUE;
		Wld_SendTrigger("MACH_WIEDER_STERBLICH_2");
	};
};

func void b_mach_wieder_sterblich_2()
{
	b_sterblichkeit(9753);
	b_sterblichkeit(9694);
	b_sterblichkeit(9774);
	b_sterblichkeit(9795);
	b_sterblichkeit(9816);
	b_sterblichkeit(9819);
	L2_UNSTERBLICHKEIT = FALSE;
};

