
func void SmithProcess()
{
	if (L2_SCHMIEDGEGENSTAND == SCHMIED_RUESSI)
	{
		FF_ApplyExtGT(SmithProcessArmor, 1, 1);
		InfoBox("Otrzymano~Pancerz", COL_White);
	}
	else if(L2_SCHMIEDGEGENSTAND == SCHMIED_WAFFEN)
	{
		FF_ApplyExtGT(SmithProcessWeapon, 1, 1);
		InfoBox("Otrzymano~Broñ", COL_White);
	}
	else if (L2_SCHMIEDGEGENSTAND == SCHMIED_GOLD)
	{
		FF_ApplyExtGT(SmithProcessGold, 1, 1);
		InfoBox("Otrzymano z³oto~od Kowala", COL_White);
	};

};
func void SmithProcess1()
{
	if (L1_SCHMIEDGEGENSTAND == SCHMIED_RUESSI)
	{
		FF_ApplyExtGT(SmithProcessArmor1, 1, 1);
		InfoBox("Otrzymano~Pancerz", COL_White);
	}
	else if(L1_SCHMIEDGEGENSTAND == SCHMIED_WAFFEN)
	{
		FF_ApplyExtGT(SmithProcessWeapon1, 1, 1);
		InfoBox("Otrzymano~Broñ", COL_White);
	}
	else if (L1_SCHMIEDGEGENSTAND == SCHMIED_GOLD)
	{
		FF_ApplyExtGT(SmithProcessGold1, 1, 1);
		InfoBox("Otrzymano z³oto~od Kowala", COL_White);
	};

};

func void SmithProcessWeapon()
{
	if (L2_SCHMIEDGEGENSTAND == SCHMIED_WAFFEN)
	{
			if(L2_USED_WEAPON == 1)
				{
					if(INSTANTWEAPONS == FALSE)
					{
						Wld_InsertItem(itmw_sword_pal,"L2_WAFFEN_FP");
					}
					else
					{
						CreateInvItems(hero,itmw_sword_pal,1);
					};
				};
				if(L2_USED_WEAPON == 2)
				{
					if(INSTANTWEAPONS == FALSE)
					{
						Wld_InsertItem(itmw_langschwert_pal,"L2_WAFFEN_FP");
					}
					else
					{
						CreateInvItems(hero,itmw_langschwert_pal,1);
					};
				};
				if(L2_USED_WEAPON == 3)
				{
					if(INSTANTWEAPONS == FALSE)
					{
						Wld_InsertItem(itmw_elbastardo_pal,"L2_WAFFEN_FP");
					}
					else
					{
						CreateInvItems(hero,itmw_elbastardo_pal,1);
					};
				};
	};
	if (Npc_HasItems(hero,itmw_sword_pal) == 3 || Npc_HasItems(hero,itmw_langschwert_pal) == 3 || Npc_HasItems(hero,itmw_elbastardo_pal) == 3)
	{
		L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
	};
};

func void SmithProcessWeapon1()
{
	if (L1_SCHMIEDGEGENSTAND == SCHMIED_WAFFEN)
	{
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
	};
	if (Npc_HasItems(hero,itmw_sword_pal) == 3 || Npc_HasItems(hero,itmw_langschwert_pal) == 3 || Npc_HasItems(hero,itmw_elbastardo_pal) == 3)
	{
		L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
	};
};

func void SmithProcessArmor()
{
	if(L2_SCHMIEDGEGENSTAND == SCHMIED_RUESSI)
	{
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
			if (Npc_HasItems(hero,itar_sld_M) == 3 || Npc_HasItems(hero,itar_djg_l) == 3 || Npc_HasItems(hero,itar_djg_h) == 3)
			{
				L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
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
			if (Npc_HasItems(hero,ItAr_MIL_M) == 3 || Npc_HasItems(hero,ItAr_PAL_M) == 3 || Npc_HasItems(hero,ItAr_PAl_H) == 3)
			{
				L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
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
			if (Npc_HasItems(hero,itar_skemil_m) == 3 || Npc_HasItems(hero,itar_skepal_m) == 3 || Npc_HasItems(hero,itar_skepal_h) == 3)
			{
				L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
			};
		}
		else if(FRAKTION_L2 == ORC)
		{
			if(L2_USED_ARMOR == 1)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(ItMi_Packet_ORC_2,"L2_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,ItMi_Packet_ORC_2,1);
				};
			};
			if(L2_USED_ARMOR == 2)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(ItMi_Packet_ORC_3,"L2_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,ItMi_Packet_ORC_3,1);
				};
			};
			if(L2_USED_ARMOR == 3)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(ItMi_Packet_ORC_4,"L2_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,ItMi_Packet_ORC_4,1);
				};
			};
			if (Npc_HasItems(hero,ItMi_Packet_ORC_2) == 3 || Npc_HasItems(hero,ItMi_Packet_ORC_3) == 3 || Npc_HasItems(hero,ItMi_Packet_ORC_4) == 3)
			{
				L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
			};
		}
		else if(FRAKTION_L2 == PCH)
		{
			if(L2_USED_ARMOR == 1)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(ITAR_OldCamp_2,"L2_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,ITAR_OldCamp_2,1);
				};
			};
			if(L2_USED_ARMOR == 2)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(Itar_OldCamp_3,"L2_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,Itar_OldCamp_3,1);
				};
			};
			if(L2_USED_ARMOR == 3)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(Itar_OldCamp_4,"L2_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,Itar_OldCamp_4,1);
				};
			};
			if (Npc_HasItems(hero,ITAR_OldCamp_2) == 3 || Npc_HasItems(hero,Itar_OldCamp_3) == 3 || Npc_HasItems(hero,Itar_OldCamp_4) == 3)
			{
				L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
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

			if (Npc_HasItems(hero,itar_tmp_l) == 3 || Npc_HasItems(hero,itar_tmp_m) == 3 || Npc_HasItems(hero,itar_tmp_h) == 3)
			{
				L2_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
			};
		};
	};				

};


func void SmithProcessArmor1()
{
	if(L1_SCHMIEDGEGENSTAND == SCHMIED_RUESSI)
	{
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
			if (Npc_HasItems(hero,itar_sld_M) == 3 || Npc_HasItems(hero,itar_djg_l) == 3 || Npc_HasItems(hero,itar_djg_h) == 3)
			{
				L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
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
			if (Npc_HasItems(hero,ItAr_MIL_M) == 3 || Npc_HasItems(hero,ItAr_PAL_M) == 3 || Npc_HasItems(hero,ItAr_PAl_H) == 3)
			{
				L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
			};
		}
		else if(FRAKTION_L1 == ORC)
		{
			if(L1_USED_ARMOR == 1)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(ItMi_Packet_ORC_2,"L1_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,ItMi_Packet_ORC_2,1);
				};
			};
			if(L1_USED_ARMOR == 2)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(ItMi_Packet_ORC_3,"L1_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,ItMi_Packet_ORC_3,1);
				};
			};
			if(L1_USED_ARMOR == 3)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(ItMi_Packet_ORC_4,"L1_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,ItMi_Packet_ORC_4,1);
				};
			};
			if (Npc_HasItems(hero,ItMi_Packet_ORC_2) == 3 || Npc_HasItems(hero,ItMi_Packet_ORC_3) == 3 || Npc_HasItems(hero,ItMi_Packet_ORC_4) == 3)
			{
				L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
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
			if (Npc_HasItems(hero,itar_skemil_m) == 3 || Npc_HasItems(hero,itar_skepal_m) == 3 || Npc_HasItems(hero,itar_skepal_h) == 3)
			{
				L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
			};
		}
		else if(FRAKTION_L1 == PCH)
		{
			if(L1_USED_ARMOR == 1)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(ITAR_OldCamp_2,"L1_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,ITAR_OldCamp_2,1);
				};
			};
			if(L1_USED_ARMOR == 2)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(Itar_OldCamp_3,"L1_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,Itar_OldCamp_3,1);
				};
			};
			if(L1_USED_ARMOR == 3)
			{
				if(INSTANTWEAPONS == FALSE)
				{
					Wld_InsertItem(Itar_OldCamp_4,"L1_WAFFEN_FP");
				}
				else
				{
					CreateInvItems(hero,Itar_OldCamp_4,1);
				};
			};
			if (Npc_HasItems(hero,ITAR_OldCamp_2) == 3 || Npc_HasItems(hero,ITAR_OldCamp_3) == 3 || Npc_HasItems(hero,ITAR_OldCamp_4) == 3)
			{
				L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
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
			if (Npc_HasItems(hero,itar_tmp_l) == 3 || Npc_HasItems(hero,itar_tmp_m) == 3 || Npc_HasItems(hero,itar_tmp_h) == 3)
			{
				L1_SCHMIEDGEGENSTAND = SCHMIED_GOLD;
			};
			
		};
	};				

};

func void SmithProcessGold()
{
	if (L2_SCHMIEDGEGENSTAND == SCHMIED_GOLD)
	{
		CreateInvItems(hero,itmi_gold,SmithGoldAmount);
	};
};

func void SmithProcessGold1()
{
	if (L1_SCHMIEDGEGENSTAND == SCHMIED_GOLD)
	{
		CreateInvItems(hero,itmi_gold,SmithGoldAmount);
	};
};


func void ArmorInfo() {
	var int currDam;
	currDam = 50;

    var int ptr; var zCView v;
    var int x; var int y; var int mult;
	var int x_end;
	var int y_start;

    var int texSizeX; var int texSizeY;

	Print_GetScreenSize();
	mult = divf(mkf(Print_Screen[PS_X]), mkf(Print_Screen[PS_Y]));

	texSizeX = currDam<<BLOODSPLAT_DAM;
	if(texSizeX > 6144) { texSizeX = 6144; };

		texSizeY = roundf(mulf(mkf(texSizeX), mult));

	// Norm. Treffer
	x = (PS_VMax + 1) /100 * 60;
	x_end = (PS_VMax + 1) /100 * 70;
	y = (1024 -(texSizeY>>1))/100*15;
	y_start = (1024 -(texSizeY>>1))/100*10;
	ptr = View_Create(x, (texSizeY/100)*15, x_end, (texSizeY/100)*25);

	var int s; s = SB_New();
	
	SB ("BLOODSPLAT");
	SBi(r_Max(BLOODSPLAT_TEX));
	SB (".TGA");

	View_SetTexture(ptr, "BLOODSPLAT1.tga");
	
	SB_Destroy();
	View_AddText(ptr, (PS_VMax + 1)/100*25,(texSizeY/100)*10, "Otrzymano przedmiot", PF_Font);
    View_Open(ptr);



	var int a8; a8 = Anim8_NewExt(255, _Bloodsplat_Handler, ptr, false);
	Anim8_RemoveIfEmpty(a8, true);
	Anim8_RemoveDataIfEmpty(a8, true);
	
	Anim8 (a8, 255,  300, A8_Wait);
	Anim8q(a8,   0, 2000, A8_SlowStart);
};