// Zarzadca Czerwonego Obozu

instance PAL_1003_VERWALTER(Npc_Default)
{
	name[0] = NPCNAME_VERWALTER;
	guild = GIL_NONE;
	id = 1003;
	voice = 6;
	npcType = NPC_FLAG_GHOST | npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,1);
	if(FRAKTION_L1 == DJG)
	{
		name[0] = "Gorn";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter",Face_B_Gorn, BodyTex_B, Itar_YABK_King_SLD);	
		EquipItem(self,ItMw_Schlachtaxt);
	}
	else if(FRAKTION_L1 == PAL)
	{
		name[0] = "Lord Andre";
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,ItAr_PAL_M);
		EquipItem(self, ItMw_2h_Pal_Sword);
	}
	else if(FRAKTION_L1 == TMP)
	{
		name[0]= "Gor Na Ran";
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart_Dexter,BodyTex_P,itar_tmp_m);
		EquipItem(self, ItMw_Zweihaender1);
	}
	else if (FRAKTION_L1 == ORC)
	{
		name[0]= "Ork Pu³kownik";
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyElite",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
	}
	else if(FRAKTION_L1 == SKE)
	{
		name[0] = "Pan Cienia Dominique";
		EquipItem(self,Itmw_King_Weapon_SKE);	
		Mdl_SetVisual(self,"HumanS.mds");
		Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
		Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
		Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,Itar_YABK_King_SKE);	
		
	}
	else if (FRAKTION_L1 == PCH)
	{
		name[0] = "Kruk";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_Raven, BodyTex_N, ITAR_OreBaron_Addon);	
		EquipItem(self, ItMw_1H_Blessed_03);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	EquipItem(self,ItMw_Nagelknueppel);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = rtn_start_1003;
};


func void rtn_start_1003()
{
	TA_Stand_ArmsCrossed(8,0,23,0,"L1_KING_VERWALTER");
	TA_Stand_ArmsCrossed(23,0,8,0,"L1_KING_VERWALTER");
};

