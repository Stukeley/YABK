
var int enter_kapitel1;

func void B_ENTER_ADDONWORLD_Kapitel_1()
{
	if(ENTER_KAPITEL1 == FALSE)
	{
		ENTER_KAPITEL1 = TRUE;
	};
};

func void b_enter_addonworld()
{
	B_InitNpcGlobals();
	if(Kapitel == 1)
	{
		B_ENTER_ADDONWORLD_Kapitel_1();
	};
	CurrentLevel = ADDONWORLD_ZEN;
	B_InitNpcGlobals();
};

