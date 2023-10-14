
instance ItMw_1H_Dummy_Pal_1(C_Item)
{
	name = "Gniew Innosa";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD | ITEM_MISSION;
	material = MAT_METAL;
	value = Value_Blessed_1H_3;
	damageTotal = Damage_Blessed_1H_3;
	damagetype = DAM_EDGE;
	range = Range_Blessed_1H_3;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMw_2H_Dummy_Pal_1(C_Item)
{
	name = "Œwiêty Kat";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = Value_Blessed_2H_3;
	damageTotal = Damage_Blessed_2H_3;
	damagetype = DAM_EDGE;
	range = Range_Blessed_2H_3;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_032_2h_sword_light_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};
instance ItMw_2H_Dummy_TMP_1(C_Item)
{
	name = "Lekki miecz dwurêczny";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = Value_Zweihaender1;
	damageTotal = Damage_Zweihaender1;
	damagetype = DAM_EDGE;
	range = Range_Zweihaender1;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_032_2h_sword_light_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};
instance ItMw_2H_Dummy_SLD_1(C_Item)
{
	name = "Lekki miecz dwurêczny";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = Value_Zweihaender1;
	damageTotal = Damage_Zweihaender1;
	damagetype = DAM_EDGE;
	range = Range_Zweihaender1;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "itMw_080_2h_sword_heavy_04.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMw_2H_Skeleton_1(C_Item)
{
	name = "Œwiêty Kat";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = Value_Blessed_2H_3;
	damageTotal = 65;
	damagetype = DAM_EDGE;
	range = Range_Blessed_2H_3;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_025_2h_Sword_old_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

prototype King_Weapon (C_Item)
{
	name = "Broñ Króla";
	mainflag = ITEM_KAT_NF;
	material = MAT_METAL;
	value = Value_Special_2H_4;
	damageTotal = Damage_Special_2H_4;
	damagetype = DAM_EDGE;
	range = Range_Special_2H_4;
	on_equip = Equip_2H_10;
	on_unequip = UnEquip_2H_10;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_Special_2H_4;
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_BONUS_2H;
	count[4] = Waffenbonus_10;
	text[5] = NAME_Value;
	count[5] = value;

};

instance Itmw_King_Weapon_Pal (King_Weapon)
{
	flags = ITEM_2HD_SWD;
	visual = "ItMw_040_2h_PAL_sword_heavy_RAW_01.3DS";
};
instance Itmw_King_Weapon_Djg (King_Weapon)
{
	flags = ITEM_2HD_SWD;
	visual = "ItMw_060_2h_axe_heavy_01.3DS";
};
instance Itmw_King_Weapon_SKE (King_Weapon)
{
	flags = ITEM_2HD_SWD;
	visual = "ItMw_090_2h_sword_smith_04.3DS";
};
instance Itmw_King_Weapon_TMP (King_Weapon)
{
	flags = ITEM_2HD_SWD;
	visual = "ItMw_068_2h_sword_02.3DS";
};
instance Itmw_King_Weapon_ORC (King_Weapon)
{
	flags = ITEM_2HD_SWD;
	visual = "ItMw_2H_OrcSword_02.3DS";
};
instance Itmw_King_Weapon_PCH (King_Weapon)
{
	flags = ITEM_2HD_SWD;
	visual = "ItMw_075_2h_sword_heavy_03.3DS";
};
instance ItMw_King_Weapon_BST(C_Item)
{
	name = "El Bastardo";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_METAL;
	value = Value_Special_1H_4;
	damageTotal = Damage_Special_1H_4;
	damagetype = DAM_EDGE;
	range = Range_ElBastardo;
	on_equip = Equip_1H_08;
	on_unequip = UnEquip_1H_08;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = Condition_ElBastardo;
	visual = "ItMw_065_1h_sword_bastard_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_BONUS_1H;
	count[4] = Waffenbonus_08;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMw_1H_Dummy_Spear(C_Item)
{
	name = "Gniew Innosa";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = Value_Blessed_1H_3;
	damageTotal = Damage_Blessed_1H_3;
	damagetype = DAM_EDGE;
	range = Range_Blessed_1H_3;
	on_equip = Equip_Yabk_Anim_Test;
	on_unequip = UnEquip_Yabk_Anim_Test;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

func void Equip_Yabk_Anim_Test()
{
			Mdl_ApplyOverlayMds(self,"HUMANS_SPEER.mds");
};

func void UnEquip_Yabk_Anim_Test()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-0);
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-0);
};

instance ItMw_1H_Dummy_Szpada(C_Item)
{
	name = "Gniew Innosa";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_METAL;
	value = Value_Blessed_1H_3;
	damageTotal = Damage_Blessed_1H_3;
	damagetype = DAM_EDGE;
	range = Range_Blessed_1H_3;
	on_equip = Equip_Yabk_Anim_Test_2;
	on_unequip = UnEquip_Yabk_Anim_Test_2;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

func void Equip_Yabk_Anim_Test_2()
{
			Mdl_ApplyOverlayMds(self,"HUMANS_RAPIER_ST2.mds");
};

func void UnEquip_Yabk_Anim_Test_2()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-0);
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-0);
};

instance ItMw_1H_Dummy_Orc(C_Item)
{
	name = "Gniew Innosa";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_METAL;
	value = Value_Blessed_1H_3;
	damageTotal = Damage_Blessed_1H_3;
	damagetype = DAM_EDGE;
	range = Range_Blessed_1H_3;
	on_equip = Equip_Yabk_Anim_Test_4;
	on_unequip = UnEquip_Yabk_Anim_Test_4;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

func void Equip_Yabk_Anim_Test_4()
{
			Mdl_ApplyOverlayMds(self,"HUMANS_2H_B_ST1.mds");
};

func void UnEquip_Yabk_Anim_Test_4()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-0);
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-0);
};


instance ItMw_1H_Dummy_ORCWEAPON(C_Item)
{
	name = "Gniew Innosa";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = Value_Blessed_1H_3;
	damageTotal = Damage_Blessed_1H_3;
	damagetype = DAM_EDGE;
	range = Range_Blessed_1H_3;
	on_equip = Equip_Yabk_Anim_Testt;
	on_unequip = UnEquip_Yabk_Anim_Testt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_030_1h_PAL_sword_bastard_RAW_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

func void Equip_Yabk_Anim_Testt()
{
			Mdl_ApplyOverlayMds(self,"HUMANS_2HST3.mds");
};

func void UnEquip_Yabk_Anim_Testt()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-0);
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-0);
};
