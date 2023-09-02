// Itemy do testowania - mieszek z goldem i mieszek z honorem.

instance ITSE_GOLDPOCKET1000(C_Item)
{
	name = "Lederbeutel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1000;
	visual = "ItMi_Pocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = goldpocket1000;
	description = "Ein Lederbeutel";
	text[0] = "";
	text[1] = "";
	text[2] = "Mieszek zawieraj¹cy 1000 Sztuk Z³ota";
	text[3] = "";
	text[4] = "";
	text[5] = NAME_Value;
	count[5] = value;
};


func void goldpocket1000()
{
	B_PlayerFindItem(ItMi_Gold,1000);
};


instance ITSE_EHRENPOCKET1000(C_Item)
{
	name = "Lederbeutel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1000;
	visual = "ItMi_Pocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = ehrepocket1000;
	description = "Ein Lederbeutel";
	text[0] = "";
	text[1] = "";
	text[2] = "Mieszek zawieraj¹cy 1000 Punktów Honoru";
	text[3] = "";
	text[4] = "";
	text[5] = NAME_Value;
	count[5] = value;
};


func void ehrepocket1000()
{
	if(LAGER == 1)
	{
		L1_EHRENPUNKTE = L1_EHRENPUNKTE + 1000;
	}
	else if(LAGER == 2)
	{
		L2_EHRENPUNKTE = L2_EHRENPUNKTE + 1000;
	};
};

