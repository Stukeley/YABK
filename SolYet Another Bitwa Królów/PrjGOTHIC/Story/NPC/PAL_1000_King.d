// Krol Czerwonego Obozu
// PAL oznacza Czerwony Oboz

instance PAL_1000_KING(Npc_Default)
{
	name[0] = NPCNAME_KING_PAL;
	guild = GIL_PAL;
	id = 1000;
	voice = 6;
	npcType = npctype_main;
	aivar[AIV_FightDistCancel] = 2000;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_SHORT;
	B_SetAttributesToChapter(self,KING_CHAPTER);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");

	// Ustawianie wygladu w zaleznosci od granej frakcji.
	if(FRAKTION_L1 == DJG)
	{
		name[0] = "Lee";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_Lee, BodyTex_N, Itar_YABK_King_DJG);
		EquipItem(self,Itmw_King_Weapon_DJG);
	}
	else if(FRAKTION_L1 == PAL)
	{
		name[0] = "Lord Hagen";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Fighter", Face_N_Tough_Okyl, BodyTex_N, Itar_YABK_King_PAL);
		EquipItem(self,Itmw_King_Weapon_Pal);
	}
	else if(FRAKTION_L1 == TMP)
	{
		name[0] = "Cor Angar";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_B_CorAngar, BodyTex_B, Itar_YABK_King_TMP);
		EquipItem(self,Itmw_King_Weapon_TMP);
	}
	else if (FRAKTION_L1 == BST)
	{
		name[0] = "Wielki Myśliwy";
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,Itar_YABK_King_BST);
		EquipItem(self,ItMw_King_Weapon_PCH);
	}
	else if (FRAKTION_L1 == ORC)
	{
		name[0] = "Ur-Thrall";
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyElite",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
		EquipItem(self,Itmw_King_Weapon_ORC);
	}
	else if(FRAKTION_L1 == SKE)
	{
		name[0] = "Pan Cienia Archol";
		EquipItem(self,Itmw_King_Weapon_SKE);	
		Mdl_SetVisual(self,"HumanS.mds");
		Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
		Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
		Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,Itar_YABK_King_SKE);		
	}
	else if(FRAKTION_L1 == PCH)
	{
		name[0] = "Gomez";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Gomez , BodyTex_N, Itar_YABK_King_PCH);
		EquipItem(self,Itmw_King_Weapon_PCH);
	};

	Mdl_SetModelFatness(self,1);
	bodyStateInterruptableOverride = TRUE;
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,KING_FIGHTSKILL);
	Mdl_ApplyOverlayMds(self,"humans_1hST2.mds");
	EquipItem(self,ItMw_1H_Special_04);
	B_CreateAmbientInv(self);
	if (LAGER == 2)
	{
		if (SCHWIERIGKEIT == DIFF_LIGHT)
		{
			slf.attribute[ATR_HITPOINTS_MAX] = 7500;
			slf.attribute[ATR_HITPOINTS] = 7500;
		}
		else if (SCHWIERIGKEIT == DIFF_NORMAL)
		{
			slf.attribute[ATR_HITPOINTS_MAX] = 10000;
			slf.attribute[ATR_HITPOINTS] = 10000;
		}
		else if (SCHWIERIGKEIT == DIFF_HEAVY)
		{
			slf.attribute[ATR_HITPOINTS_MAX] = 15000;
			slf.attribute[ATR_HITPOINTS] = 15000;
		}
		else if (SCHWIERIGKEIT == DIFF_HORROR)
		{
			slf.attribute[ATR_HITPOINTS_MAX] = 20000;
			slf.attribute[ATR_HITPOINTS] = 20000;
		};
	};
	senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_MASTER;
	if (FRAKTION_L1 != ORC)
	{
		daily_routine = Rtn_Start_1000;
	}
	else{
		daily_routine = Rtn_Start2_1000;
	};
};


func void rtn_start_1000()
{
	TA_Sit_Throne(8,0,23,0,"L1_KING_01");
	TA_Sit_Throne(23,0,8,0,"L1_KING_01");
};
func void rtn_start2_1000()
{
	TA_Stand_WP(8,0,23,0,"L1_KING_01");
	TA_Stand_WP(23,0,8,0,"L1_KING_01");
};


