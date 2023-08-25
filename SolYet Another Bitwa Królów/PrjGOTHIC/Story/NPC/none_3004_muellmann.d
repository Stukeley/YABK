
instance NONE_3004_MUELLMANN(Npc_Default)
{
	name[0] = NPCNAME_MUELLMANN;
	guild = GIL_NONE;
	id = 3004;
	voice = 6;
	npcType = NPC_FLAG_GHOST | npctype_main;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	aivar[92] = 31;
	aivar[97] = 2;
	B_SetAttributesToChapter(self,1);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart09,BodyTex_N,ITAR_Vlk_L);
	Mdl_SetModelFatness(self,0);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2500;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = rtn_lager1_3004;
};


func void rtn_lager1_3004()
{
	ta_muell(8,0,23,0,"L1_KING_01");
	ta_muell(23,0,8,0,"L1_KING_01");
};

func void rtn_l1vorkoenig_3004()
{
	ta_muell(8,0,23,0,"L1_KING_03");
	ta_muell(23,0,8,0,"L1_KING_03");
};

func void rtn_l1ebene2_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_04");
	ta_muell(23,0,8,0,"L1_LAGER_04");
};

func void rtn_l1ebene1_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_05");
	ta_muell(23,0,8,0,"L1_LAGER_05");
};

func void rtn_l1ebene11_3004()
{
	ta_muell(8,0,23,0,"PASS_17");
	ta_muell(23,0,8,0,"PASS_17");
};

func void rtn_pass1_3004()
{
	ta_muell(8,0,23,0,"PASS_15");
	ta_muell(23,0,8,0,"PASS_15");
};

func void rtn_pass11_3004()
{
	ta_muell(8,0,23,0,"PASS_13");
	ta_muell(23,0,8,0,"PASS_13");
};

func void rtn_pass111_3004()
{
	ta_muell(8,0,23,0,"PASS_11");
	ta_muell(23,0,8,0,"PASS_11");
};

func void rtn_pass222_3004()
{
	ta_muell(8,0,23,0,"PASS_21");
	ta_muell(23,0,8,0,"PASS_21");
};

func void rtn_pass22_3004()
{
	ta_muell(8,0,23,0,"PASS_23");
	ta_muell(23,0,8,0,"PASS_23");
};

func void rtn_pass2_3004()
{
	ta_muell(8,0,23,0,"PASS_25");
	ta_muell(23,0,8,0,"PASS_25");
};

func void rtn_l2ebene11_3004()
{
	ta_muell(8,0,23,0,"PASS_27");
	ta_muell(23,0,8,0,"PASS_27");
};

func void rtn_l2ebene1_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_05");
	ta_muell(23,0,8,0,"L2_LAGER_05");
};

func void rtn_l2ebene2_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_04");
	ta_muell(23,0,8,0,"L2_LAGER_04");
};

func void rtn_l2vorkoenig_3004()
{
	ta_muell(8,0,23,0,"L2_KING_03");
	ta_muell(23,0,8,0,"L2_KING_03");
};

func void rtn_lager2_3004()
{
	ta_muell(8,0,23,0,"L2_KING_01");
	ta_muell(23,0,8,0,"L2_KING_01");
};

func void rtn_einseinsstep1_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_02");
	ta_muell(23,0,8,0,"L1_LAGER_02");
};

func void rtn_einseinsstep2_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_01");
	ta_muell(23,0,8,0,"L1_LAGER_01");
};

func void rtn_einseinsstep3_3004()
{
	ta_muell(8,0,23,0,"WEG1_1_02");
	ta_muell(23,0,8,0,"WEG1_1_02");
};

func void rtn_einseinsstep4_3004()
{
	ta_muell(8,0,23,0,"WEG1_1_03");
	ta_muell(23,0,8,0,"WEG1_1_03");
};

func void rtn_einseinsstep5_3004()
{
	ta_muell(8,0,23,0,"L1_MINE_01");
	ta_muell(23,0,8,0,"L1_MINE_01");
};

func void rtn_einszweistep1_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_02");
	ta_muell(23,0,8,0,"L2_LAGER_02");
};

func void rtn_einszweistep2_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_01");
	ta_muell(23,0,8,0,"L2_LAGER_01");
};

func void rtn_einszweistep3_3004()
{
	ta_muell(8,0,23,0,"WEG1_2_02");
	ta_muell(23,0,8,0,"WEG1_2_02");
};

func void rtn_einszweistep4_3004()
{
	ta_muell(8,0,23,0,"WEG1_2_03");
	ta_muell(23,0,8,0,"WEG1_2_03");
};

func void rtn_einszweistep5_3004()
{
	ta_muell(8,0,23,0,"L2_MINE_01");
	ta_muell(23,0,8,0,"L2_MINE_01");
};

func void rtn_zweieinsstep1_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_04");
	ta_muell(23,0,8,0,"L1_LAGER_04");
};

func void rtn_zweieinsstep2_3004()
{
	ta_muell(8,0,23,0,"WEG2_1_01");
	ta_muell(23,0,8,0,"WEG2_1_01");
};

func void rtn_zweieinsstep3_3004()
{
	ta_muell(8,0,23,0,"WEG2_1_02");
	ta_muell(23,0,8,0,"WEG2_1_02");
};

func void rtn_zweieinsstep4_3004()
{
	ta_muell(8,0,23,0,"WEG2_1_03");
	ta_muell(23,0,8,0,"WEG2_1_03");
};

func void rtn_zweieinsstep5_3004()
{
	ta_muell(8,0,23,0,"WEG2_1_04");
	ta_muell(23,0,8,0,"WEG2_1_04");
};

func void rtn_zweieinsstep6_3004()
{
	ta_muell(8,0,23,0,"WEG2_1_05");
	ta_muell(23,0,8,0,"WEG2_1_05");
};

func void rtn_zweizweistep6_3004()
{
	ta_muell(8,0,23,0,"WEG2_2_05");
	ta_muell(23,0,8,0,"WEG2_2_05");
};

func void rtn_zweizweistep5_3004()
{
	ta_muell(8,0,23,0,"WEG2_2_04");
	ta_muell(23,0,8,0,"WEG2_2_04");
};

func void rtn_zweizweistep4_3004()
{
	ta_muell(8,0,23,0,"WEG2_2_03");
	ta_muell(23,0,8,0,"WEG2_2_03");
};

func void rtn_zweizweistep3_3004()
{
	ta_muell(8,0,23,0,"WEG2_2_02");
	ta_muell(23,0,8,0,"WEG2_2_02");
};

func void rtn_zweizweistep2_3004()
{
	ta_muell(8,0,23,0,"WEG2_2_01");
	ta_muell(23,0,8,0,"WEG2_2_01");
};

func void rtn_zweizweistep1_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_04");
	ta_muell(23,0,8,0,"L2_LAGER_04");
};

func void rtn_vmap_eins_step1_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_02");
	ta_muell(23,0,8,0,"L1_LAGER_02");
};

func void rtn_vmap_eins_step2_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_05");
	ta_muell(23,0,8,0,"L1_LAGER_05");
};

func void rtn_vmap_eins_step3_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_07");
	ta_muell(23,0,8,0,"L1_LAGER_07");
};

func void rtn_vmap_eins_step4_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_09");
	ta_muell(23,0,8,0,"L1_LAGER_09");
};

func void rtn_vmap_eins_step5_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_11");
	ta_muell(23,0,8,0,"L1_LAGER_11");
};

func void rtn_vmap_eins_step6_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_13");
	ta_muell(23,0,8,0,"L1_LAGER_13");
};

func void rtn_vmap_eins_step7_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_15");
	ta_muell(23,0,8,0,"L1_LAGER_15");
};

func void rtn_vmap_eins_step8_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_17");
	ta_muell(23,0,8,0,"L1_LAGER_17");
};

func void rtn_vmap_eins_step9_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_18");
	ta_muell(23,0,8,0,"L1_LAGER_18");
};

func void rtn_vmap_eins_step10_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_20");
	ta_muell(23,0,8,0,"L1_LAGER_20");
};

func void rtn_vmap_eins_step11_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_21");
	ta_muell(23,0,8,0,"L1_LAGER_21");
};

func void rtn_vmap_eins_step12_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_23");
	ta_muell(23,0,8,0,"L1_LAGER_23");
};

func void rtn_vmap_eins_step13_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_26");
	ta_muell(23,0,8,0,"L1_LAGER_26");
};

func void rtn_vmap_eins_step14_3004()
{
	ta_muell(8,0,23,0,"L1_LAGER_27");
	ta_muell(23,0,8,0,"L1_LAGER_27");
};

func void rtn_vmap_zwei_step1_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_02");
	ta_muell(23,0,8,0,"L2_LAGER_02");
};

func void rtn_vmap_zwei_step2_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_05");
	ta_muell(23,0,8,0,"L2_LAGER_05");
};

func void rtn_vmap_zwei_step3_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_07");
	ta_muell(23,0,8,0,"L2_LAGER_07");
};

func void rtn_vmap_zwei_step4_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_09");
	ta_muell(23,0,8,0,"L2_LAGER_09");
};

func void rtn_vmap_zwei_step5_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_11");
	ta_muell(23,0,8,0,"L2_LAGER_11");
};

func void rtn_vmap_zwei_step6_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_13");
	ta_muell(23,0,8,0,"L2_LAGER_13");
};

func void rtn_vmap_zwei_step7_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_15");
	ta_muell(23,0,8,0,"L2_LAGER_15");
};

func void rtn_vmap_zwei_step8_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_17");
	ta_muell(23,0,8,0,"L2_LAGER_17");
};

func void rtn_vmap_zwei_step9_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_18");
	ta_muell(23,0,8,0,"L2_LAGER_18");
};

func void rtn_vmap_zwei_step10_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_20");
	ta_muell(23,0,8,0,"L2_LAGER_20");
};

func void rtn_vmap_zwei_step11_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_21");
	ta_muell(23,0,8,0,"L2_LAGER_21");
};

func void rtn_vmap_zwei_step12_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_23");
	ta_muell(23,0,8,0,"L2_LAGER_23");
};

func void rtn_vmap_zwei_step13_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_26");
	ta_muell(23,0,8,0,"L2_LAGER_26");
};

func void rtn_vmap_zwei_step14_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_27");
	ta_muell(23,0,8,0,"L2_LAGER_27");
};

func void rtn_vmap_mine_step01_3004()
{
	ta_muell(8,0,23,0,"L2_LAGER_27A");
	ta_muell(23,0,8,0,"L2_LAGER_27A");
};

func void rtn_vmap_mine_step02_3004()
{
	ta_muell(8,0,23,0,"MINE_2_01");
	ta_muell(23,0,8,0,"MINE_2_01");
};

func void rtn_vmap_mine_step03_3004()
{
	ta_muell(8,0,23,0,"MINE_2_03");
	ta_muell(23,0,8,0,"MINE_2_03");
};

func void rtn_vmap_mine_step04_3004()
{
	ta_muell(8,0,23,0,"MINE_2_04");
	ta_muell(23,0,8,0,"MINE_2_04");
};

func void rtn_vmap_mine_step05_3004()
{
	ta_muell(8,0,23,0,"MINE_01");
	ta_muell(23,0,8,0,"MINE_01");
};

func void rtn_vmap_mine_step06_3004()
{
	ta_muell(8,0,23,0,"MINE");
	ta_muell(23,0,8,0,"MINE");
};

func void rtn_vmap_mine_step07_3004()
{
	ta_muell(8,0,23,0,"MINE_01");
	ta_muell(23,0,8,0,"MINE_01");
};

func void rtn_vmap_mine_step08_3004()
{
	ta_muell(8,0,23,0,"MINE_1_05");
	ta_muell(23,0,8,0,"MINE_1_05");
};

func void rtn_vmap_mine_step09_3004()
{
	ta_muell(8,0,23,0,"MINE_1_05");
	ta_muell(23,0,8,0,"MINE_1_05");
};

func void rtn_vmap_mine_step10_3004()
{
	ta_muell(8,0,23,0,"MINE_1_04");
	ta_muell(23,0,8,0,"MINE_1_04");
};

func void rtn_vmap_mine_step11_3004()
{
	ta_muell(8,0,23,0,"MINE_1_02");
	ta_muell(23,0,8,0,"MINE_1_02");
};

func void rtn_vmap_mine_step12_3004()
{
	ta_muell(8,0,23,0,"MINE_1_02");
	ta_muell(23,0,8,0,"MINE_1_02");
};

func void rtn_vmap_mine_step13_3004()
{
	ta_muell(8,0,23,0,"MINE_1_01");
	ta_muell(23,0,8,0,"MINE_1_01");
};

