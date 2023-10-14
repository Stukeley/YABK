func void TeleportsLoop()
{
	if (MEM_KeyState(KEY_3) == KEY_PRESSED)
	{
		if (LAGER == 2){
			AI_Teleport		(hero, "L2_KING_01"); //Teleportacja 
		}
		else if (LAGER == 1){
			AI_Teleport		(hero, "L1_KING_01"); //Teleportacja
		};
	};
	if (MEM_KeyState(KEY_4) == KEY_PRESSED)
	{
		if (LAGER == 2){
			AI_Teleport		(hero, "L1_KING_01"); //Teleportacja 
		}
		else if (LAGER == 1){
			AI_Teleport		(hero, "L2_KING_01"); //Teleportacja
		};
	};
	if (MEM_KeyState(KEY_5) == KEY_PRESSED)
	{
		if (LAGER == 2){
			AI_Teleport		(hero, "L2_MINE_01"); //Teleportacja 
		}
		else if (LAGER == 1){
			AI_Teleport		(hero, "L1_MINE_01"); //Teleportacja
		};
	};
	if (MEM_KeyState(KEY_6) == KEY_PRESSED)
	{
		if (LAGER == 2){
			AI_Teleport		(hero, "L2_MAGIE_01"); //Teleportacja 
		}
		else if (LAGER == 1){
			AI_Teleport		(hero, "L1_MAGIE_01"); //Teleportacja
		};
	};
	if (MEM_KeyState(KEY_7) == KEY_PRESSED)
	{
		AI_Teleport		(hero, "HOEHLE"); //Teleportacja 
	};
	if (MEM_KeyState(KEY_9) == KEY_PRESSED)
	{
		if (LAGER == 2){
			AI_Teleport		(hero, "PASS_01"); //Teleportacja 
		}
		else if (LAGER == 1){
			AI_Teleport		(hero, "PASS_01"); //Teleportacja
		};
	};


};

