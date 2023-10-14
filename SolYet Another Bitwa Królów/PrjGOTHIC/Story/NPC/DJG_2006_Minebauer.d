// Budowniczy Kopalni Niebieskiego Obozu

instance DJG_2006_MINEBAUER(Npc_Default)
{
	guild = GIL_NONE;
	id = 2006;
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
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	if(FRAKTION_L2 == DJG)
	{
		name[0] = "Jarvis";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_Torlof, BodyTex_N, ITAR_SLD_M);	
	}
	else if(FRAKTION_L2 == PAL)
	{
		name[0] = "Girion";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", Face_N_Lefty, BodyTex_N, ITAR_PAL_M);	
	}
	else if(FRAKTION_L2 == TMP)
	{
		name[0] = "Fortuno";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_Fortuno, BodyTex_T, ITAR_LESTER);
	}
	else if (FRAKTION_L2 == PCH)
	{
		name = "Grimes";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Thief", Face_N_ImportantGrey, BodyTex_N, ITAR_Prisoner);	
	}
	else if (FRAKTION_L2 == ORC)
	{
		name = "Ork zarz¹dca";
		B_SetSkelettVisual(self, 13);
	}
	else if(FRAKTION_L2 == SKE)
	{
		name[0] = "ZarzÄ…dca Kopalni";
		B_SetSkelettVisual(self,3);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_2006;
};


func void Rtn_Start_2006()
{
	TA_Stand_Guarding(8,0,23,0,"L2_MINE_01");
	TA_Stand_Guarding(23,0,8,0,"L2_MINE_01");
};

func void rtn_tot_2006()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

