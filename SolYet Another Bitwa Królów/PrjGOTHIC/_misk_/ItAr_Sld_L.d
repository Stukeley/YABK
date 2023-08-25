
const int BOTK_ARMOR_01 = 45;
const int BOTK_ARMOR_02 = 80;
const int BOTK_ARMOR_03 = 115;
const int BOTK_ARMOR_04 = 150;

instance ItAr_Sld_L(C_Item)
{
	name = name_itar_sld_l;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_01;
	protection[PROT_BLUNT] = BOTK_ARMOR_01;
	protection[PROT_POINT] = BOTK_ARMOR_01;
	protection[PROT_FIRE] = BOTK_ARMOR_01;
	protection[PROT_MAGIC] = BOTK_ARMOR_01;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_Sld_L.3ds";
	visual_change = "Armor_Sld_L.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_Mil_L(C_Item)
{
	name = name_itar_mil_l;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_01;
	protection[PROT_BLUNT] = BOTK_ARMOR_01;
	protection[PROT_POINT] = BOTK_ARMOR_01;
	protection[PROT_FIRE] = BOTK_ARMOR_01;
	protection[PROT_MAGIC] = BOTK_ARMOR_01;
	value = 1400;
	wear = WEAR_TORSO;
	visual = "ItAr_MIL_L.3DS";
	visual_change = "Armor_Mil_L.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_SNOV_L(C_Item)
{
	name = name_itar_snov_l;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_01;
	protection[PROT_BLUNT] = BOTK_ARMOR_01;
	protection[PROT_POINT] = BOTK_ARMOR_01;
	protection[PROT_FIRE] = BOTK_ARMOR_01;
	protection[PROT_MAGIC] = BOTK_ARMOR_01;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_Mil_L.3DS";
	visual_change = "Hum_NovM_Armor.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_SKEMIL_L(C_Item)
{
	name = NAME_ITAR_MIL_L;
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_01;
	protection[PROT_BLUNT] = BOTK_ARMOR_01;
	protection[PROT_POINT] = BOTK_ARMOR_01;
	protection[PROT_FIRE] = BOTK_ARMOR_01;
	protection[PROT_MAGIC] = BOTK_ARMOR_01;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_MIL_L.3DS";
	visual_change = "Armor_Mil_L.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance itar_sld_M(C_Item)
{
	name = name_itar_sld_m;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_02;
	protection[PROT_BLUNT] = BOTK_ARMOR_02;
	protection[PROT_POINT] = BOTK_ARMOR_02;
	protection[PROT_FIRE] = BOTK_ARMOR_02;
	protection[PROT_MAGIC] = BOTK_ARMOR_02;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_Sld_M.3ds";
	visual_change = "Armor_Sld_M.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItAr_MIL_M(C_Item)
{
	name = name_itar_mil_m;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_02;
	protection[PROT_BLUNT] = BOTK_ARMOR_02;
	protection[PROT_POINT] = BOTK_ARMOR_02;
	protection[PROT_FIRE] = BOTK_ARMOR_02;
	protection[PROT_MAGIC] = BOTK_ARMOR_02;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_MIL_M.3DS";
	visual_change = "Armor_MIL_M.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_TMP_L(C_Item)
{
	name = name_itar_tmp_l;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_02;
	protection[PROT_BLUNT] = BOTK_ARMOR_02;
	protection[PROT_POINT] = BOTK_ARMOR_02;
	protection[PROT_FIRE] = BOTK_ARMOR_02;
	protection[PROT_MAGIC] = BOTK_ARMOR_02;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "TPLL.3DS";
	visual_change = "Hum_TplL_Armor.asc";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_SKEMIL_M(C_Item)
{
	name = NAME_ITAR_MIL_M;
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_02;
	protection[PROT_BLUNT] = BOTK_ARMOR_02;
	protection[PROT_POINT] = BOTK_ARMOR_02;
	protection[PROT_FIRE] = BOTK_ARMOR_02;
	protection[PROT_MAGIC] = BOTK_ARMOR_02;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_MIL_M.3DS";
	visual_change = "Armor_MIL_M.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_DJG_L(C_Item)
{
	name = name_itar_djg_l;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_03;
	protection[PROT_BLUNT] = BOTK_ARMOR_03;
	protection[PROT_POINT] = BOTK_ARMOR_03;
	protection[PROT_FIRE] = BOTK_ARMOR_03;
	protection[PROT_MAGIC] = BOTK_ARMOR_03;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_Djg_L.3ds";
	visual_change = "Armor_Djg_L.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItAr_PAL_M(C_Item)
{
	name = name_itar_pal_m;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_03;
	protection[PROT_BLUNT] = BOTK_ARMOR_03;
	protection[PROT_POINT] = BOTK_ARMOR_03;
	protection[PROT_FIRE] = BOTK_ARMOR_03;
	protection[PROT_MAGIC] = BOTK_ARMOR_03;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_Pal_M.3ds";
	visual_change = "Armor_Pal_M.asc";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_TMP_M(C_Item)
{
	name = name_itar_tmp_m;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_03;
	protection[PROT_BLUNT] = BOTK_ARMOR_03;
	protection[PROT_POINT] = BOTK_ARMOR_03;
	protection[PROT_FIRE] = BOTK_ARMOR_03;
	protection[PROT_MAGIC] = BOTK_ARMOR_03;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "TPLM.3ds";
	visual_change = "HUM_TPLM_ARMOR.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_SKEPAL_M(C_Item)
{
	name = NAME_ITAR_PAL_M;
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_03;
	protection[PROT_BLUNT] = BOTK_ARMOR_03;
	protection[PROT_POINT] = BOTK_ARMOR_03;
	protection[PROT_FIRE] = BOTK_ARMOR_03;
	protection[PROT_MAGIC] = BOTK_ARMOR_03;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_Pal_M.3ds";
	visual_change = "Armor_Pal_M.asc";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_DJG_H(C_Item)
{
	name = name_itar_djg_h;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_04;
	protection[PROT_BLUNT] = BOTK_ARMOR_04;
	protection[PROT_POINT] = BOTK_ARMOR_04;
	protection[PROT_FIRE] = BOTK_ARMOR_04;
	protection[PROT_MAGIC] = BOTK_ARMOR_04;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_Djg_H.3ds";
	visual_change = "Armor_Djg_H.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItAr_PAl_H(C_Item)
{
	name = name_itar_pal_h;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_04;
	protection[PROT_BLUNT] = BOTK_ARMOR_04;
	protection[PROT_POINT] = BOTK_ARMOR_04;
	protection[PROT_FIRE] = BOTK_ARMOR_04;
	protection[PROT_MAGIC] = BOTK_ARMOR_04;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_Pal_H.3ds";
	visual_change = "Armor_Pal_H.asc";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_TMP_H(C_Item)
{
	name = name_itar_tmp_h;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_04;
	protection[PROT_BLUNT] = BOTK_ARMOR_04;
	protection[PROT_POINT] = BOTK_ARMOR_04;
	protection[PROT_FIRE] = BOTK_ARMOR_04;
	protection[PROT_MAGIC] = BOTK_ARMOR_04;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_CorAngar.3ds";
	visual_change = "Hum_TplS_Armor.asc";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_SKEPAL_H(C_Item)
{
	name = NAME_ITAR_PAL_H;
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_04;
	protection[PROT_BLUNT] = BOTK_ARMOR_04;
	protection[PROT_POINT] = BOTK_ARMOR_04;
	protection[PROT_FIRE] = BOTK_ARMOR_04;
	protection[PROT_MAGIC] = BOTK_ARMOR_04;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_Pal_H.3ds";
	visual_change = "Armor_Pal_H.asc";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItAr_KDF_L(C_Item)
{
	name = "Szata Maga Ognia";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_KdF_H.3ds";
	visual_change = "Armor_Kdf_H.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = Equip_ITAR_KDF_H;
	on_unequip = UnEquip_ITAR_KDF_H;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItAr_KDF_H(C_Item)
{
	name = "Szata Maga Ognia";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = 1500;
	wear = WEAR_TORSO;
	visual = "ItAr_KdF_H.3ds";
	visual_change = "Armor_Kdf_H.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = Equip_ITAR_KDF_H;
	on_unequip = UnEquip_ITAR_KDF_H;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


func void Equip_ITAR_KDF_H()
{
	if(Npc_IsPlayer(self))
	{
		KDFArmor_Equipped = TRUE;
		if(KDF01_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
	};
};

func void UnEquip_ITAR_KDF_H()
{
	if(Npc_IsPlayer(self))
	{
		KDFArmor_Equipped = FALSE;
		if(KDF01_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
	};
};


instance ITAR_KDW_H(C_Item)
{
	name = "Szata Maga Wody";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = 1;
	wear = WEAR_TORSO;
	visual = "ItAr_KdW_H.3ds";
	visual_change = "Armor_KdW_H.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_GUR_H(C_Item)
{
	name = "Szata Guru";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = 1;
	wear = WEAR_TORSO;
	visual = "ItAr_KDW_H.3ds";
	visual_change = "Hum_GurS_Armor.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

instance ITAR_GUR_L(C_Item)
{
	name = "Szata Guru";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = 1;
	wear = WEAR_TORSO;
	visual = "ItAr_KDW_H.3ds";
	visual_change = "Hum_GurS_Armor.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

