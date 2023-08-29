// Drugi Kopacz w Kopalni Niebieskiego Obozu

instance DJG_2009_MINENARBEITER(Npc_Default)
{
	name[0] = NPCNAME_MINENARBEITER;
	guild = GIL_NONE;
	id = 2009;
	voice = 6;
	npcType = NPC_FLAG_GHOST | npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	B_SetAttributesToChapter(self,1);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	if(FRAKTION_L2 == DJG)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_djg_prisoner);
	}
	else if(FRAKTION_L2 == Pal)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_pal_prisoner);
	}
	else if(FRAKTION_L2 == TMP)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_tmp_prisoner);
	}
	else if(FRAKTION_L2 == SKE)
	{
		b_setskelettvisual(self,1);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	EquipItem(self,ItMw_2H_Axe_L_01);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = rtn_start_2009;
};


func void rtn_start_2009()
{
	TA_Pick_Ore(8,0,23,0,"L2_MINE_GOLD_2");
	TA_Pick_Ore(23,0,8,0,"L2_MINE_GOLD_2");
};

