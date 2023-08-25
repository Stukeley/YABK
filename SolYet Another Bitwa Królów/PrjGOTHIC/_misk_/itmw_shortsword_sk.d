
const int BOTK_WEAPON_01 = 45;
const int BOTK_WEAPON_02 = 80;
const int BOTK_WEAPON_03 = 115;
const int BOTK_WEAPON_04 = 150;

instance ITMW_SHORTSWORD_SK(C_Item)
{
	name = name_itmw_shortsword_sk;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = Value_ShortSword3;
	damageTotal = BOTK_WEAPON_01;
	damagetype = DAM_EDGE;
	range = Range_ShortSword3;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_016_1h_Sword_short_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_SHORTSWORD_DJG(C_Item)
{
	name = name_itmw_shortsword_djg;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = Value_ShortSword3;
	damageTotal = BOTK_WEAPON_01;
	damagetype = DAM_EDGE;
	range = Range_ShortSword3;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_016_1h_Sword_short_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_SHORTSWORD_PAL(C_Item)
{
	name = name_itmw_shortsword_pal;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = Value_ShortSword3;
	damageTotal = BOTK_WEAPON_01;
	damagetype = DAM_EDGE;
	range = Range_ShortSword3;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_016_1h_Sword_short_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_SWORD_SK(C_Item)
{
	name = name_itmw_sword_sk;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = Value_Common1;
	damageTotal = BOTK_WEAPON_02;
	damagetype = DAM_EDGE;
	range = Range_Common1;
	on_equip = Equip_1H_05;
	on_unequip = UnEquip_1H_05;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_030_1h_Common_Sword_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_BONUS_1H;
	count[4] = Waffenbonus_05;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_SWORD_DJG(C_Item)
{
	name = name_itmw_sword_djg;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = Value_Common1;
	damageTotal = BOTK_WEAPON_02;
	damagetype = DAM_EDGE;
	range = Range_Common1;
	on_equip = Equip_1H_05;
	on_unequip = UnEquip_1H_05;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_030_1h_Common_Sword_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_BONUS_1H;
	count[4] = Waffenbonus_05;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_SWORD_PAL(C_Item)
{
	name = name_itmw_sword_pal;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = Value_Common1;
	damageTotal = BOTK_WEAPON_02;
	damagetype = DAM_EDGE;
	range = Range_Common1;
	on_equip = Equip_1H_05;
	on_unequip = UnEquip_1H_05;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_030_1h_Common_Sword_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_ADDON_BONUS_1H;
	count[4] = Waffenbonus_05;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_LANGSCHWERT_SK(C_Item)
{
	name = name_itmw_langschwert_sk;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = Value_Schwert2;
	damageTotal = BOTK_WEAPON_03;
	damagetype = DAM_EDGE;
	range = Range_Schwert2;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_037_1h_sword_long_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_LANGSCHWERT_DJG(C_Item)
{
	name = name_itmw_langschwert_djg;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = Value_Schwert2;
	damageTotal = BOTK_WEAPON_03;
	damagetype = DAM_EDGE;
	range = Range_Schwert2;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_037_1h_sword_long_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_LANGSCHWERT_PAL(C_Item)
{
	name = name_itmw_langschwert_pal;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SWD;
	material = MAT_METAL;
	value = Value_Schwert2;
	damageTotal = BOTK_WEAPON_03;
	damagetype = DAM_EDGE;
	range = Range_Schwert2;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_037_1h_sword_long_02.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_OneHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_ELBASTARDO_SK(C_Item)
{
	name = name_itmw_elbastardo_sk;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_METAL;
	value = Value_ElBastardo;
	damageTotal = BOTK_WEAPON_04;
	damagetype = DAM_EDGE;
	range = Range_ElBastardo;
	on_equip = Equip_1H_08;
	on_unequip = UnEquip_1H_08;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
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

instance ITMW_ELBASTARDO_DJG(C_Item)
{
	name = name_itmw_elbastardo_djg;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_METAL;
	value = Value_ElBastardo;
	damageTotal = BOTK_WEAPON_04;
	damagetype = DAM_EDGE;
	range = Range_ElBastardo;
	on_equip = Equip_1H_08;
	on_unequip = UnEquip_1H_08;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
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

instance ITMW_ELBASTARDO_PAL(C_Item)
{
	name = name_itmw_elbastardo_pal;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_AXE;
	material = MAT_METAL;
	value = Value_ElBastardo;
	damageTotal = BOTK_WEAPON_04;
	damagetype = DAM_EDGE;
	range = Range_ElBastardo;
	on_equip = Equip_1H_08;
	on_unequip = UnEquip_1H_08;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
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

instance ITMW_HERO_4(C_Item)
{
	name = name_itmw_hero_4;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = 0;
	damageTotal = 190;
	damagetype = DAM_EDGE;
	range = Range_Drachenschneide;
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

instance ITMW_HERO_3(C_Item)
{
	name = name_itmw_hero_3;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = 0;
	damageTotal = 150;
	damagetype = DAM_EDGE;
	range = Range_Sturmbringer;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_075_2h_sword_heavy_03.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_HERO_2(C_Item)
{
	name = name_itmw_hero_2;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = 0;
	damageTotal = 105;
	damagetype = DAM_EDGE;
	range = Range_Zweihaender2;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_055_2h_sword_light_05.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITMW_HERO_1(C_Item)
{
	name = name_itmw_hero_1;
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = 0;
	damageTotal = 60;
	damagetype = DAM_EDGE;
	range = Range_Sld2hSchwert;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	visual = "ItMw_035_2h_sld_sword_01.3DS";
	description = name;
	text[2] = NAME_Damage;
	count[2] = damageTotal;
	text[3] = NAME_Str_needed;
	count[3] = cond_value[2];
	text[4] = NAME_TwoHanded;
	text[5] = NAME_Value;
	count[5] = value;
};

