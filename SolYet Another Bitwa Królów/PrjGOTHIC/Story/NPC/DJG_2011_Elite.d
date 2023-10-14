// Elita Niebieskiego Obozu

instance DJG_2011_ELITE(Npc_Default)
{
	guild = GIL_NONE;
	id = 2011;
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
	B_SetAttributesToChapter(self,5);
	if(FRAKTION_L2 == DJG)
	{
		name[0] = "Torlof";
		EquipItem			(self, ItMw_2h_Sld_Sword);
		EquipItem			(self, ItRw_Sld_Bow);	
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_Torlof, BodyTex_N, ITAR_SLD_H);
	}
	else if(FRAKTION_L2 == PAL)
	{
		name[0] = "Ingmar";
		EquipItem(self,Itmw_King_Weapon_Pal);
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_N_ToughBart01, BodyTex_N,ItAr_PAL_M);
	}
	else if(FRAKTION_L2 == TMP)
	{
		name[0] = "Gor Na Toth";
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_tmp_m);
		EquipItem(self,Itmw_King_Weapon_TMP);
	}
	else if (FRAKTION_L2 == ORC)
	{
		name[0] ="Ork Pu³kownik";
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyElite",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
	}
	else if(FRAKTION_L2 == SKE)
	{
		name[0] = "Pan Cienia Inubis";
		EquipItem(self,Itmw_King_Weapon_SKE);	
		Mdl_SetVisual(self,"HumanS.mds");
		Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
		Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
		Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,Itar_YABK_King_SKE);	
	}
	else if(FRAKTION_L2 == PCH)
	{
		name[0] = "Blizna";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Scar , BodyTex_N, ITAR_OreBaron_Addon);
		EquipItem(self, ItRw_Crossbow_H_02);
		EquipItem(self,ItMw_OrkSchlaechter);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	EquipItem(self,ItMw_Nagelknueppel);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = rtn_start_2011;
};


func void rtn_start_2011()
{
	TA_Stand_Guarding(8,0,23,0,"L2_KING_ELITE");
	TA_Stand_Guarding(23,0,8,0,"L2_KING_ELITE");
};

