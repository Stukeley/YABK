// Funkcja odpowiadajaca za zachowanie smieciarza.

func void b_muellmann(var C_Npc slf)
{
	if(MAP == MAP01)
	{
		if((slf.aivar[92] == 0) && (Npc_GetDistToWP(slf,"L2_KING_01") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L2VorKoenig");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 1) && (Npc_GetDistToWP(slf,"L2_KING_03") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L2Ebene2");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 2) && (Npc_GetDistToWP(slf,"L2_LAGER_04") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L2Ebene1");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 3) && (Npc_GetDistToWP(slf,"L2_LAGER_05") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L2Ebene11");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 4) && (Npc_GetDistToWP(slf,"PASS_27") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass2");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 5) && (Npc_GetDistToWP(slf,"PASS_25") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass22");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 6) && (Npc_GetDistToWP(slf,"PASS_23") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass222");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 7) && (Npc_GetDistToWP(slf,"PASS_21") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass111");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 8) && (Npc_GetDistToWP(slf,"PASS_11") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass11");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 9) && (Npc_GetDistToWP(slf,"PASS_13") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass1");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 10) && (Npc_GetDistToWP(slf,"PASS_15") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L1Ebene11");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 11) && (Npc_GetDistToWP(slf,"PASS_17") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L1Ebene1");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 12) && (Npc_GetDistToWP(slf,"L1_LAGER_05") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L1Ebene2");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 13) && (Npc_GetDistToWP(slf,"L1_LAGER_04") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L1VorKoenig");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 14) && (Npc_GetDistToWP(slf,"L1_KING_03") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Lager1");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 15) && (Npc_GetDistToWP(slf,"L1_KING_01") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L1VorKoenig");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 16) && (Npc_GetDistToWP(slf,"L1_KING_03") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L1Ebene2");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 17) && (Npc_GetDistToWP(slf,"L1_LAGER_04") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L1Ebene1");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 18) && (Npc_GetDistToWP(slf,"L1_LAGER_05") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L1Ebene11");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 19) && (Npc_GetDistToWP(slf,"PASS_17") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass1");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 20) && (Npc_GetDistToWP(slf,"PASS_15") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass11");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 21) && (Npc_GetDistToWP(slf,"PASS_13") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass111");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 22) && (Npc_GetDistToWP(slf,"PASS_11") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass222");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 23) && (Npc_GetDistToWP(slf,"PASS_21") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass22");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 24) && (Npc_GetDistToWP(slf,"PASS_23") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Pass2");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 25) && (Npc_GetDistToWP(slf,"PASS_25") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L2Ebene11");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 26) && (Npc_GetDistToWP(slf,"PASS_27") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L2Ebene1");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 27) && (Npc_GetDistToWP(slf,"L2_LAGER_05") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L2Ebene2");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if((slf.aivar[92] == 28) && (Npc_GetDistToWP(slf,"L2_LAGER_04") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"Lager2");
			slf.aivar[92] = 0;
			slf.aivar[93] = FALSE;
		};
	}
	else if(MAP == MACHTL_MAP)
	{
		if((slf.aivar[92] == 0) && (Npc_GetDistToWP(slf,"L2_KING_01") < 300) && (slf.aivar[93] == TRUE))
		{
			Npc_ExchangeRoutine(slf,"L2VorKoenig");
			slf.aivar[92] += 1;
			slf.aivar[93] = FALSE;
		};
		if(slf.aivar[97] == 1)
		{
			if((slf.aivar[92] == 1) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 2) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 3) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 4) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 5) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 6) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 7) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 8) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 9) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 10) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 11) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 12) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 13) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 14) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 15) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 16) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 17) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 18) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 19) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 20) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 21) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSEINSSTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 22) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 23) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 24) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 25) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 26) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 27) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"EINSZWEISTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 28) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L2VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 29) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager2");
				slf.aivar[92] = 0;
				slf.aivar[93] = FALSE;
			};
		}
		else if(slf.aivar[97] == 2)
		{
			if((slf.aivar[92] == 1) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 2) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 3) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 4) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 5) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 6) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 7) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 8) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 9) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 10) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 11) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 12) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 13) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 14) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 15) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 16) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 17) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 18) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 19) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 20) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 21) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIEINSSTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 22) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 23) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 24) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 25) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 26) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 27) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"ZWEIZWEISTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 28) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L2VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 29) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager2");
				slf.aivar[92] = 0;
				slf.aivar[93] = FALSE;
			};
		}
		else if(slf.aivar[97] == 3)
		{
			if((slf.aivar[92] == 1) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 2) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 3) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 4) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 5) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 6) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 7) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 8) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 9) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 10) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 11) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 12) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 13) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 14) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 15) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 16) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 17) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 18) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 19) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 20) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 21) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIEINSSTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 22) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 23) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 24) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 25) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 26) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 27) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"DREIZWEISTEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 28) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L2VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 29) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager2");
				slf.aivar[92] = 0;
				slf.aivar[93] = FALSE;
			};
		};
	}
	else if(MAP == VARUS_MAP)
	{
		if((slf.aivar[97] == 1) || (slf.aivar[97] == 2))
		{
			if((slf.aivar[92] == 0) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L2VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 1) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 2) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 3) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 4) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 5) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 6) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 7) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP7");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 8) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP8");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 9) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP9");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 10) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP10");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 11) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP11");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 12) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP12");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 13) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP13");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 14) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP14");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 15) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP14");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 16) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP13");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 17) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP12");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 18) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP11");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 19) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP10");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 20) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP9");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 21) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP8");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 22) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP7");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 23) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 24) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 25) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 26) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 27) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 28) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 29) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 30) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 31) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 32) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 33) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 34) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 35) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 36) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 37) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 38) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP7");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 39) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP8");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 40) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP9");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 41) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP10");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 42) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP11");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 43) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP12");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 44) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP13");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 45) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_EINS_STEP14");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 46) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP14");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 47) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP13");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 48) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP12");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 49) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP11");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 50) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP10");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 51) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP9");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 52) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP8");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 53) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP7");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 54) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP6");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 55) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP5");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 56) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP4");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 57) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP3");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 58) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP2");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 59) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_ZWEI_STEP1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 60) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L2VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 61) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager2");
				slf.aivar[92] = 0;
				slf.aivar[93] = FALSE;
			};
		}
		else if(slf.aivar[97] == 3)
		{
			if((slf.aivar[92] == 0) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L2VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 1) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP01");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 2) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP02");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 3) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP03");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 4) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP04");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 5) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP05");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 6) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP06");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 7) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP07");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 8) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP08");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 9) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP09");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 10) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP10");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 11) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP11");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 12) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP12");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 13) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP13");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 14) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 15) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 16) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP13");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 17) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP12");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 18) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP11");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 19) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP10");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 20) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP09");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 21) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP08");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 22) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP07");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 23) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP06");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 24) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP05");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 25) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP04");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 26) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP03");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 27) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP02");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 28) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_MINE_STEP01");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 29) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L2VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 30) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager2");
				slf.aivar[92] = 0;
				slf.aivar[93] = FALSE;
			};
		}
		else if(slf.aivar[97] == 4)
		{
			if((slf.aivar[92] == 0) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L2VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 1) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP01");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 2) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP02");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 3) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP03");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 4) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP04");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 5) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP05");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 6) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP06");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 7) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP07");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 8) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP08");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 9) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP09");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 10) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP10");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 11) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP11");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 12) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP12");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 13) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP13");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 14) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP14");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 15) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP15");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 16) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP16");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 17) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP147");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 18) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP18");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 19) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP19");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 20) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP20");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 21) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP21");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 22) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L1VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 22) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager1");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 23) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP21");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 24) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP20");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 25) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP19");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 26) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP18");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 27) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP17");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 28) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP16");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 29) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP15");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 30) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP14");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 31) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP13");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 32) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP12");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 33) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP11");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 34) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP10");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 35) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP09");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 36) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP08");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 37) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP07");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 38) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP06");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 39) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP05");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 40) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP04");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 41) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP03");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 42) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP02");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 43) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"VMap_HOEHLE_STEP01");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 44) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"L2VorKoenig");
				slf.aivar[92] += 1;
				slf.aivar[93] = FALSE;
			};
			if((slf.aivar[92] == 45) && (slf.aivar[93] == TRUE))
			{
				Npc_ExchangeRoutine(slf,"Lager2");
				slf.aivar[92] = 0;
				slf.aivar[93] = FALSE;
			};
		};
	};
	if(Npc_GetStateTime(slf) >= 10)
	{
		AI_StandupQuick(slf);
		Npc_SetStateTime(slf,0);
	};
};

