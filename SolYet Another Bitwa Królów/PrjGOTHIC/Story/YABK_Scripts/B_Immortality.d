// Plik zawierajacy funkcje odpowiedzialne za tymczasowa niesmiertelnosc jednostek (kupowana za punkty honoru).
// [TODO] niesmiertelnosc totalnie nie dziala

// Funkcja ustawiajaca NPC jako niesmiertelnego.
// npcInstance - NPC, ktorego chcemy ustawic jako niesmiertelnego.
func void B_SetImmortal(var int npcInstance)
{
	var C_Npc slf;
	slf = Hlp_GetNpc(npcInstance);

	if(Hlp_IsValidNpc(slf) && !Npc_IsDead(slf))
	{
		Wld_PlayEffect("spellFX_Innoseye", slf, slf, 0, 0, 0, FALSE);
		slf.flags = NPC_FLAG_IMMORTAL;
	};
};

// Funkcja ustawiajaca NPC jako znow smiertelnego.
// npcInstance - NPC, ktorego chcemy ustawic jako znow smiertelnego.
func void B_ResetImmortal(var int npcInstance)
{
	var C_Npc slf;
	slf = Hlp_GetNpc(npcInstance);

	if(Hlp_IsValidNpc(slf) && !Npc_IsDead(slf))
	{
		slf.flags = 0;
	};
};

// Funkcja przelaczajaca niesmiertelnosc NPC.
// slf - NPC, dla ktorego ustawiana jest niesmiertelnosc lub smiertelnosc.
func void B_ToggleImmortal(var C_Npc slf)
{
	if((slf.flags != NPC_FLAG_IMMORTAL) && (((slf.guild == GIL_PAL) && (L1_UNSTERBLICHKEIT == TRUE)) || ((slf.guild == GIL_DJG) && (L2_UNSTERBLICHKEIT == TRUE))))
	{
		B_SetImmortal(8468);
	};
	if((slf.flags == NPC_FLAG_IMMORTAL) && (((slf.guild == GIL_PAL) && (L1_UNSTERBLICHKEIT != TRUE)) || ((slf.guild == GIL_DJG) && (L2_UNSTERBLICHKEIT != TRUE))))
	{
		B_ResetImmortal(8468);
	};
};

// Funkcja ustawiajaca niesmiertelnosc dla wszystkich NPC z obozu czerwonego.
func void B_SetImmortalAll_L1()
{
	if(L1_UNSTERBLICHKEIT == FALSE)
	{
		B_SetImmortal(9881);
		B_SetImmortal(9822);
		B_SetImmortal(9902);
		B_SetImmortal(9923);
		B_SetImmortal(9944);
		B_SetImmortal(9947);
		L1_UNSTERBLICHKEIT = TRUE;
		Wld_SendTrigger("MACH_WIEDER_STERBLICH_1");
	};
};

// Funkcja ustawiajaca smiertelnosc dla wszystkich NPC z obozu czerwonego.
func void B_ResetImmortalAll_L1()
{
	B_ResetImmortal(9881);
	B_ResetImmortal(9822);
	B_ResetImmortal(9902);
	B_ResetImmortal(9923);
	B_ResetImmortal(9944);
	B_ResetImmortal(9947);
	L1_UNSTERBLICHKEIT = FALSE;
};

// Funkcja ustawiajaca niesmiertelnosc dla wszystkich NPC z obozu niebieskiego.
func void B_SetImmortalAll_L2()
{
	if(L2_UNSTERBLICHKEIT == FALSE)
	{
		B_SetImmortal(9753);
		B_SetImmortal(9694);
		B_SetImmortal(9774);
		B_SetImmortal(9795);
		B_SetImmortal(9816);
		B_SetImmortal(9819);
		L2_UNSTERBLICHKEIT = TRUE;
		Wld_SendTrigger("MACH_WIEDER_STERBLICH_2");
	};
};

// Funkcja ustawiajaca smiertelnosc dla wszystkich NPC z obozu niebieskiego.
func void B_ResetImmortalAll_L2()
{
	B_ResetImmortal(9753);
	B_ResetImmortal(9694);
	B_ResetImmortal(9774);
	B_ResetImmortal(9795);
	B_ResetImmortal(9816);
	B_ResetImmortal(9819);
	L2_UNSTERBLICHKEIT = FALSE;
};

