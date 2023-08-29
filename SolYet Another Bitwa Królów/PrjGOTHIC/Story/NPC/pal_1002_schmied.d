// Kowal Czerwonego Obozu

instance PAL_1002_SCHMIED(Npc_Default)
{
	name[0] = NPCNAME_SMITH;
	guild = GIL_NONE;
	id = 1002;
	voice = 6;
	npcType = npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	if(LAGER == 1)
	{
		aivar[91] = TRUE;
	};
	B_SetAttributesToChapter(self,3);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	if(FRAKTION_L1 == SKE)
	{
		Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
		Mdl_SetVisualBody(self,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	}
	else
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,ITAR_Smith);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,30);
	EquipItem(self,ItMw_Nagelknueppel);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 20;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = rtn_start_1002;
};


func void rtn_start_1002()
{
	TA_Stand_WP(8,0,23,0,"L1_SCHMIEDE_04");
	TA_Stand_WP(23,0,8,0,"L1_SCHMIEDE_04");
};

func void rtn_ofen_1002()
{
	TA_Smith_Fire(8,0,23,0,"L1_SCHMIEDE_OFEN");
	TA_Smith_Fire(23,0,8,0,"L1_SCHMIEDE_OFEN");
};

func void rtn_amboss_1002()
{
	TA_Smith_Anvil(8,0,23,0,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Anvil(23,0,8,0,"L1_SCHMIEDE_AMBOSS");
};

func void rtn_wasser_1002()
{
	TA_Smith_Cool(8,0,23,0,"L1_SCHMIEDE_WASSER");
	TA_Smith_Cool(23,0,8,0,"L1_SCHMIEDE_WASSER");
};

func void rtn_schleifen_1002()
{
	TA_Smith_Sharp(8,0,23,0,"L1_SCHMIEDE_SCHLEIFEN");
	TA_Smith_Sharp(23,0,8,0,"L1_SCHMIEDE_SCHLEIFEN");
};

