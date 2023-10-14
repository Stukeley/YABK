
const int BOTK_ARMOR_01 = 45;
const int BOTK_ARMOR_02 = 80;
const int BOTK_ARMOR_03 = 115;
const int BOTK_ARMOR_04 = 150;
const int BOTK_MAGE_01 = 20;
const int BOTK_MAGE_02 = 35;
const int BOTK_MAGE_03 = 70;
const int BOTK_MAGE_04 = 85;
const int BOTK_MAGE_05 = 100;


//Prototypy pancerzy
prototype Botk_Armor_1 (C_Item)
{
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_01;
	protection[PROT_BLUNT] = BOTK_ARMOR_01;
	protection[PROT_POINT] = BOTK_ARMOR_01;
	protection[PROT_FIRE] = BOTK_ARMOR_01;
	protection[PROT_MAGIC] = BOTK_ARMOR_01;
	value = 1500;
	wear = WEAR_TORSO;
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

prototype Botk_Armor_2 (C_Item)
{
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_02;
	protection[PROT_BLUNT] = BOTK_ARMOR_02;
	protection[PROT_POINT] = BOTK_ARMOR_02;
	protection[PROT_FIRE] = BOTK_ARMOR_02;
	protection[PROT_MAGIC] = BOTK_ARMOR_02;
	value = 1500;
	wear = WEAR_TORSO;
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

prototype Botk_Armor_3 (C_Item)
{
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_03;
	protection[PROT_BLUNT] = BOTK_ARMOR_03;
	protection[PROT_POINT] = BOTK_ARMOR_03;
	protection[PROT_FIRE] = BOTK_ARMOR_03;
	protection[PROT_MAGIC] = BOTK_ARMOR_03;
	value = 1500;
	wear = WEAR_TORSO;
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


prototype Botk_Armor_4 (C_Item)
{
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_ARMOR_04;
	protection[PROT_BLUNT] = BOTK_ARMOR_04;
	protection[PROT_POINT] = BOTK_ARMOR_04;
	protection[PROT_FIRE] = BOTK_ARMOR_04;
	protection[PROT_MAGIC] = BOTK_ARMOR_04;
	value = 1500;
	wear = WEAR_TORSO;
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

// Pancerze poziomu 1
instance ItAr_Sld_L (Botk_Armor_1)
{
	name = "Lekki pancerz szkodnika";
	visual = "ItAr_Sld_L.3ds";
	visual_change = "Armor_Sld_L.asc";
};

instance ITAR_Mil_L(Botk_Armor_1)
{
	name = "Lekki pancerz stra¿y";
	visual = "ItAr_MIL_L.3DS";
	visual_change = "Armor_Mil_L.asc";

};

instance ITAR_SNOV_L(Botk_Armor_1)
{
	name = "Lekki pancerz nowicjusza";
	visual = "ItAr_Mil_L.3DS";
	visual_change = "Hum_NovM_Armor.asc";

};

instance ITAR_SKEMIL_L(Botk_Armor_1)
{
	name = "Lekki pancerz szkieleta";
	visual = "ItAr_MIL_L.3DS";
	visual_change = "ITAR_SKEL_WAR.asc";

};

instance ITAR_OldCamp_1 (Botk_Armor_1)
{
	name = "Pancerz cenia";
	visual = "ITAR_DIEGO.3DS";
	visual_change = "Armor_Diego.ASC";
};






// Pancerze poziomu 2
instance itar_sld_M(Botk_Armor_2)
{
	name = "Pancerz szkodnika";
	visual = "ItAr_Sld_M.3ds";
	visual_change = "HUM_ORGM_ARMOR.asc";

};

instance ItAr_MIL_M(Botk_Armor_2)
{
	name = "Ciê¿ki pancerz stra¿nika";
	visual = "ItAr_MIL_M.3DS";
	visual_change = "Armor_MIL_M.asc";

};

instance ITAR_TMP_L(Botk_Armor_2)
{
	name = "Lekki pancerz stra¿nika";
	visual = "TPLL.3DS";
	visual_change = "Hum_TplL_Armor.asc";

};

instance ITAR_SKEMIL_M(Botk_Armor_2)
{
	name = "Pancerz szkieleta";

	visual = "ItAr_MIL_M.3DS";
	visual_change = "ARMOR_SKEL_DARK.asc";

};
instance Itar_OldCamp_2 (Botk_Armor_2)
{
	name = "Pancerz stra¿nika";
	visual = "ITAR_DIEGO.3DS";
	visual_change = "Armor_Bloodwyn_ADDON.asc";
};





// Pancerze poziomu 3
instance ITAR_DJG_L(Botk_Armor_3)
{
	name = "Pancerz najemnika";
	visual = "ItAr_Djg_L.3ds";
	visual_change = "Hum_SldM_Armor.asc";
};

instance ItAr_PAL_M(Botk_Armor_3)
{
	name = "Lekki pancerz paladyna";
	visual = "ItAr_Pal_M.3ds";
	visual_change = "Armor_Pal_M_2.asc";
};

instance ITAR_TMP_M(Botk_Armor_3)
{
	name = "Pancerz stra¿nika";
	visual = "TPLM.3ds";
	visual_change = "Hum_TplS_Armor.asc";
	count[5] = value;
};

instance ITAR_SKEPAL_M(Botk_Armor_3)
{
	name = "Ciê¿ki pancerz szkieleta";
	visual = "ItAr_Pal_M.3ds";
	visual_change = "ARMOR_BM_SKE.asc";
};

instance Itar_OldCamp_3 (Botk_Armor_3)
{
	name = "Ciê¿ki pancerz stra¿nika";
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "Armor_Thorus_ADDON.asc";
};
// Pancerze poziomu 4
instance ITAR_DJG_H(Botk_Armor_4)
{
	name = "Ciê¿ki pancerz najemnika";
	visual = "Armor_Sld_H.3ds";
	visual_change = "Armor_Sld_H.asc";
};

instance ItAr_PAl_H(Botk_Armor_4)
{
	name = "Ciê¿ki pancerz paladyna";
	visual = "ItAr_Pal_H.3ds";
	visual_change = "Armor_Pal_H_2.asc";
};

instance ITAR_TMP_H(Botk_Armor_4)
{
	name = "Ciê¿ki pancerz stra¿nika";
	visual = "ItAr_CorAngar.3ds";
	visual_change = "ARMOR_TEMPLAR_HV1.asc";
};

instance ITAR_SKEPAL_H(Botk_Armor_4)
{
	name = "Pancerz Pana Cienia";
	visual = "ItAr_Pal_H.3ds";
	visual_change = "ARMOR_DRAMTHAR.asc";

};
instance Itar_OldCamp_4(Botk_Armor_4)
{
	name = "Pancerz Magnata";
	visual = "ItAr_Thorus_ADDON.3ds";
	visual_change = "super_zbr_magnat2.asc";
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


instance ItAr_KDF_L2(C_Item)
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
	visual_change = "Hum_KdfL_Armor.asc";
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

instance ItSe_YABK_ARMOR_Guilds(C_Item)
{
	name = "Skradzione Pancerze";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 25;
	visual = "goldsack_open.3DS";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	on_state[0] = Use_YabkArmorGuilds;
	description = name;
	text[2] = "Wszystko ukradÅ‚em, co do jednego.";
};


func void Use_YabkArmorGuilds()
{
	B_PlayerFindItem(ItAr_Sld_L,1);
	B_PlayerFindItem(ITAR_Mil_L,1);
	B_PlayerFindItem(ITAR_SNOV_L,1);
	B_PlayerFindItem(ITAR_SKEMIL_L,1);
	B_PlayerFindItem(ITAR_OldCamp_1,1);
	B_PlayerFindItem(itar_sld_M,1);
	B_PlayerFindItem(ItAr_MIL_M,1);
	B_PlayerFindItem(ITAR_TMP_L,1);
	B_PlayerFindItem(ITAR_SKEMIL_M,1);
	B_PlayerFindItem(Itar_OldCamp_2,1);
	B_PlayerFindItem(ITAR_DJG_L,1);
	B_PlayerFindItem(ItAr_PAL_M,1);
	B_PlayerFindItem(ITAR_TMP_M,1);
	B_PlayerFindItem(ITAR_SKEPAL_M,1);
	B_PlayerFindItem(Itar_OldCamp_3,1);
	B_PlayerFindItem(ITAR_DJG_H,1);
	B_PlayerFindItem(ItAr_PAl_H,1);
	B_PlayerFindItem(ITAR_TMP_H,1);
	B_PlayerFindItem(ITAR_SKEPAL_H,1);
	B_PlayerFindItem(Itar_OldCamp_4,1);

};

prototype ItAr_Mages_Armor_1 (C_Item)
{
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_MAGE_01;
	protection[PROT_BLUNT] = BOTK_MAGE_01;
	protection[PROT_POINT] = BOTK_MAGE_01;
	protection[PROT_FIRE] = BOTK_MAGE_01;
	protection[PROT_MAGIC] = BOTK_MAGE_01;
	value = 1500;
	wear = WEAR_TORSO;
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
prototype ItAr_Mages_Armor_2 (C_Item)
{
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_MAGE_02;
	protection[PROT_BLUNT] = BOTK_MAGE_02;
	protection[PROT_POINT] = BOTK_MAGE_02;
	protection[PROT_FIRE] = BOTK_MAGE_02;
	protection[PROT_MAGIC] = BOTK_MAGE_02;
	value = 1500;
	wear = WEAR_TORSO;
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
prototype ItAr_Mages_Armor_3 (C_Item)
{
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_MAGE_03;
	protection[PROT_BLUNT] = BOTK_MAGE_03;
	protection[PROT_POINT] = BOTK_MAGE_03;
	protection[PROT_FIRE] = BOTK_MAGE_03;
	protection[PROT_MAGIC] = BOTK_MAGE_03;
	value = 1500;
	wear = WEAR_TORSO;
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
prototype ItAr_Mages_Armor_4 (C_Item)
{
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_MAGE_04;
	protection[PROT_BLUNT] = BOTK_MAGE_04;
	protection[PROT_POINT] = BOTK_MAGE_04;
	protection[PROT_FIRE] = BOTK_MAGE_04;
	protection[PROT_MAGIC] = BOTK_MAGE_04;
	value = 1500;
	wear = WEAR_TORSO;
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
prototype ItAr_Mages_Armor_5 (C_Item)
{
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = BOTK_MAGE_05;
	protection[PROT_BLUNT] = BOTK_MAGE_05;
	protection[PROT_POINT] = BOTK_MAGE_05;
	protection[PROT_FIRE] = BOTK_MAGE_05;
	protection[PROT_MAGIC] = BOTK_MAGE_05;
	value = 1500;
	wear = WEAR_TORSO;
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



instance Itar_Mages_Fire_1 (ItAr_Mages_Armor_1)
{
	name = "Szata Nowicjusza";
	visual = "ItAr_Nov_L.3ds";
	visual_change = "Armor_Nov_L.asc";
}; 
instance Itar_Mages_Water_1 (ItAr_Mages_Armor_1)
{
	name = "Szata Nowicjusza";
	visual = "NovAdanosM.3ds";
	visual_change = "Hum_NovMage_Adanos.asc";
}; 
instance Itar_Mages_Dark_1 (ItAr_Mages_Armor_1)
{
	name = "Szata Nowicjusza";
	visual = "Nowicjusz_M_DARK.3ds";
	visual_change = "Nowicjusz_M_DARK.asc";
}; 
instance Itar_Mages_Swamp_1 (ItAr_Mages_Armor_1)
{
	name = "Szata Nowicjusza";
	visual = "ItAr_Lester.3ds";
	visual_change = "Hum_GurM_Armor.asc";
}; 
//Drugie szaty

instance Itar_Mages_Fire_2 (ItAr_Mages_Armor_2)
{
	name = "Ciê¿ka Szata Nowicjusza";
	visual = "ItAr_Nov_L.3ds";
	visual_change = "Armor_Mage_Fire_22.asc";
}; 
instance Itar_Mages_Water_2 (ItAr_Mages_Armor_2)
{
	name = "Ciê¿ka Szata Nowicjusza";
	visual = "NovAdanosM.3ds";
	visual_change = "Armor_Mage_Water_2.asc";
}; 
instance Itar_Mages_Dark_2 (ItAr_Mages_Armor_2)
{
	name = "Ciê¿ka Szata Nowicjusza";
	visual = "Nowicjusz_M_DARK.3ds";
	visual_change = "Armor_Mage_Dark_22.asc.asc";
}; 
instance Itar_Mages_Swamp_2 (ItAr_Mages_Armor_2)
{
	name = "Ciê¿ka Szata Nowicjusza";
	visual = "ItAr_Lester.3ds";
	visual_change = "Hum_GurS_Armor.asc";
}; 

//Trzecie Szaty
instance Itar_Mages_Fire_3 (ItAr_Mages_Armor_3)
{
	name = "Lekka Szata Maga";
	visual = "ItAr_Nov_L.3ds";
	visual_change = "Armor_FIREMAGE_L.asc";
}; 
instance Itar_Mages_Water_3 (ItAr_Mages_Armor_3)
{
	name = "Lekka Szata Maga";
	visual = "NovAdanosM.3ds";
	visual_change = "ARMOR_watermage_L.asc";
}; 
instance Itar_Mages_Dark_3 (ItAr_Mages_Armor_3)
{
	name = "Lekka Szata Maga";
	visual = "Nowicjusz_M_DARK.3ds";
	visual_change = "ARMOR_NECROMANCER.asc";
}; 
instance Itar_Mages_Swamp_3 (ItAr_Mages_Armor_3)
{
	name = "Lekka Szata Maga";
	visual = "ItAr_Lester.3ds";
	visual_change = "Bagno11.asc";
}; 

//Czwarte Szaty (Tutaj nieumarly sie zmienia w maga szkieleta)
instance Itar_Mages_Fire_4 (ItAr_Mages_Armor_4)
{
	name = "Szata Maga";
	visual = "ItAr_Nov_L.3ds";
	visual_change = "Armor_Mage_Fire_33_True.asc";
}; 
instance Itar_Mages_Water_4 (ItAr_Mages_Armor_4)
{
	name = "Szata Maga";
	visual = "NovAdanosM.3ds";
	visual_change = "Armor_Mage_Water_33.asc";
}; 
instance Itar_Mages_Dark_4 (ItAr_Mages_Armor_4)
{
	name = "Szata Maga";
	visual = "Nowicjusz_M_DARK.3ds";
	visual_change = "ARMOR_NECROMANCER.asc";
}; 
instance Itar_Mages_Swamp_4 (ItAr_Mages_Armor_4)
{
	name = "Szata Maga";
	visual = "ItAr_Lester.3ds";
	visual_change = "Bagno22.asc";
}; 
//Czwarte Szaty (Tutaj nieumarly sie zmienia w maga szkieleta)
instance Itar_Mages_Fire_5 (ItAr_Mages_Armor_5)
{
	name = "Ciê¿ka Szata Maga";
	visual = "ItAr_Nov_L.3ds";
	visual_change = "Armor_Mage_Fire_4.asc";
}; 
instance Itar_Mages_Water_5 (ItAr_Mages_Armor_5)
{
	name = "Ciê¿ka Szata Maga";
	visual = "NovAdanosM.3ds";
	visual_change = "Armor_Mage_Water_44.asc";
}; 
instance Itar_Mages_Dark_5 (ItAr_Mages_Armor_5)
{
	name = "Ciê¿ka Szata Maga";
	visual = "Nowicjusz_M_DARK.3ds";
	visual_change = "ARMOR_KDF_L_SKE.asc";
};

instance Itar_Mages_Swamp_5 (ItAr_Mages_Armor_5)
{
	name = "Ciê¿ka Szata Maga";
	visual = "ItAr_Lester.3ds";
	visual_change = "Bagno44.asc";
}; 















instance ItSe_YABK_ARMOR_Mages(C_Item)
{
	name = "Pancerze magów";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 25;
	visual = "goldsack_open.3DS";
	material = MAT_LEATHER;
	scemeName = "MAPSEALED";
	on_state[0] = Use_YabkArmorMages;
	description = name;
	text[2] = "Wszystko ukrad³em, co do jednego.";
};


func void Use_YabkArmorMages()
{
	B_PlayerFindItem(Itar_Mages_Fire_1,1);
	B_PlayerFindItem(Itar_Mages_Water_1,1);
	B_PlayerFindItem(Itar_Mages_Dark_1,1);
	B_PlayerFindItem(Itar_Mages_Swamp_1,1);

	B_PlayerFindItem(Itar_Mages_Fire_2,1);
	B_PlayerFindItem(Itar_Mages_Water_2,1);
	B_PlayerFindItem(Itar_Mages_Dark_2,1);
	B_PlayerFindItem(Itar_Mages_Swamp_2,1);

	B_PlayerFindItem(Itar_Mages_Fire_3,1);
	B_PlayerFindItem(Itar_Mages_Water_3,1);
	B_PlayerFindItem(Itar_Mages_Dark_3,1);
	B_PlayerFindItem(Itar_Mages_Swamp_3,1);

	B_PlayerFindItem(Itar_Mages_Fire_4,1);
	B_PlayerFindItem(Itar_Mages_Water_4,1);
	B_PlayerFindItem(Itar_Mages_Dark_3,1);
	B_PlayerFindItem(Itar_Mages_Swamp_4,1);

	B_PlayerFindItem(Itar_Mages_Fire_5,1);
	B_PlayerFindItem(Itar_Mages_Water_5,1);
	B_PlayerFindItem(Itar_Mages_Swamp_5,1);
	B_PlayerFindItem(Itar_Mages_Dark_5,1);
};


//Pancerze grup religijnych

instance Itar_Inquisition_1 (Botk_Armor_1)
{
	name = "Pancerz StraÅ¼nika";
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "SKO_FW_HHH.asc";
};
instance Itar_Inquisition_2 (Botk_Armor_2)
{
	name = "Pancerz StraÅ¼nika";
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "SKO_FW_HHH.asc";
};

instance Itar_Inquisition_3 (Botk_Armor_3)
{
	name = "Pancerz StraÅ¼nika";
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "SKO_FW_HHH.asc";
};

instance Itar_Inquisition_4 (Botk_Armor_4)
{
	name = "Pancerz StraÅ¼nika";
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "SKO_FW_HHH.asc";
};


instance Itar_Zakon_1 (Botk_Armor_1)
{
	name = "Pancerz StraÅ¼nika";
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "Zakon.asc";
};
instance Itar_Zakon_2 (Botk_Armor_2)
{
	name = "Pancerz StraÅ¼nika";
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "Zakon.asc";
};

instance Itar_Zakon_3 (Botk_Armor_3)
{
	name = "Pancerz StraÅ¼nika";
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "Zakon.asc";
};

instance Itar_Zakon_4 (Botk_Armor_4)
{
	name = "Pancerz StraÅ¼nika";
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "Zakon.asc";
};
INSTANCE ItMi_Packet_ORC_1(C_Item)
{
	name 				=	"Lekki Pancerz dla orka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";
	material 			=	MAT_LEATHER;
	//on_state[0]			=   UsePacket;
	description			= 	name;
};
INSTANCE ItMi_Packet_ORC_2(C_Item)
{
	name 				=	"Pancerz dla orka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";	
	material 			=	MAT_LEATHER;
	//on_state[0]			=   UsePacket;
	description			= 	name;
};
INSTANCE ItMi_Packet_ORC_3(C_Item)
{
	name 				=	"Ciê¿ki Pancerz dla orka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";
	material 			=	MAT_LEATHER;
	//on_state[0]			=   UsePacket;
	description			= 	name;
};
INSTANCE ItMi_Packet_ORC_4(C_Item)
{
	name 				=	"Wspania³y Pancerz dla orka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";
	material 			=	MAT_LEATHER;
	//on_state[0]			=   UsePacket;
	description			= 	name;
};