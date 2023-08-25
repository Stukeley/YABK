
instance NONE_3003_MUELLMANN(Npc_Default)
{
	name[0] = NPCNAME_MUELLMANN;
	guild = GIL_NONE;
	id = 3003;
	voice = 6;
	npcType = NPC_FLAG_GHOST | npctype_main;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	aivar[92] = 0;
	aivar[97] = 4;
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
	daily_routine = rtn_lager2_3003;
};


func void rtn_lager1_3003()
{
	ta_muell(8,0,23,0,"L1_KING_01");
	ta_muell(23,0,8,0,"L1_KING_01");
};

func void rtn_l1vorkoenig_3003()
{
	ta_muell(8,0,23,0,"L1_KING_03");
	ta_muell(23,0,8,0,"L1_KING_03");
};

func void rtn_l1ebene2_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_04");
	ta_muell(23,0,8,0,"L1_LAGER_04");
};

func void rtn_l1ebene1_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_05");
	ta_muell(23,0,8,0,"L1_LAGER_05");
};

func void rtn_l1ebene11_3003()
{
	ta_muell(8,0,23,0,"PASS_17");
	ta_muell(23,0,8,0,"PASS_17");
};

func void rtn_pass1_3003()
{
	ta_muell(8,0,23,0,"PASS_15");
	ta_muell(23,0,8,0,"PASS_15");
};

func void rtn_pass11_3003()
{
	ta_muell(8,0,23,0,"PASS_13");
	ta_muell(23,0,8,0,"PASS_13");
};

func void rtn_pass111_3003()
{
	ta_muell(8,0,23,0,"PASS_11");
	ta_muell(23,0,8,0,"PASS_11");
};

func void rtn_pass222_3003()
{
	ta_muell(8,0,23,0,"PASS_21");
	ta_muell(23,0,8,0,"PASS_21");
};

func void rtn_pass22_3003()
{
	ta_muell(8,0,23,0,"PASS_23");
	ta_muell(23,0,8,0,"PASS_23");
};

func void rtn_pass2_3003()
{
	ta_muell(8,0,23,0,"PASS_25");
	ta_muell(23,0,8,0,"PASS_25");
};

func void rtn_l2ebene11_3003()
{
	ta_muell(8,0,23,0,"PASS_27");
	ta_muell(23,0,8,0,"PASS_27");
};

func void rtn_l2ebene1_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_05");
	ta_muell(23,0,8,0,"L2_LAGER_05");
};

func void rtn_l2ebene2_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_04");
	ta_muell(23,0,8,0,"L2_LAGER_04");
};

func void rtn_l2vorkoenig_3003()
{
	ta_muell(8,0,23,0,"L2_KING_03");
	ta_muell(23,0,8,0,"L2_KING_03");
};

func void rtn_lager2_3003()
{
	ta_muell(8,0,23,0,"L2_KING_01");
	ta_muell(23,0,8,0,"L2_KING_01");
};

func void rtn_einseinsstep1_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_02");
	ta_muell(23,0,8,0,"L1_LAGER_02");
};

func void rtn_einseinsstep2_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_01");
	ta_muell(23,0,8,0,"L1_LAGER_01");
};

func void rtn_einseinsstep3_3003()
{
	ta_muell(8,0,23,0,"WEG1_1_02");
	ta_muell(23,0,8,0,"WEG1_1_02");
};

func void rtn_einseinsstep4_3003()
{
	ta_muell(8,0,23,0,"WEG1_1_03");
	ta_muell(23,0,8,0,"WEG1_1_03");
};

func void rtn_einseinsstep5_3003()
{
	ta_muell(8,0,23,0,"L1_MINE_01");
	ta_muell(23,0,8,0,"L1_MINE_01");
};

func void rtn_einszweistep1_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_02");
	ta_muell(23,0,8,0,"L2_LAGER_02");
};

func void rtn_einszweistep2_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_01");
	ta_muell(23,0,8,0,"L2_LAGER_01");
};

func void rtn_einszweistep3_3003()
{
	ta_muell(8,0,23,0,"WEG1_2_02");
	ta_muell(23,0,8,0,"WEG1_2_02");
};

func void rtn_einszweistep4_3003()
{
	ta_muell(8,0,23,0,"WEG1_2_03");
	ta_muell(23,0,8,0,"WEG1_2_03");
};

func void rtn_einszweistep5_3003()
{
	ta_muell(8,0,23,0,"L2_MINE_01");
	ta_muell(23,0,8,0,"L2_MINE_01");
};

func void rtn_zweieinsstep1_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_04");
	ta_muell(23,0,8,0,"L1_LAGER_04");
};

func void rtn_zweieinsstep2_3003()
{
	ta_muell(8,0,23,0,"WEG2_1_01");
	ta_muell(23,0,8,0,"WEG2_1_01");
};

func void rtn_zweieinsstep3_3003()
{
	ta_muell(8,0,23,0,"WEG2_1_02");
	ta_muell(23,0,8,0,"WEG2_1_02");
};

func void rtn_zweieinsstep4_3003()
{
	ta_muell(8,0,23,0,"WEG2_1_03");
	ta_muell(23,0,8,0,"WEG2_1_03");
};

func void rtn_zweieinsstep5_3003()
{
	ta_muell(8,0,23,0,"WEG2_1_04");
	ta_muell(23,0,8,0,"WEG2_1_04");
};

func void rtn_zweieinsstep6_3003()
{
	ta_muell(8,0,23,0,"WEG2_1_05");
	ta_muell(23,0,8,0,"WEG2_1_05");
};

func void rtn_zweizweistep6_3003()
{
	ta_muell(8,0,23,0,"WEG2_2_05");
	ta_muell(23,0,8,0,"WEG2_2_05");
};

func void rtn_zweizweistep5_3003()
{
	ta_muell(8,0,23,0,"WEG2_2_04");
	ta_muell(23,0,8,0,"WEG2_2_04");
};

func void rtn_zweizweistep4_3003()
{
	ta_muell(8,0,23,0,"WEG2_2_03");
	ta_muell(23,0,8,0,"WEG2_2_03");
};

func void rtn_zweizweistep3_3003()
{
	ta_muell(8,0,23,0,"WEG2_2_02");
	ta_muell(23,0,8,0,"WEG2_2_02");
};

func void rtn_zweizweistep2_3003()
{
	ta_muell(8,0,23,0,"WEG2_2_01");
	ta_muell(23,0,8,0,"WEG2_2_01");
};

func void rtn_zweizweistep1_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_04");
	ta_muell(23,0,8,0,"L2_LAGER_04");
};

func void rtn_dreieinsstep1_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_03");
	ta_muell(23,0,8,0,"L1_LAGER_03");
};

func void rtn_dreieinsstep2_3003()
{
	ta_muell(8,0,23,0,"MINE_1_01");
	ta_muell(23,0,8,0,"MINE_1_01");
};

func void rtn_dreieinsstep3_3003()
{
	ta_muell(8,0,23,0,"MINE_1_02");
	ta_muell(23,0,8,0,"MINE_1_02");
};

func void rtn_dreieinsstep4_3003()
{
	ta_muell(8,0,23,0,"MINE_1_04");
	ta_muell(23,0,8,0,"MINE_1_04");
};

func void rtn_dreieinsstep5_3003()
{
	ta_muell(8,0,23,0,"MINE_1_06");
	ta_muell(23,0,8,0,"MINE_1_06");
};

func void rtn_dreieinsstep6_3003()
{
	ta_muell(8,0,23,0,"MINE_1_08");
	ta_muell(23,0,8,0,"MINE_1_08");
};

func void rtn_dreizweistep1_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_03");
	ta_muell(23,0,8,0,"L2_LAGER_03");
};

func void rtn_dreizweistep2_3003()
{
	ta_muell(8,0,23,0,"MINE_2_01");
	ta_muell(23,0,8,0,"MINE_2_01");
};

func void rtn_dreizweistep3_3003()
{
	ta_muell(8,0,23,0,"MINE_2_02");
	ta_muell(23,0,8,0,"MINE_2_02");
};

func void rtn_dreizweistep4_3003()
{
	ta_muell(8,0,23,0,"MINE_2_04");
	ta_muell(23,0,8,0,"MINE_2_04");
};

func void rtn_dreizweistep5_3003()
{
	ta_muell(8,0,23,0,"MINE_2_06");
	ta_muell(23,0,8,0,"MINE_2_06");
};

func void rtn_dreizweistep6_3003()
{
	ta_muell(8,0,23,0,"MINE_2_08");
	ta_muell(23,0,8,0,"MINE_2_08");
};

func void rtn_vmap_eins_step1_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_02");
	ta_muell(23,0,8,0,"L1_LAGER_02");
};

func void rtn_vmap_eins_step2_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_05");
	ta_muell(23,0,8,0,"L1_LAGER_05");
};

func void rtn_vmap_eins_step3_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_07");
	ta_muell(23,0,8,0,"L1_LAGER_07");
};

func void rtn_vmap_eins_step4_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_09");
	ta_muell(23,0,8,0,"L1_LAGER_09");
};

func void rtn_vmap_eins_step5_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_11");
	ta_muell(23,0,8,0,"L1_LAGER_11");
};

func void rtn_vmap_eins_step6_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_13");
	ta_muell(23,0,8,0,"L1_LAGER_13");
};

func void rtn_vmap_eins_step7_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_15");
	ta_muell(23,0,8,0,"L1_LAGER_15");
};

func void rtn_vmap_eins_step8_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_17");
	ta_muell(23,0,8,0,"L1_LAGER_17");
};

func void rtn_vmap_eins_step9_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_18");
	ta_muell(23,0,8,0,"L1_LAGER_18");
};

func void rtn_vmap_eins_step10_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_20");
	ta_muell(23,0,8,0,"L1_LAGER_20");
};

func void rtn_vmap_eins_step11_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_21");
	ta_muell(23,0,8,0,"L1_LAGER_21");
};

func void rtn_vmap_eins_step12_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_23");
	ta_muell(23,0,8,0,"L1_LAGER_23");
};

func void rtn_vmap_eins_step13_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_26");
	ta_muell(23,0,8,0,"L1_LAGER_26");
};

func void rtn_vmap_eins_step14_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_27");
	ta_muell(23,0,8,0,"L1_LAGER_27");
};

func void rtn_vmap_zwei_step1_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_02");
	ta_muell(23,0,8,0,"L2_LAGER_02");
};

func void rtn_vmap_zwei_step2_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_05");
	ta_muell(23,0,8,0,"L2_LAGER_05");
};

func void rtn_vmap_zwei_step3_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_07");
	ta_muell(23,0,8,0,"L2_LAGER_07");
};

func void rtn_vmap_zwei_step4_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_09");
	ta_muell(23,0,8,0,"L2_LAGER_09");
};

func void rtn_vmap_zwei_step5_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_11");
	ta_muell(23,0,8,0,"L2_LAGER_11");
};

func void rtn_vmap_zwei_step6_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_13");
	ta_muell(23,0,8,0,"L2_LAGER_13");
};

func void rtn_vmap_zwei_step7_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_15");
	ta_muell(23,0,8,0,"L2_LAGER_15");
};

func void rtn_vmap_zwei_step8_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_17");
	ta_muell(23,0,8,0,"L2_LAGER_17");
};

func void rtn_vmap_zwei_step9_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_18");
	ta_muell(23,0,8,0,"L2_LAGER_18");
};

func void rtn_vmap_zwei_step10_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_20");
	ta_muell(23,0,8,0,"L2_LAGER_20");
};

func void rtn_vmap_zwei_step11_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_21");
	ta_muell(23,0,8,0,"L2_LAGER_21");
};

func void rtn_vmap_zwei_step12_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_23");
	ta_muell(23,0,8,0,"L2_LAGER_23");
};

func void rtn_vmap_zwei_step13_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_26");
	ta_muell(23,0,8,0,"L2_LAGER_26");
};

func void rtn_vmap_zwei_step14_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_27");
	ta_muell(23,0,8,0,"L2_LAGER_27");
};

func void rtn_vmap_mine_step01_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_27A");
	ta_muell(23,0,8,0,"L2_LAGER_27A");
};

func void rtn_vmap_mine_step02_3003()
{
	ta_muell(8,0,23,0,"MINE_2_01");
	ta_muell(23,0,8,0,"MINE_2_01");
};

func void rtn_vmap_mine_step03_3003()
{
	ta_muell(8,0,23,0,"MINE_2_03");
	ta_muell(23,0,8,0,"MINE_2_03");
};

func void rtn_vmap_mine_step04_3003()
{
	ta_muell(8,0,23,0,"MINE_2_04");
	ta_muell(23,0,8,0,"MINE_2_04");
};

func void rtn_vmap_mine_step05_3003()
{
	ta_muell(8,0,23,0,"MINE_01");
	ta_muell(23,0,8,0,"MINE_01");
};

func void rtn_vmap_mine_step06_3003()
{
	ta_muell(8,0,23,0,"MINE");
	ta_muell(23,0,8,0,"MINE");
};

func void rtn_vmap_mine_step07_3003()
{
	ta_muell(8,0,23,0,"MINE_01");
	ta_muell(23,0,8,0,"MINE_01");
};

func void rtn_vmap_mine_step08_3003()
{
	ta_muell(8,0,23,0,"MINE_1_05");
	ta_muell(23,0,8,0,"MINE_1_05");
};

func void rtn_vmap_mine_step09_3003()
{
	ta_muell(8,0,23,0,"MINE_1_05");
	ta_muell(23,0,8,0,"MINE_1_05");
};

func void rtn_vmap_mine_step10_3003()
{
	ta_muell(8,0,23,0,"MINE_1_04");
	ta_muell(23,0,8,0,"MINE_1_04");
};

func void rtn_vmap_mine_step11_3003()
{
	ta_muell(8,0,23,0,"MINE_1_02");
	ta_muell(23,0,8,0,"MINE_1_02");
};

func void rtn_vmap_mine_step12_3003()
{
	ta_muell(8,0,23,0,"MINE_1_02");
	ta_muell(23,0,8,0,"MINE_1_02");
};

func void rtn_vmap_mine_step13_3003()
{
	ta_muell(8,0,23,0,"MINE_1_01");
	ta_muell(23,0,8,0,"MINE_1_01");
};

func void rtn_vmap_hoehle_step01_3003()
{
	ta_muell(8,0,23,0,"L2_LAGER_29");
	ta_muell(23,0,8,0,"L2_LAGER_29");
};

func void rtn_vmap_hoehle_step02_3003()
{
	ta_muell(8,0,23,0,"L2_WARGHOEHLE_03");
	ta_muell(23,0,8,0,"L2_WARGHOEHLE_03");
};

func void rtn_vmap_hoehle_step03_3003()
{
	ta_muell(8,0,23,0,"L2_WARGHOEHLE_06");
	ta_muell(23,0,8,0,"L2_WARGHOEHLE_06");
};

func void rtn_vmap_hoehle_step04_3003()
{
	ta_muell(8,0,23,0,"L2_WARGHOEHLE_10");
	ta_muell(23,0,8,0,"L2_WARGHOEHLE_10");
};

func void rtn_vmap_hoehle_step05_3003()
{
	ta_muell(8,0,23,0,"L2_WARGHOEHLE_13");
	ta_muell(23,0,8,0,"L2_WARGHOEHLE_13");
};

func void rtn_vmap_hoehle_step06_3003()
{
	ta_muell(8,0,23,0,"L2_WARGHOEHLE_16");
	ta_muell(23,0,8,0,"L2_WARGHOEHLE_16");
};

func void rtn_vmap_hoehle_step07_3003()
{
	ta_muell(8,0,23,0,"L2_WARGHOEHLE_19");
	ta_muell(23,0,8,0,"L2_WARGHOEHLE_19");
};

func void rtn_vmap_hoehle_step08_3003()
{
	ta_muell(8,0,23,0,"L2_WARGHOEHLE_21");
	ta_muell(23,0,8,0,"L2_WARGHOEHLE_21");
};

func void rtn_vmap_hoehle_step09_3003()
{
	ta_muell(8,0,23,0,"L2_WARGHOEHLE_23");
	ta_muell(23,0,8,0,"L2_WARGHOEHLE_23");
};

func void rtn_vmap_hoehle_step10_3003()
{
	ta_muell(8,0,23,0,"L1_WARGHOEHLE_16");
	ta_muell(23,0,8,0,"L1_WARGHOEHLE_16");
};

func void rtn_vmap_hoehle_step11_3003()
{
	ta_muell(8,0,23,0,"HOEHLE");
	ta_muell(23,0,8,0,"HOEHLE");
};

func void rtn_vmap_hoehle_step12_3003()
{
	ta_muell(8,0,23,0,"L2_WARGHOEHLE_22");
	ta_muell(23,0,8,0,"L2_WARGHOEHLE_22");
};

func void rtn_vmap_hoehle_step13_3003()
{
	ta_muell(8,0,23,0,"L1_WARGHOEHLE_17");
	ta_muell(23,0,8,0,"L1_WARGHOEHLE_17");
};

func void rtn_vmap_hoehle_step14_3003()
{
	ta_muell(8,0,23,0,"L1_WARGHOEHLE_14");
	ta_muell(23,0,8,0,"L1_WARGHOEHLE_14");
};

func void rtn_vmap_hoehle_step15_3003()
{
	ta_muell(8,0,23,0,"L1_WARGHOEHLE_12");
	ta_muell(23,0,8,0,"L1_WARGHOEHLE_12");
};

func void rtn_vmap_hoehle_step16_3003()
{
	ta_muell(8,0,23,0,"L1_WARGHOEHLE_08");
	ta_muell(23,0,8,0,"L1_WARGHOEHLE_08");
};

func void rtn_vmap_hoehle_step17_3003()
{
	ta_muell(8,0,23,0,"L1_WARGHOEHLE_04");
	ta_muell(23,0,8,0,"L1_WARGHOEHLE_04");
};

func void rtn_vmap_hoehle_step18_3003()
{
	ta_muell(8,0,23,0,"L1_WARGHOEHLE_03");
	ta_muell(23,0,8,0,"L1_WARGHOEHLE_03");
};

func void rtn_vmap_hoehle_step19_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_31");
	ta_muell(23,0,8,0,"L1_LAGER_31");
};

func void rtn_vmap_hoehle_step20_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_29");
	ta_muell(23,0,8,0,"L1_LAGER_29");
};

func void rtn_vmap_hoehle_step21_3003()
{
	ta_muell(8,0,23,0,"L1_LAGER_01");
	ta_muell(23,0,8,0,"L1_LAGER_01");
};

