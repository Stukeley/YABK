
instance ItPo_Addon_Geist_01(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 300;
	visual = "ItPo_Perm_STR.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Geist_01;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Mikstura przemiany duszy";
	text[2] = "ZASTAN�W si� przed jej u�yciem!!";
	text[3] = "Mo�e uszkodzi� umys�,";
	text[4] = "a nawet zabi� tego, kto jej u�yje.";
	text[5] = NAME_Value;
	count[5] = Value_ManaEssenz;
};


func void UseItPo_Geist_01()
{
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 1000;
};


instance ItPo_Addon_Geist_02(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 300;
	visual = "ItPo_Perm_STR.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Geist_02;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Mikstura przemiany duszy";
	text[2] = "ZASTAN�W si� przed jej u�yciem!";
	text[3] = "Mo�e uszkodzi� umys�,";
	text[4] = "a nawet zabi� tego, kto jej u�yje.";
	text[5] = NAME_Value;
	count[5] = Value_ManaEssenz;
};


func void UseItPo_Geist_02()
{
	if(Npc_IsPlayer(self))
	{
		B_GivePlayerXP(XP_Ambient * 5);
	};
};


instance ItPo_Health_Addon_04(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_HpTrunk;
	visual = "ItPo_Health_03.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Health_04;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Pe�nia �ycia";
	text[2] = "Ca�kowita regeneracja energii �yciowej";
	text[5] = NAME_Value;
	count[5] = Value_HpTrunk;
};


func void UseItPo_Health_04()
{
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
};


instance ItPo_Mana_Addon_04(C_Item)
{
	name = NAME_Trank;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = Value_ManaTrunk;
	visual = "ItPo_Mana_03.3ds";
	material = MAT_GLAS;
	on_state[0] = UseItPo_Mana_04;
	scemeName = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Pe�nia many";
	text[2] = "Ca�kowita regeneracja many";
	text[5] = NAME_Value;
	count[5] = Value_ManaTrunk;
};


func void UseItPo_Mana_04()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
};

