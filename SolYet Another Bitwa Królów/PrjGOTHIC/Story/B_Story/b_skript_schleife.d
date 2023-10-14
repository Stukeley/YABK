// Plik zawierajacy skrypt powiazany bezposrednio z pojawianiem sie jednostek co jakis czas.

// Funkcja reprezentujaca "petle"? zwiazana z pojawianiem sie jednostek.
func void b_skript_schleife()
{
	ABLAUF += 1;
	if((Npc_IsInState(pal_1000_king,ZS_Attack) && (LAGER == 1)) || (Npc_IsInState(djg_2000_king,ZS_Attack) && (LAGER == 2)))
	{
		B_Message("NEWS_Eigen_KoenigAngegriffen");
	};
	b_muellmann(none_3000_muellmann);
	if(none_3001_muellmann.attribute[ATR_HITPOINTS] > 0)
	{
		b_muellmann(none_3001_muellmann);
	};
	if(none_3002_muellmann.attribute[ATR_HITPOINTS] > 0)
	{
		b_muellmann(none_3002_muellmann);
	};
	if(none_3003_muellmann.attribute[ATR_HITPOINTS] > 0)
	{
		b_muellmann(none_3003_muellmann);
	};
	if(none_3004_muellmann.attribute[ATR_HITPOINTS] > 0)
	{
		b_muellmann(none_3004_muellmann);
	};
	if(ABLAUF == L1_HELD_TOT)
	{
		B_RevivePalHero();
	};
	if(ABLAUF == L2_HELD_TOT)
	{
		B_ReviveDjgHero();
	};
	if((L1_SCHMIEDE_ERBAUT == TRUE) && (L1_SCHMIEDE_ERBAUT_TIME == 0) && (L1_SCHMIEDE == 0))
	{
		L1_SCHMIEDE_ERBAUT_TIME = ABLAUF;
		Wld_SendTrigger("SCHMIEDE_LAGEREINS");
	};
	if((L1_SCHMIEDE_ERBAUT_TIME > 0) && (ABLAUF > L1_SCHMIEDE_ERBAUT_TIME) && (L1_SCHMIEDE == 0))
	{
		if(LAGER == 1)
		{
			B_RemoveNpc(pal_1001_schmiedebauer);
		}
		else
		{
			B_Message("NEWS_Gegner_SchmiedeFertig");
		};
		if (LAGER == 2 )
		{	
		Wld_InsertNpc(djg_2002_schmied,SPAWNWAYPOINT);
		};
		L1_SCHMIEDE = ABLAUF;
		L1_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
	};
	if((L2_SCHMIEDE_ERBAUT == TRUE) && (L2_SCHMIEDE_ERBAUT_TIME == 0) && (L2_SCHMIEDE == 0))
	{
		L2_SCHMIEDE_ERBAUT_TIME = ABLAUF;
		Wld_SendTrigger("SCHMIEDE_LAGERZWEI");
	};
	if((L2_SCHMIEDE_ERBAUT_TIME > 0) && (ABLAUF > L2_SCHMIEDE_ERBAUT_TIME) && (L2_SCHMIEDE == 0))
	{
		if(LAGER == 2)
		{
			B_RemoveNpc(djg_2001_schmiedebauer);
		}
		else
		{
			B_Message("NEWS_Gegner_SchmiedeFertig");
		};
		if (LAGER == 1 )
		{	
		Wld_InsertNpc(pal_1002_schmied,SPAWNWAYPOINT);
		};
		L2_SCHMIEDE = ABLAUF;
		L2_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
	};
	if(L1_SCHMIEDE > 0)
	{
		if((Npc_GetDistToWP(pal_1002_schmied,"L1_SCHMIEDE_04") < 300) && (L1_SCHMIED_STEP == 0))
		{
			if((L1_AKTUELLER_SCHMIEDE_ABLAUF >= (L1_SCHMIEDE + 1)) && !Npc_IsInState(pal_1002_schmied,ZS_Talk))
			{
				B_StartOtherRoutine(pal_1002_schmied,"OFEN");
				L1_SCHMIEDE = ABLAUF;
				L1_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				L1_SCHMIED_STEP = 1;
			}
			else
			{
				L1_AKTUELLER_SCHMIEDE_ABLAUF = L1_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
		if((Npc_GetDistToWP(pal_1002_schmied,"L1_SCHMIEDE_OFEN") < 300) && (L1_SCHMIED_STEP == 1))
		{
			if((L1_AKTUELLER_SCHMIEDE_ABLAUF >= (L1_SCHMIEDE + 1)) && !Npc_IsInState(pal_1002_schmied,ZS_Talk))
			{
				B_StartOtherRoutine(pal_1002_schmied,"AMBOSS");
				L1_SCHMIEDE = ABLAUF;
				L1_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				L1_SCHMIED_STEP = 2;
			}
			else
			{
				L1_AKTUELLER_SCHMIEDE_ABLAUF = L1_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
		if((Npc_GetDistToWP(pal_1002_schmied,"L1_SCHMIEDE_AMBOSS") < 300) && (L1_SCHMIED_STEP == 2))
		{
			if((L1_AKTUELLER_SCHMIEDE_ABLAUF >= (L1_SCHMIEDE + 1)) && !Npc_IsInState(pal_1002_schmied,ZS_Talk))
			{
				L1_SCHMIEDE = ABLAUF;
				L1_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				if(L1_SCHMIEDESTEP != 0)
				{
					B_StartOtherRoutine(pal_1002_schmied,"WASSER");
					L1_SCHMIED_STEP = 3;
				}
				else
				{
					B_StartOtherRoutine(pal_1002_schmied,"SCHLEIFEN");
					L1_SCHMIED_STEP = 4;
				};
			}
			else
			{
				L1_AKTUELLER_SCHMIEDE_ABLAUF = L1_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
		if((Npc_GetDistToWP(pal_1002_schmied,"L1_SCHMIEDE_WASSER") < 300) && (L1_SCHMIED_STEP == 3))
		{
			if((L1_AKTUELLER_SCHMIEDE_ABLAUF >= (L1_SCHMIEDE + 1)) && !Npc_IsInState(pal_1002_schmied,ZS_Talk))
			{
				B_StartOtherRoutine(pal_1002_schmied,"SCHLEIFEN");
				L1_SCHMIEDE = ABLAUF;
				L1_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				L1_SCHMIED_STEP = 4;
			}
			else
			{
				L1_AKTUELLER_SCHMIEDE_ABLAUF = L1_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
		if((Npc_GetDistToWP(pal_1002_schmied,"L1_SCHMIEDE_SCHLEIFEN") < 300) && (L1_SCHMIED_STEP == 4))
		{
			if((L1_AKTUELLER_SCHMIEDE_ABLAUF >= (L1_SCHMIEDE + 1)) && !Npc_IsInState(pal_1002_schmied,ZS_Talk))
			{
				if(L1_SCHMIEDESTEP == 0)
				{
					B_StartOtherRoutine(pal_1002_schmied,"OFEN");
					L1_SCHMIED_STEP = 1;
					L1_SCHMIEDE = ABLAUF;
				}
				else
				{
					B_StartOtherRoutine(pal_1002_schmied,"Start");
					L1_SCHMIED_STEP = 0;
				};
				L1_SCHMIEDE = ABLAUF;
				L1_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				if(LAGER != 1)
				{
					if(L1_SCHMIEDGEGENSTAND == SCHMIED_WAFFEN)
					{
						if(L1_USED_WEAPON < MAXWEAPONSTEP)
						{
							L1_HAVEWEAPONS += 1;
						};
					}
					else if(L1_SCHMIEDGEGENSTAND == SCHMIED_RUESSI)
					{
						if(L1_USED_ARMOR < MAXARMORSTEP)
						{
							L1_HAVEARMORS += 1;
						};
					}
					else if(L1_SCHMIEDGEGENSTAND == SCHMIED_GOLD)
					{
						if(SCHWIERIGKEIT == DIFF_LIGHT)
						{
							L1_HAVEGOLD += GOLD_VON_SCHMIEDE / 2;
						}
						else if(SCHWIERIGKEIT == DIFF_NORMAL)
						{
							L1_HAVEGOLD += GOLD_VON_SCHMIEDE;
						}
						else if(SCHWIERIGKEIT == DIFF_HEAVY)
						{
							L1_HAVEGOLD += GOLD_VON_SCHMIEDE * 2;
						}
						else if(SCHWIERIGKEIT == DIFF_HORROR)
						{
							L1_HAVEGOLD += GOLD_VON_SCHMIEDE * 4;
						};
					};
				}
				else if(LAGER == 1)
				{
					if(L1_SCHMIEDGEGENSTAND == SCHMIED_WAFFEN)
					{
						if((LAGER == 1) && (L1_USED_WEAPON < MAXWEAPONSTEP))
						{
							B_Message("NEWS_Eigen_SchmiedWaffeFertig");
						};
						if(L1_USED_WEAPON == 1)
						{
							if(INSTANTWEAPONS == FALSE)
							{
								Wld_InsertItem(itmw_sword_pal,"L1_WAFFEN_FP");
							}
							else
							{
								CreateInvItems(hero,itmw_sword_pal,1);
							};
						};
						if(L1_USED_WEAPON == 2)
						{
							if(INSTANTWEAPONS == FALSE)
							{
								Wld_InsertItem(itmw_langschwert_pal,"L1_WAFFEN_FP");
							}
							else
							{
								CreateInvItems(hero,itmw_langschwert_pal,1);
							};
						};
						if(L1_USED_WEAPON == 3)
						{
							if(INSTANTWEAPONS == FALSE)
							{
								Wld_InsertItem(itmw_elbastardo_pal,"L1_WAFFEN_FP");
							}
							else
							{
								CreateInvItems(hero,itmw_elbastardo_pal,1);
							};
						};
					}
					else if(L1_SCHMIEDGEGENSTAND == SCHMIED_RUESSI)
					{
						if((LAGER == 1) && (L1_USED_ARMOR < MAXARMORSTEP))
						{
							B_Message("NEWS_Eigen_SchmiedRuessiFertig");
						};
						if(FRAKTION_L1 == DJG)
						{
							if(L1_USED_ARMOR == 1)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_sld_M,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_sld_M,1);
								};
							};
							if(L1_USED_ARMOR == 2)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_djg_l,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_djg_l,1);
								};
							};
							if(L1_USED_ARMOR == 3)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_djg_h,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_djg_h,1);
								};
							};
						}
						else if(FRAKTION_L1 == PAL)
						{
							if(L1_USED_ARMOR == 1)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(ItAr_MIL_M,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,ItAr_MIL_M,1);
								};
							};
							if(L1_USED_ARMOR == 2)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(ItAr_PAL_M,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,ItAr_PAL_M,1);
								};
							};
							if(L1_USED_ARMOR == 3)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(ItAr_PAl_H,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,ItAr_PAl_H,1);
								};
							};
						}
						else if(FRAKTION_L1 == SKE)
						{
							if(L1_USED_ARMOR == 1)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_skemil_m,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_skemil_m,1);
								};
							};
							if(L1_USED_ARMOR == 2)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_skepal_m,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_skepal_m,1);
								};
							};
							if(L1_USED_ARMOR == 3)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_skepal_h,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_skepal_h,1);
								};
							};
						}
						else if(FRAKTION_L1 == TMP)
						{
							if(L1_USED_ARMOR == 1)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_tmp_l,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_tmp_l,1);
								};
							};
							if(L1_USED_ARMOR == 2)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_tmp_m,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_tmp_m,1);
								};
							};
							if(L1_USED_ARMOR == 3)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_tmp_h,"L1_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_tmp_h,1);
								};
							};
						};
					}
					else if(L1_SCHMIEDGEGENSTAND == SCHMIED_GOLD)
					{
						CreateInvItems(hero,ItMi_Gold,GOLD_VON_SCHMIEDE);
					};
				};
			}
			else
			{
				L1_AKTUELLER_SCHMIEDE_ABLAUF = L1_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
	};
	if(L2_SCHMIEDE > 0)
	{
		if((Npc_GetDistToWP(djg_2002_schmied,"L2_SCHMIEDE_04") < 300) && (L2_SCHMIED_STEP == 0))
		{
			if((L2_AKTUELLER_SCHMIEDE_ABLAUF >= (L2_SCHMIEDE + 1)) && !Npc_IsInState(djg_2002_schmied,ZS_Talk))
			{
				B_StartOtherRoutine(djg_2002_schmied,"OFEN");
				L2_SCHMIEDE = ABLAUF;
				L2_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				L2_SCHMIED_STEP = 1;
			}
			else
			{
				L2_AKTUELLER_SCHMIEDE_ABLAUF = L2_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
		if((Npc_GetDistToWP(djg_2002_schmied,"L2_SCHMIEDE_OFEN") < 300) && (L2_SCHMIED_STEP == 1))
		{
			if((L2_AKTUELLER_SCHMIEDE_ABLAUF >= (L2_SCHMIEDE + 1)) && !Npc_IsInState(djg_2002_schmied,ZS_Talk))
			{
				B_StartOtherRoutine(djg_2002_schmied,"AMBOSS");
				L2_SCHMIEDE = ABLAUF;
				L2_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				L2_SCHMIED_STEP = 2;
			}
			else
			{
				L2_AKTUELLER_SCHMIEDE_ABLAUF = L2_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
		if((Npc_GetDistToWP(djg_2002_schmied,"L2_SCHMIEDE_AMBOSS") < 300) && (L2_SCHMIED_STEP == 2))
		{
			if((L2_AKTUELLER_SCHMIEDE_ABLAUF >= (L2_SCHMIEDE + 1)) && !Npc_IsInState(djg_2002_schmied,ZS_Talk))
			{
				L2_SCHMIEDE = ABLAUF;
				L2_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				if(L2_SCHMIEDESTEP != 0)
				{
					B_StartOtherRoutine(djg_2002_schmied,"WASSER");
					L2_SCHMIED_STEP = 3;
				}
				else
				{
					B_StartOtherRoutine(djg_2002_schmied,"SCHLEIFEN");
					L2_SCHMIED_STEP = 4;
				};
			}
			else
			{
				L2_AKTUELLER_SCHMIEDE_ABLAUF = L2_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
		if((Npc_GetDistToWP(djg_2002_schmied,"L2_SCHMIEDE_WASSER") < 300) && (L2_SCHMIED_STEP == 3))
		{
			if((L2_AKTUELLER_SCHMIEDE_ABLAUF >= (L2_SCHMIEDE + 1)) && !Npc_IsInState(djg_2002_schmied,ZS_Talk))
			{
				B_StartOtherRoutine(djg_2002_schmied,"SCHLEIFEN");
				L2_SCHMIEDE = ABLAUF;
				L2_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				L2_SCHMIED_STEP = 4;
			}
			else
			{
				L2_AKTUELLER_SCHMIEDE_ABLAUF = L2_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
		if((Npc_GetDistToWP(djg_2002_schmied,"L2_SCHMIEDE_SCHLEIFEN") < 300) && (L2_SCHMIED_STEP == 4))
		{
			if((L2_AKTUELLER_SCHMIEDE_ABLAUF >= (L2_SCHMIEDE + 1)) && !Npc_IsInState(djg_2002_schmied,ZS_Talk))
			{
				L2_SCHMIEDE = ABLAUF;
				L2_AKTUELLER_SCHMIEDE_ABLAUF = ABLAUF;
				if(L2_SCHMIEDESTEP == 0)
				{
					B_StartOtherRoutine(djg_2002_schmied,"OFEN");
					L2_SCHMIEDE = ABLAUF;
					L2_SCHMIED_STEP = 1;
				}
				else
				{
					B_StartOtherRoutine(djg_2002_schmied,"Start");
					L2_SCHMIED_STEP = 0;
				};
				if(LAGER != 2)
				{
					if(L2_SCHMIEDGEGENSTAND == SCHMIED_WAFFEN)
					{
						if(L2_USED_WEAPON < MAXWEAPONSTEP)
						{
							L2_HAVEWEAPONS += 1;
						};
					}
					else if(L2_SCHMIEDGEGENSTAND == SCHMIED_RUESSI)
					{
						if(L2_USED_ARMOR < MAXARMORSTEP)
						{
							L2_HAVEARMORS += 1;
						};
					}
					else if(L2_SCHMIEDGEGENSTAND == SCHMIED_GOLD)
					{
						if(SCHWIERIGKEIT == DIFF_LIGHT)
						{
							L2_HAVEGOLD += GOLD_VON_SCHMIEDE / 2;
						}
						else if(SCHWIERIGKEIT == DIFF_NORMAL)
						{
							L2_HAVEGOLD += GOLD_VON_SCHMIEDE;
						}
						else if(SCHWIERIGKEIT == DIFF_HEAVY)
						{
							L2_HAVEGOLD += GOLD_VON_SCHMIEDE * 2;
						}
						else if(SCHWIERIGKEIT == DIFF_HORROR)
						{
							L2_HAVEGOLD += GOLD_VON_SCHMIEDE * 4;
						};
					};
				}
				else if(LAGER == 2)
				{
					if(L2_SCHMIEDGEGENSTAND == SCHMIED_WAFFEN)
					{
						if((LAGER == 2) && (L2_USED_WEAPON < MAXWEAPONSTEP))
						{
							B_Message("NEWS_Eigen_SchmiedWaffeFertig");
						};
						if(L2_USED_WEAPON == 1)
						{
							if(INSTANTWEAPONS == FALSE)
							{
								Wld_InsertItem(itmw_sword_djg,"L2_WAFFEN_FP");
							}
							else
							{
								CreateInvItems(hero,itmw_sword_djg,1);
							};
						};
						if(L2_USED_WEAPON == 2)
						{
							if(INSTANTWEAPONS == FALSE)
							{
								Wld_InsertItem(itmw_langschwert_djg,"L2_WAFFEN_FP");
							}
							else
							{
								CreateInvItems(hero,itmw_langschwert_djg,1);
							};
						};
						if(L2_USED_WEAPON == 3)
						{
							if(INSTANTWEAPONS == FALSE)
							{
								Wld_InsertItem(itmw_elbastardo_djg,"L2_WAFFEN_FP");
							}
							else
							{
								CreateInvItems(hero,itmw_elbastardo_djg,1);
							};
						};
					}
					else if(L2_SCHMIEDGEGENSTAND == SCHMIED_RUESSI)
					{
						if((LAGER == 2) && (L2_USED_ARMOR < MAXARMORSTEP))
						{
							B_Message("NEWS_Eigen_SchmiedRuessiFertig");
						};
						if(FRAKTION_L2 == DJG)
						{
							if(L2_USED_ARMOR == 1)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_sld_M,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_sld_M,1);
								};
							};
							if(L2_USED_ARMOR == 2)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_djg_l,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_djg_l,1);
								};
							};
							if(L2_USED_ARMOR == 3)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_djg_h,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_djg_h,1);
								};
							};
						}
						else if(FRAKTION_L2 == PAL)
						{
							if(L2_USED_ARMOR == 1)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(ItAr_MIL_M,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,ItAr_MIL_M,1);
								};
							};
							if(L2_USED_ARMOR == 2)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(ItAr_PAL_M,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,ItAr_PAL_M,1);
								};
							};
							if(L2_USED_ARMOR == 3)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(ItAr_PAl_H,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,ItAr_PAl_H,1);
								};
							};
						}
						else if(FRAKTION_L2 == SKE)
						{
							if(L2_USED_ARMOR == 1)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_skemil_m,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_skemil_m,1);
								};
							};
							if(L2_USED_ARMOR == 2)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_skepal_m,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_skepal_m,1);
								};
							};
							if(L2_USED_ARMOR == 3)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_skepal_h,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_skepal_h,1);
								};
							};
						}
						else if(FRAKTION_L2 == TMP)
						{
							if(L2_USED_ARMOR == 1)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_tmp_l,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_tmp_l,1);
								};
							};
							if(L2_USED_ARMOR == 2)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_tmp_m,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_tmp_m,1);
								};
							};
							if(L2_USED_ARMOR == 3)
							{
								if(INSTANTWEAPONS == FALSE)
								{
									Wld_InsertItem(itar_tmp_h,"L2_WAFFEN_FP");
								}
								else
								{
									CreateInvItems(hero,itar_tmp_h,1);
								};
							};
						};
					}
					else if(L2_SCHMIEDGEGENSTAND == SCHMIED_GOLD)
					{
						CreateInvItems(hero,ItMi_Gold,GOLD_VON_SCHMIEDE);
					};
				};
			}
			else
			{
				L2_AKTUELLER_SCHMIEDE_ABLAUF = L2_AKTUELLER_SCHMIEDE_ABLAUF + 1;
			};
		};
	};
	if((L1_MAGIE_ERBAUT == TRUE) && (L1_MAGIE_ERBAUT_TIME == 0) && (L1_MAGIE == 0))
	{
		L1_MAGIE_ERBAUT_TIME = ABLAUF;
		Wld_SendTrigger("MAGIER_LAGEREINS");
	};
	if((L1_MAGIE_ERBAUT_TIME > 0) && (ABLAUF > L1_MAGIE_ERBAUT_TIME) && (L1_MAGIE == 0))
	{
		if(LAGER == 1)
		{
			B_RemoveNpc(pal_1005_magiebauer);
		};
		Wld_InsertNpc(pal_1004_magier,"L1_MAGIE_02");
		if(LAGER != 1)
		{
			B_Message("NEWS_Gegner_MagierFertig");
		};
		L1_MAGIE = ABLAUF;
	};
	if((L2_MAGIE_ERBAUT == TRUE) && (L2_MAGIE_ERBAUT_TIME == 0) && (L2_MAGIE == 0))
	{
		L2_MAGIE_ERBAUT_TIME = ABLAUF;
		Wld_SendTrigger("MAGIER_LAGERZWEI");
	};
	if((L2_MAGIE_ERBAUT_TIME > 0) && (ABLAUF > L2_MAGIE_ERBAUT_TIME) && (L2_MAGIE == 0))
	{
		if(LAGER == 2)
		{
			B_RemoveNpc(djg_2005_magiebauer);
		};
		Wld_InsertNpc(djg_2004_magier,"L2_MAGIE_02");
		if(LAGER != 2)
		{
			B_Message("NEWS_Gegner_MagierFertig");
		};
		L2_MAGIE = ABLAUF;
	};
	if(L1_FORSCHEN_STEP > 0)
	{
		if(L1_ZAUBER_ERFORSCHEN > 0)
		{
			if(L1_AKTUELLER_FORSCHEN_STEP >= (L1_FORSCHEN_STEP + 10))
			{
				L1_FORSCHEN_STEP = 0;
				if(L1_ZAUBER_ERFORSCHEN == SPELLEISBLOCK)
				{
					L1_EISBLOCKERFORSCHT = TRUE;
				};
				if(L1_ZAUBER_ERFORSCHEN == SPELLBLITZSCHLAG)
				{
					L1_BLITZSCHLAGERFORSCHT = TRUE;
					L1_FAVORITSPELL = SPELLBLITZSCHLAG;
				};
				if(L1_ZAUBER_ERFORSCHEN == SPELLHEILUNG)
				{
					L1_WUNDENHEILENERFORSCHT = TRUE;
				};
				if(L1_ZAUBER_ERFORSCHEN == SPELLRANKEN)
				{
					L1_RANKENERFORSCHT = TRUE;
				};
				L1_ZAUBER_ERFORSCHEN = 0;
				B_StartOtherRoutine(pal_1004_magier,"start");
			}
			else if((L1_AKTUELLER_FORSCHEN_STEP > (L1_FORSCHEN_STEP + 5)) && (Npc_GetDistToWP(pal_1004_magier,"L1_MAGIE_RUNENTISCH") < 300))
			{
				L1_AKTUELLER_FORSCHEN_STEP = L1_AKTUELLER_FORSCHEN_STEP + 1;
			}
			else if(L1_AKTUELLER_FORSCHEN_STEP == (L1_FORSCHEN_STEP + 5))
			{
				B_StartOtherRoutine(pal_1004_magier,"RUNENTISCH");
				L1_AKTUELLER_FORSCHEN_STEP += 1;
			}
			else if(Npc_GetDistToWP(pal_1004_magier,"L1_MAGIE_BUCH") < 300)
			{
				L1_AKTUELLER_FORSCHEN_STEP = L1_AKTUELLER_FORSCHEN_STEP + 1;
			};
		};
		if(L1_TRANK_ERFORSCHEN > 0)
		{
			if(L1_AKTUELLER_FORSCHEN_STEP >= (L1_FORSCHEN_STEP + 10))
			{
				L1_FORSCHEN_STEP = 0;
				if(L1_TRANK_ERFORSCHEN == POTION_HEILTRANK)
				{
					L1_HEILTRANKERFORSCHT = TRUE;
				};
				if(L1_TRANK_ERFORSCHEN == POTION_MAGIERUPDATE)
				{
					L1_MAGIERUPDATE = TRUE;
				};
				if(L1_TRANK_ERFORSCHEN == POTION_WACHENUPDATE)
				{
					L1_WACHEN_LEVEL += 1;
					B_UpdateWachenAbilities(pal_1160_wache);
					B_UpdateWachenAbilities(pal_1161_wache);
				};
				if(L1_TRANK_ERFORSCHEN == POTION_GOLDUPDATE)
				{
					L1_GOLD_UPDATE = TRUE;
				};
				if(L1_TRANK_ERFORSCHEN == POTION_EHRENUPDATE)
				{
					L1_EHRE_UPDATE = TRUE;
				};
				if(L1_TRANK_ERFORSCHEN == POTION_SMITHUPGRADE)
				{
					L1_SCHMIEDESTEP = 0;
				};
				L1_TRANK_ERFORSCHEN = 0;
				B_StartOtherRoutine(pal_1004_magier,"start");
			}
			else if(L1_AKTUELLER_FORSCHEN_STEP > (L1_FORSCHEN_STEP + 5))
			{
				if(Npc_GetDistToWP(pal_1004_magier,"L1_MAGIE_ALCHEMIE") < 300)
				{
					L1_AKTUELLER_FORSCHEN_STEP = L1_AKTUELLER_FORSCHEN_STEP + 1;
				};
			}
			else if(L1_AKTUELLER_FORSCHEN_STEP == (L1_FORSCHEN_STEP + 5))
			{
				B_StartOtherRoutine(pal_1004_magier,"ALCHEMIE");
				L1_AKTUELLER_FORSCHEN_STEP += 1;
			}
			else if(Npc_GetDistToWP(pal_1004_magier,"L1_MAGIE_BUCH") < 300)
			{
				L1_AKTUELLER_FORSCHEN_STEP = L1_AKTUELLER_FORSCHEN_STEP + 1;
			};
		};
	};
	if(L2_FORSCHEN_STEP > 0)
	{
		if(L2_ZAUBER_ERFORSCHEN > 0)
		{
			if(L2_AKTUELLER_FORSCHEN_STEP >= (L2_FORSCHEN_STEP + 10))
			{
				L2_FORSCHEN_STEP = 0;
				if(L2_ZAUBER_ERFORSCHEN == SPELLEISBLOCK)
				{
					L2_EISBLOCKERFORSCHT = TRUE;
					L2_FAVORITSPELL = SPELLEISBLOCK;
				};
				if(L2_ZAUBER_ERFORSCHEN == SPELLBLITZSCHLAG)
				{
					L2_BLITZSCHLAGERFORSCHT = TRUE;
					L2_FAVORITSPELL = SPELLBLITZSCHLAG;
				};
				if(L2_ZAUBER_ERFORSCHEN == SPELLHEILUNG)
				{
					L2_WUNDENHEILENERFORSCHT = TRUE;
				};
				if(L2_ZAUBER_ERFORSCHEN == SPELLRANKEN)
				{
					L2_RANKENERFORSCHT = TRUE;
				};
				L2_ZAUBER_ERFORSCHEN = 0;
				B_StartOtherRoutine(djg_2004_magier,"start");
			}
			else if((L2_AKTUELLER_FORSCHEN_STEP > (L2_FORSCHEN_STEP + 5)) && (Npc_GetDistToWP(djg_2004_magier,"L2_MAGIE_RUNENTISCH") < 300))
			{
				L2_AKTUELLER_FORSCHEN_STEP = L2_AKTUELLER_FORSCHEN_STEP + 1;
			}
			else if(L2_AKTUELLER_FORSCHEN_STEP == (L2_FORSCHEN_STEP + 5))
			{
				B_StartOtherRoutine(djg_2004_magier,"RUNENTISCH");
				L2_AKTUELLER_FORSCHEN_STEP += 1;
			}
			else if(Npc_GetDistToWP(djg_2004_magier,"L2_MAGIE_BUCH") < 300)
			{
				L2_AKTUELLER_FORSCHEN_STEP = L2_AKTUELLER_FORSCHEN_STEP + 1;
			};
		};
		if(L2_TRANK_ERFORSCHEN > 0)
		{
			if(L2_AKTUELLER_FORSCHEN_STEP >= (L2_FORSCHEN_STEP + 10))
			{
				L2_FORSCHEN_STEP = 0;
				if(L2_TRANK_ERFORSCHEN == POTION_HEILTRANK)
				{
					L2_HEILTRANKERFORSCHT = TRUE;
				};
				if(L2_TRANK_ERFORSCHEN == POTION_MAGIERUPDATE)
				{
					L2_MAGIERUPDATE = TRUE;
				};
				if(L2_TRANK_ERFORSCHEN == POTION_WACHENUPDATE)
				{
					L2_WACHEN_LEVEL += 1;
					B_UpdateWachenAbilities(djg_2160_wache);
					B_UpdateWachenAbilities(djg_2161_wache);
				};
				if(L2_TRANK_ERFORSCHEN == POTION_GOLDUPDATE)
				{
					L2_GOLD_UPDATE = TRUE;
				};
				if(L2_TRANK_ERFORSCHEN == POTION_EHRENUPDATE)
				{
					L2_EHRE_UPDATE = TRUE;
				};
				if(L2_TRANK_ERFORSCHEN == POTION_SMITHUPGRADE)
				{
					L2_SCHMIEDESTEP = 0;
				};
				if (L2_TRANK_ERFORSCHEN == POTION_FOURTHCIRCLE)
				{
					L2_MAGIERUPDATE = FALSE;
					L2_FourthCircle = TRUE;
				};
				if (L2_TRANK_ERFORSCHEN == POTION_FIFTHCIRCLE)
				{
					L2_FourthCircle = FALSE;
					L2_FifthCircle = TRUE;
				};
				if (L2_TRANK_ERFORSCHEN == POTION_SIXCIRCLE)
				{
					L2_FifthCircle = FALSE;
					L2_SixthCircle = TRUE;
				};
				L2_TRANK_ERFORSCHEN = 0;
				B_StartOtherRoutine(djg_2004_magier,"start");
			}
			else if((L2_AKTUELLER_FORSCHEN_STEP > (L2_FORSCHEN_STEP + 5)) && (Npc_GetDistToWP(djg_2004_magier,"L2_MAGIE_ALCHEMIE") < 300))
			{
				L2_AKTUELLER_FORSCHEN_STEP = L2_AKTUELLER_FORSCHEN_STEP + 1;
			}
			else if(L2_AKTUELLER_FORSCHEN_STEP == (L2_FORSCHEN_STEP + 5))
			{
				B_StartOtherRoutine(djg_2004_magier,"ALCHEMIE");
				L2_AKTUELLER_FORSCHEN_STEP += 1;
			}
			else if(Npc_GetDistToWP(djg_2004_magier,"L2_MAGIE_BUCH") < 300)
			{
				L2_AKTUELLER_FORSCHEN_STEP = L2_AKTUELLER_FORSCHEN_STEP + 1;
			};
		};
	};
	if((L1_MINE_ERBAUT == TRUE) && (L1_MINE_ERBAUT_TIME == 0) && (L1_MINE == 0))
	{
		L1_MINE_ERBAUT_TIME = ABLAUF;
		Wld_SendTrigger("MINE_LAGEREINS");
	};
	if((L1_MINE_ERBAUT_TIME > 0) && (ABLAUF > L1_MINE_ERBAUT_TIME) && (L1_MINE == 0))
	{
		if(LAGER == 1)
		{
			B_RemoveNpc(pal_1006_minebauer);
			Wld_InsertNpc(pal_1007_minenaufseher,"L1_MINE_02");
		}
		else
		{
			B_Message("NEWS_Gegner_MineFertig");
		};
		Wld_InsertNpc(pal_1008_minenarbeiter,"L1_MINE_GOLD_1");
		L1_MINE = 1;
	};
	if((L2_MINE_ERBAUT == TRUE) && (L2_MINE_ERBAUT_TIME == 0) && (L2_MINE == 0))
	{
		L2_MINE_ERBAUT_TIME = ABLAUF;
		Wld_SendTrigger("MINE_LAGERZWEI");
	};
	if((L2_MINE_ERBAUT_TIME > 0) && (ABLAUF > L2_MINE_ERBAUT_TIME) && (L2_MINE == 0))
	{
		if(LAGER == 2)
		{
			B_RemoveNpc(djg_2006_minebauer);
			Wld_InsertNpc(djg_2007_minenaufseher,"L2_MINE_02");
		}
		else
		{
			B_Message("NEWS_Gegner_MineFertig");
		};
		Wld_InsertNpc(djg_2008_minenarbeiter,"L2_MINE_GOLD_1");
		L2_MINE = 1;
	};
	if(L1_MINE > 0)
	{
		if(LAGER == 1)
		{
			CreateInvItems(hero,ItMi_Gold,L1_MINE * 2);
		}
		else if(SCHWIERIGKEIT == DIFF_LIGHT)
		{
			L1_HAVEGOLD += L1_MINE * 1;
		}
		else if(SCHWIERIGKEIT == DIFF_NORMAL)
		{
			L1_HAVEGOLD += L1_MINE * 2;
		}
		else if(SCHWIERIGKEIT == DIFF_HEAVY)
		{
			L1_HAVEGOLD += L1_MINE * 2;
		}
		else if(SCHWIERIGKEIT == DIFF_HORROR)
		{
			L1_HAVEGOLD += L1_MINE * 4;
		};
	};
	if(L2_MINE > 0)
	{
		if(LAGER == 2)
		{
			CreateInvItems(hero,ItMi_Gold,L2_MINE * 2);
		}
		else if(SCHWIERIGKEIT == DIFF_LIGHT)
		{
			L2_HAVEGOLD += L2_MINE * 1;
		}
		else if(SCHWIERIGKEIT == DIFF_NORMAL)
		{
			L2_HAVEGOLD += L2_MINE * 2;
		}
		else if(SCHWIERIGKEIT == DIFF_HEAVY)
		{
			L2_HAVEGOLD += L2_MINE * 2;
		}
		else if(SCHWIERIGKEIT == DIFF_HORROR)
		{
			L2_HAVEGOLD += L2_MINE * 4;
		};
	};
	b_skript_schleife_spawn();
	if((none_3000_muellmann.attribute[ATR_HITPOINTS] > 0) && (none_3001_muellmann.attribute[ATR_HITPOINTS] > 0))
	{
		if(Npc_IsInRoutine(none_3000_muellmann,rtn_lager1_3000) && Npc_IsInRoutine(none_3001_muellmann,rtn_lager1_3001) && (MAP == MAP01))
		{
			B_StartOtherRoutine(none_3001_muellmann,"Lager2");
		};
	};
	if((none_3000_muellmann.attribute[ATR_HITPOINTS] > 0) && (none_3001_muellmann.attribute[ATR_HITPOINTS] > 0))
	{
		if(Npc_IsInRoutine(none_3000_muellmann,rtn_lager2_3000) && Npc_IsInRoutine(none_3001_muellmann,rtn_lager2_3001) && (MAP == MAP01))
		{
			B_StartOtherRoutine(none_3001_muellmann,"Lager1");
		};
	};
	if((MAP == MACHTL_MAP) || (MAP == VARUS_MAP))
	{
		if(LAGER == 1)
		{
			CreateInvItems(hero,ItMi_Gold,L1_AKTIVEMINENARBEITER * 2);
			if(SCHWIERIGKEIT == DIFF_LIGHT)
			{
				L2_HAVEGOLD += L2_AKTIVEMINENARBEITER * 1;
			}
			else if(SCHWIERIGKEIT == DIFF_NORMAL)
			{
				L2_HAVEGOLD += L2_AKTIVEMINENARBEITER * 2;
			}
			else if(SCHWIERIGKEIT == DIFF_HEAVY)
			{
				L2_HAVEGOLD += L2_AKTIVEMINENARBEITER * 2;
			}
			else if(SCHWIERIGKEIT == DIFF_HORROR)
			{
				L2_HAVEGOLD += L2_AKTIVEMINENARBEITER * 5;
			};
		}
		else if(LAGER == 2)
		{
			CreateInvItems(hero,ItMi_Gold,L2_AKTIVEMINENARBEITER * 2);
			if(SCHWIERIGKEIT == DIFF_LIGHT)
			{
				L1_HAVEGOLD += L1_AKTIVEMINENARBEITER * 1;
			}
			else if(SCHWIERIGKEIT == DIFF_NORMAL)
			{
				L1_HAVEGOLD += L1_AKTIVEMINENARBEITER * 2;
			}
			else if(SCHWIERIGKEIT == DIFF_HEAVY)
			{
				L1_HAVEGOLD += L1_AKTIVEMINENARBEITER * 2;
			}
			else if(SCHWIERIGKEIT == DIFF_HORROR)
			{
				L1_HAVEGOLD += L1_AKTIVEMINENARBEITER * 5;
			};
		};
	};
};

