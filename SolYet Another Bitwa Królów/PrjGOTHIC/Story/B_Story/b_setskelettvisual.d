
func void b_setskelettvisual(var C_Npc slf,var int stufe)
{
	if(stufe == 1)
	{
		Mdl_SetVisual(slf,"HumanS.mds");
		Mdl_SetVisualBody(slf,"Zom_Body",0,0,"Zom_Head",0,DEFAULT,-1);
		slf.protection[PROT_EDGE] = BOTK_ARMOR_01;
		slf.protection[PROT_BLUNT] = BOTK_ARMOR_01;
		slf.protection[PROT_POINT] = BOTK_ARMOR_01;
		slf.protection[PROT_FIRE] = BOTK_ARMOR_01;
		slf.protection[PROT_MAGIC] = BOTK_ARMOR_01;
	}
	else if(stufe == 2)
	{
		Mdl_SetVisual(slf,"HumanS.mds");
		Mdl_SetVisualBody(slf,"Zom_Body",0,0,"Zom_Head",0,DEFAULT,ITAR_Thorus_Addon);
		slf.protection[PROT_EDGE] = BOTK_ARMOR_02;
		slf.protection[PROT_BLUNT] = BOTK_ARMOR_02;
		slf.protection[PROT_POINT] = BOTK_ARMOR_02;
		slf.protection[PROT_FIRE] = BOTK_ARMOR_02;
		slf.protection[PROT_MAGIC] = BOTK_ARMOR_02;
	}
	else if(stufe == 3)
	{
		Mdl_SetVisual(slf,"HumanS.mds");
		Mdl_SetVisualBody(slf,"Zom_Body",0,0,"Zom_Head",0,DEFAULT,ITAR_MayaZombie_Addon);
		slf.protection[PROT_EDGE] = BOTK_ARMOR_03;
		slf.protection[PROT_BLUNT] = BOTK_ARMOR_03;
		slf.protection[PROT_POINT] = BOTK_ARMOR_03;
		slf.protection[PROT_FIRE] = BOTK_ARMOR_03;
		slf.protection[PROT_MAGIC] = BOTK_ARMOR_03;
	}
	else if(stufe == 4)
	{
		Mdl_SetVisual(slf,"HumanS.mds");
		Mdl_SetVisualBody(slf,"Zom_Body",0,1,"Zom_Head",0,DEFAULT,itar_pal_skel);
		slf.protection[PROT_EDGE] = BOTK_ARMOR_04;
		slf.protection[PROT_BLUNT] = BOTK_ARMOR_04;
		slf.protection[PROT_POINT] = BOTK_ARMOR_04;
		slf.protection[PROT_FIRE] = BOTK_ARMOR_04;
		slf.protection[PROT_MAGIC] = BOTK_ARMOR_04;
	}
	else if(stufe == 5)
	{
		Mdl_SetVisual(slf,"HumanS.mds");
		Mdl_ApplyOverlayMds(slf,"humans_skeleton_fly.mds");
		Mdl_SetVisualBody(slf,"Ske_Fly_Body",1,DEFAULT,"",1,DEFAULT,-1);
		slf.protection[PROT_EDGE] = 50;
		slf.protection[PROT_BLUNT] = 50;
		slf.protection[PROT_POINT] = 50;
		slf.protection[PROT_FIRE] = 50;
		slf.protection[PROT_MAGIC] = 50;
	}
	else if(stufe == 6)
	{
		Mdl_SetVisual(slf,"HumanS.mds");
		Mdl_SetVisualBody(slf,"Ske_Fly_Body",1,DEFAULT,"",1,DEFAULT,-1);
		slf.protection[PROT_EDGE] = 50;
		slf.protection[PROT_BLUNT] = 50;
		slf.protection[PROT_POINT] = 50;
		slf.protection[PROT_FIRE] = 50;
		slf.protection[PROT_MAGIC] = 50;
	};
};

