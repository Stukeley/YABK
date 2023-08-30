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
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_djg_h);
	}
	else if(FRAKTION_L1 == PAL)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,ItAr_PAl_H);
	}
	else if(FRAKTION_L1 == TMP)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_tmp_h);
	}
	else if(FRAKTION_L1 == SKE)
	{
		B_SetSkelettVisual(self,4);
	};

	Mdl_SetModelFatness(self,1);
	bodyStateInterruptableOverride = TRUE;
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,KING_FIGHTSKILL);
	Mdl_ApplyOverlayMds(self,"humans_1hST2.mds");
	EquipItem(self,ItMw_1H_Special_04);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_MASTER;
	daily_routine = rtn_start_1000;
};


func void rtn_start_1000()
{
	TA_Sit_Throne(8,0,23,0,"L1_KING_01");
	TA_Sit_Throne(23,0,8,0,"L1_KING_01");
};

