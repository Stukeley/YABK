
instance ItRu_TeleportMine(C_Item)
{
	name = "Teleportacja do Kopalni";
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 0;
	visual = "ItRu_PalLight.3ds";
	material = MAT_STONE;
	spell = SPL_MineTeleport;
	mag_circle = 0;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_WEAKGLIMMER";
	description = "Teleportacja do twojej kopalni";

};

instance ItRu_MonasteRune(C_Item)
{
	name = "Teleportacja do Domu Magów";
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = 0;
	visual = "ItRu_PalLightHeal.3ds";
	material = MAT_STONE;
	spell = SPL_MonasteryTeleport;
	mag_circle = 0;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_WEAKGLIMMER";
	description = "Teleportacja do twojej kopalni";

};

instance ItRu_Pal_Circle_6(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = Value_Ru_PalHolyBolt;
	visual = "ItRu_PalHolyBolt.3DS";
	material = MAT_STONE;
	spell = SPL_FireMeteor;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_WEAKGLIMMER";
	description = NAME_SPL_PalHolyBolt;
	text[0] = Name_PaladinSpell;
	text[1] = NAME_Manakosten;
	count[1] = SPL_Cost_PalHolyBolt;
	text[2] = NAME_Dam_Magic;
	count[2] = SPL_Damage_PalHolyBolt;
	text[5] = NAME_Value;
	count[5] = value;
};
instance ItRu_Pal_Circle_5(C_Item)
{
	name = NAME_Rune;
	mainflag = ITEM_KAT_RUNE;
	flags = 0;
	value = Value_Ru_PalHolyBolt;
	visual = "ItRu_PalHolyBolt.3DS";
	material = MAT_STONE;
	spell = SPL_ShrinkDmg;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_WEAKGLIMMER";
	description = NAME_SPL_PalHolyBolt;
	text[0] = Name_PaladinSpell;
	text[1] = NAME_Manakosten;
	count[1] = SPL_Cost_PalHolyBolt;
	text[2] = NAME_Dam_Magic;
	count[2] = SPL_Damage_PalHolyBolt;
	text[5] = NAME_Value;
	count[5] = value;
};