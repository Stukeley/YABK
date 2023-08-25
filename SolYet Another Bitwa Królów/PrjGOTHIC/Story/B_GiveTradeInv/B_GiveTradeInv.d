
func void B_GiveTradeInv(var C_Npc slf)
{
	B_ClearRuneInv(slf);
	if(slf.aivar[AIV_ChapterInv] <= Kapitel)
	{
	};
	if(Npc_IsInState(slf,ZS_Dead) || Npc_IsInState(slf,ZS_Unconscious))
	{
	};
};

