// Kowal Niebieskiego Obozu

instance DJG_2002_SCHMIED(Npc_Default)
{
	guild = GIL_NONE;
	id = 2002;
	voice = 6;
	npcType = npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	if(LAGER == 2)
	{
		aivar[91] = TRUE;
	};
	B_SetAttributesToChapter(self,3);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	if(FRAKTION_L2 == DJG)
	{
		name[0] = "Bennet";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_CoolPock, BodyTex_N, ITAR_Smith);	
	}
	else if(FRAKTION_L2 == PAL)
	{
		name[0] = "Harad";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart20, BodyTex_N, ITAR_Smith);	
	}
	else if(FRAKTION_L2 == TMP)
	{
		name[0] = "Kowal";
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_tmp_m);
	}
	else if(FRAKTION_L2 == SKE)
	{	
		name[0] = "Kowal";
		B_SetSkelettVisual(self,2);
	}
	else if (FRAKTION_L2 == ORC)
	{
		name[0] = "Kowal";
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
	}
	else if (FRAKTION_L2 == PCH) 
	{
		name[0] = "Huno";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_Bald", Face_N_NormalBart_Huno, BodyTex_N, ITAR_SMITH);	
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	EquipItem(self,ItMw_Nagelknueppel);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 20;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_2002;
};


func void Rtn_Start_2002()
{
	TA_Stand_Guarding(8,0,23,0,"L2_SCHMIEDE_04");
	TA_Stand_Guarding(23,0,8,0,"L2_SCHMIEDE_04");
};

func void rtn_ofen_2002()
{
	TA_Smith_Fire(8,0,23,0,"L2_SCHMIEDE_OFEN");
	TA_Smith_Fire(23,0,8,0,"L2_SCHMIEDE_OFEN");
};

func void rtn_amboss_2002()
{
	TA_Smith_Anvil(8,0,23,0,"L2_SCHMIEDE_AMBOSS");
	TA_Smith_Anvil(23,0,8,0,"L2_SCHMIEDE_AMBOSS");
};

func void rtn_wasser_2002()
{
	TA_Smith_Cool(8,0,23,0,"L2_SCHMIEDE_WASSER");
	TA_Smith_Cool(23,0,8,0,"L2_SCHMIEDE_WASSER");
};

func void rtn_schleifen_2002()
{
	TA_Smith_Sharp(8,0,23,0,"L2_SCHMIEDE_SCHLEIFEN");
	TA_Smith_Sharp(23,0,8,0,"L2_SCHMIEDE_SCHLEIFEN");
};

