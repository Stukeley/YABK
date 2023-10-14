// Zmiana wygladu szkieleta (dla frakcji Ozywiency)

// Funkcja ustawiajaca wyglad NPC (slf) na wyglad szkieleta
// stufe - poziom szkieleta (1-6) wplywajacy na wyglad
func void B_SetSkelettVisual(var C_Npc slf, var int stufe)
{
	if (stufe == 1)
	{
		Mdl_SetVisual(self,"HumanS.mds");
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,ITAR_SKEMIL_L);
		slf.protection[PROT_EDGE] = 0;
		slf.protection[PROT_BLUNT] = 0;
		slf.protection[PROT_POINT] = 0;
		slf.protection[PROT_FIRE] = 0;
		slf.protection[PROT_MAGIC] = 0;
	}
	else if (stufe == 2)
	{
		Mdl_SetVisual(self,"HumanS.mds");
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,ITAR_SKEMIL_M);
		slf.protection[PROT_EDGE] = 0;
		slf.protection[PROT_BLUNT] = 0;
		slf.protection[PROT_POINT] = 0;
		slf.protection[PROT_FIRE] = 0;
		slf.protection[PROT_MAGIC] = 0;
	}
	else if (stufe == 3)
	{
		Mdl_SetVisual(self,"HumanS.mds");
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,ITAR_SKEPAL_M);
		slf.protection[PROT_EDGE] = 0;
		slf.protection[PROT_BLUNT] = 0;
		slf.protection[PROT_POINT] = 0;
		slf.protection[PROT_FIRE] = 0;
		slf.protection[PROT_MAGIC] = 0;
	}
	else if (stufe == 4)
	{
		Mdl_SetVisual(self,"HumanS.mds");
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,ITAR_SKEPAL_H);
		slf.protection[PROT_EDGE] = 0;
		slf.protection[PROT_BLUNT] = 0;
		slf.protection[PROT_POINT] = 0;
		slf.protection[PROT_FIRE] = 0;
		slf.protection[PROT_MAGIC] = 0;
	}
	else if (stufe == 5)
	{
		Mdl_SetVisual(slf, "HumanS.mds");
		Mdl_ApplyOverlayMds(slf, "humans_skeleton_fly.mds");
		Mdl_SetVisualBody(slf, "Ske_Fly_Body", 1, DEFAULT, "", 1, DEFAULT, -1);
		slf.protection[PROT_EDGE] = 50;
		slf.protection[PROT_BLUNT] = 50;
		slf.protection[PROT_POINT] = 50;
		slf.protection[PROT_FIRE] = 50;
		slf.protection[PROT_MAGIC] = 50;
	}
	else if (stufe == 6)
	{
		Mdl_SetVisual(slf, "HumanS.mds");
		Mdl_SetVisualBody(slf, "Ske_Fly_Body", 1, DEFAULT, "", 1, DEFAULT, -1);
		slf.protection[PROT_EDGE] = 50;
		slf.protection[PROT_BLUNT] = 50;
		slf.protection[PROT_POINT] = 50;
		slf.protection[PROT_FIRE] = 50;
		slf.protection[PROT_MAGIC] = 50;
	}
	else if (stufe == 10)
	{
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyShaman",DEFAULT,DEFAULT,"Orc_HeadShaman",DEFAULT,DEFAULT,-1);
		slf.protection[PROT_EDGE] = BOTK_ARMOR_01;
		slf.protection[PROT_BLUNT] = BOTK_ARMOR_01;
		slf.protection[PROT_POINT] = BOTK_ARMOR_01;
		slf.protection[PROT_FIRE] = BOTK_ARMOR_01;
		slf.protection[PROT_MAGIC] = BOTK_ARMOR_01;
	}
	else if (stufe == 11)
	{
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
		slf.protection[PROT_EDGE] = BOTK_ARMOR_02;
		slf.protection[PROT_BLUNT] = BOTK_ARMOR_02;
		slf.protection[PROT_POINT] = BOTK_ARMOR_02;
		slf.protection[PROT_FIRE] = BOTK_ARMOR_02;
		slf.protection[PROT_MAGIC] = BOTK_ARMOR_02;
	}
	else if (stufe == 12)
	{
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
		slf.protection[PROT_EDGE] = BOTK_ARMOR_03;
		slf.protection[PROT_BLUNT] = BOTK_ARMOR_03;
		slf.protection[PROT_POINT] = BOTK_ARMOR_03;
		slf.protection[PROT_FIRE] = BOTK_ARMOR_03;
		slf.protection[PROT_MAGIC] = BOTK_ARMOR_03;
	}
	else if (stufe == 13)
	{
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyElite",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
		slf.protection[PROT_EDGE] = BOTK_ARMOR_04;
		slf.protection[PROT_BLUNT] = BOTK_ARMOR_04;
		slf.protection[PROT_POINT] = BOTK_ARMOR_04;
		slf.protection[PROT_FIRE] = BOTK_ARMOR_04;
		slf.protection[PROT_MAGIC] = BOTK_ARMOR_04;
	};


};

func void B_RandomOrcVisual(var C_Npc slf)
{
	var int Face;
	Face = Hlp_Random(3);
	if (Face == 0)
	{
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyShaman",DEFAULT,DEFAULT,"Orc_HeadShaman",DEFAULT,DEFAULT,-1);
	}
	else if (Face == 1)
	{
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
	}
	else{
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
	};
};