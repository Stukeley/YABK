
func int b_hasupgradeweapons()
{
	if(LAGER == 1)
	{
		if(((L1_USED_WEAPON == 1) && (Npc_HasItems(hero,itmw_sword_pal) >= 3)) || ((L1_USED_WEAPON == 2) && (Npc_HasItems(hero,itmw_langschwert_pal) >= 3)) || ((L1_USED_WEAPON == 3) && (Npc_HasItems(hero,itmw_elbastardo_pal) >= 3)))
		{
			return TRUE;
		};
	}
	else if(LAGER == 2)
	{
		if(((L2_USED_WEAPON == 1) && (Npc_HasItems(hero,itmw_sword_djg) >= 3)) || ((L2_USED_WEAPON == 2) && (Npc_HasItems(hero,itmw_langschwert_djg) >= 3)) || ((L2_USED_WEAPON == 3) && (Npc_HasItems(hero,itmw_elbastardo_djg) >= 3)))
		{
			return TRUE;
		};
	};
	return FALSE;
};

func int b_hasupgradearmors()
{
	if(LAGER == 1)
	{
		if((FRAKTION_L1 == PAL) && (((L1_USED_ARMOR == 1) && (Npc_HasItems(hero,ItAr_MIL_M) >= 3)) || ((L1_USED_ARMOR == 2) && (Npc_HasItems(hero,ItAr_PAL_M) >= 3)) || ((L1_USED_ARMOR == 3) && (Npc_HasItems(hero,ItAr_PAl_H) >= 3))))
		{
			return TRUE;
		};
		if((FRAKTION_L1 == SKE) && (((L1_USED_ARMOR == 1) && (Npc_HasItems(hero,itar_skemil_m) >= 3)) || ((L1_USED_ARMOR == 2) && (Npc_HasItems(hero,itar_skepal_m) >= 3)) || ((L1_USED_ARMOR == 3) && (Npc_HasItems(hero,itar_skepal_h) >= 3))))
		{
			return TRUE;
		};
		if((FRAKTION_L1 == DJG) && (((L1_USED_ARMOR == 1) && (Npc_HasItems(hero,itar_sld_M) >= 3)) || ((L1_USED_ARMOR == 2) && (Npc_HasItems(hero,itar_djg_l) >= 3)) || ((L1_USED_ARMOR == 3) && (Npc_HasItems(hero,itar_djg_h) >= 3))))
		{
			return TRUE;
		};
		if((FRAKTION_L1 == TMP) && (((L1_USED_ARMOR == 1) && (Npc_HasItems(hero,itar_tmp_l) >= 3)) || ((L1_USED_ARMOR == 2) && (Npc_HasItems(hero,itar_tmp_m) >= 3)) || ((L1_USED_ARMOR == 3) && (Npc_HasItems(hero,itar_tmp_h) >= 3))))
		{
			return TRUE;
		};
	};
	if(LAGER == 2)
	{
		if((FRAKTION_L2 == PAL) && (((L2_USED_ARMOR == 1) && (Npc_HasItems(hero,ItAr_MIL_M) >= 3)) || ((L2_USED_ARMOR == 2) && (Npc_HasItems(hero,ItAr_PAL_M) >= 3)) || ((L2_USED_ARMOR == 3) && (Npc_HasItems(hero,ItAr_PAl_H) >= 3))))
		{
			return TRUE;
		};
		if((FRAKTION_L2 == SKE) && (((L2_USED_ARMOR == 1) && (Npc_HasItems(hero,itar_skemil_m) >= 3)) || ((L2_USED_ARMOR == 2) && (Npc_HasItems(hero,itar_skepal_m) >= 3)) || ((L2_USED_ARMOR == 3) && (Npc_HasItems(hero,itar_skepal_h) >= 3))))
		{
			return TRUE;
		};
		if((FRAKTION_L2 == DJG) && (((L2_USED_ARMOR == 1) && (Npc_HasItems(hero,itar_sld_M) >= 3)) || ((L2_USED_ARMOR == 2) && (Npc_HasItems(hero,itar_djg_l) >= 3)) || ((L2_USED_ARMOR == 3) && (Npc_HasItems(hero,itar_djg_h) >= 3))))
		{
			return TRUE;
		};
		if((FRAKTION_L2 == TMP) && (((L2_USED_ARMOR == 1) && (Npc_HasItems(hero,itar_tmp_l) >= 3)) || ((L2_USED_ARMOR == 2) && (Npc_HasItems(hero,itar_tmp_m) >= 3)) || ((L2_USED_ARMOR == 3) && (Npc_HasItems(hero,itar_tmp_h) >= 3))))
		{
			return TRUE;
		};
	};
	return FALSE;
};

