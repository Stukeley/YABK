// Kowal Czerwonego Obozu

instance None_8001_Smith(Npc_Default)
{
	name[0] = NPCNAME_SMITH;
	guild = GIL_NONE;
	id = 8001;
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
	if(FRAKTION_L1 == DJG)
	{
		name[0] = "Bennet";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_CoolPock, BodyTex_N, ITAR_Smith);	
	}
	else if(FRAKTION_L1 == PAL)
	{
		name[0] = "Harad";
		B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_NormalBart20, BodyTex_N, ITAR_Smith);	
	}
	else if(FRAKTION_L1 == TMP)
	{
		name[0] = "Kowal";
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_tmp_m);
	}
	else if(FRAKTION_L1 == SKE)
	{	
		name[0] = "Kowal";
		B_SetNpcVisual(self,MALE,"Ske_Head",0,0,ITAR_SKEMIL_M);
	}
	else if (FRAKTION_L1 == ORC)
	{
		name[0] = "Kowal";
		Mdl_SetVisual(self,"Orc.mds");
		Mdl_SetVisualBody(self,"Orc_BodyWarrior",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
	}
	else if (FRAKTION_L1 == PCH) 
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
	daily_routine = rtn_start2_8001;
};


func void rtn_start_8001()
{
	TA_Stand_Guarding(8,0,23,0,"L1_SCHMIEDE_04");
	TA_Stand_Guarding(23,0,8,0,"L1_SCHMIEDE_04");
};

func void rtn_ofen_8001()
{
	TA_Smith_Fire(8,0,23,0,"L1_SCHMIEDE_OFEN");
	TA_Smith_Fire(23,0,8,0,"L1_SCHMIEDE_OFEN");
};

func void rtn_amboss_8001()
{
	TA_Smith_Anvil(8,0,23,0,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Anvil(23,0,8,0,"L1_SCHMIEDE_AMBOSS");
};

func void rtn_wasser_8001()
{
	TA_Smith_Cool(8,0,23,0,"L1_SCHMIEDE_WASSER");
	TA_Smith_Cool(23,0,8,0,"L1_SCHMIEDE_WASSER");
};

func void rtn_schleifen_8001()
{
	TA_Smith_Sharp(8,0,23,0,"L1_SCHMIEDE_SCHLEIFEN");
	TA_Smith_Sharp(23,0,8,0,"L1_SCHMIEDE_SCHLEIFEN");
};

FUNC VOID Rtn_Start2_8001 ()
{	
	TA_Smith_Anvil		(22,00,07,00,"L1_SCHMIEDE_AMBOSS"); 
	
	TA_Smith_Fire	(07,00,07,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(07,10,07,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(07,20,07,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(07,30,07,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(07,40,07,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(07,50,08,00,"L1_SCHMIEDE_AMBOSS");
	
	TA_Smith_Fire	(08,00,08,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(08,10,08,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(08,20,08,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(08,30,08,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(08,40,08,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(08,50,09,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(09,00,09,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(09,10,09,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(09,20,09,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(09,30,09,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(09,40,09,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(09,50,10,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(10,00,10,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(10,10,10,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(10,20,10,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(10,30,10,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(10,40,10,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(10,50,11,00,"L1_SCHMIEDE_AMBOSS");    
          
	TA_Smith_Fire	(11,00,11,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(11,10,11,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(11,20,11,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(11,30,11,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(11,40,11,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(11,50,12,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(12,00,12,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(12,10,12,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(12,20,12,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(12,30,12,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(12,40,12,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(12,50,13,00,"L1_SCHMIEDE_AMBOSS");
          
	TA_Smith_Fire	(13,00,13,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(13,10,13,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(13,20,13,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(13,30,13,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(13,40,13,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(13,50,14,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(14,00,14,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(14,10,14,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(14,20,14,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(14,30,14,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(14,40,14,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(14,50,15,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(15,00,15,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(15,10,15,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(15,20,15,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(15,30,15,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(15,40,15,50,"L1_SCHMIEDE_WASSER");
 	TA_Smith_Anvil	(15,50,16,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(16,00,16,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(16,10,16,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(16,20,16,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(16,30,16,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(16,40,16,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(16,50,17,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(17,00,17,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(17,10,17,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(17,20,17,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(17,30,17,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(17,40,17,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(17,50,18,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(18,00,18,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(18,10,18,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(18,20,18,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(18,30,18,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(18,40,18,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(18,50,19,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(19,00,19,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(19,10,19,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(19,20,19,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(19,30,19,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(19,40,19,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(19,50,20,00,"L1_SCHMIEDE_AMBOSS");

	TA_Smith_Fire	(20,00,20,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(20,10,20,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(20,20,20,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(20,30,20,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(20,40,20,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(20,50,21,00,"L1_SCHMIEDE_AMBOSS");
	
	TA_Smith_Fire	(21,00,21,10,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(21,10,21,20,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Fire	(21,20,21,30,"L1_SCHMIEDE_OFEN");
	TA_Smith_Anvil	(21,30,21,40,"L1_SCHMIEDE_AMBOSS");
	TA_Smith_Cool	(21,40,21,50,"L1_SCHMIEDE_WASSER");
	TA_Smith_Anvil	(21,50,22,00,"L1_SCHMIEDE_AMBOSS");
};
