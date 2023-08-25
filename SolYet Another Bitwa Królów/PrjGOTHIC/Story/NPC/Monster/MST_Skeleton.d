
prototype Mst_Default_Skeleton(C_Npc)
{
	name[0] = "Szkielet";
	guild = GIL_OUT;
	aivar[AIV_MM_REAL_ID] = ID_SKELETON;
	B_SetAttributesToChapter(self,8);
	attribute[ATR_STRENGTH] = 150;
	attribute[ATR_DEXTERITY] = 200;
	attribute[ATR_HITPOINTS_MAX] = 770;
	attribute[ATR_HITPOINTS] = 770;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 200;
	protection[PROT_EDGE] = 200;
	protection[PROT_POINT] = 220;
	protection[PROT_FIRE] = 200;
	protection[PROT_FLY] = 200;
	protection[PROT_MAGIC] = 0;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_HUMAN_MASTER;
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_MONSTER_ACTIVE_MAX;
	aivar[AIV_MM_FollowTime] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] = FALSE;
	start_aistate = ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] = OnlyRoutine;
};

func void B_SetVisuals_Skeleton()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
	Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
	Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
	Mdl_SetVisualBody(self,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};

func void B_SetVisuals_Lesser_Skeleton()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
	Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
	Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_skeleton.mds");
	Mdl_SetVisualBody(self,"Ske_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
};


instance Skeleton(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance SKELETON_01(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance SKELETON_02(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance SKELETON_03(Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance PAL_SKELETON(Mst_Default_Skeleton)
{
	name[0] = "Rot - Skelett";
	B_SetVisuals_Skeleton();
	guild = GIL_MIL;
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance DJG_SKELETON(Mst_Default_Skeleton)
{
	name[0] = "Szkielet";
	B_SetVisuals_Skeleton();
	guild = GIL_SLD;
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Summoned_Skeleton(Mst_Default_Skeleton)
{
	name[0] = "Szkielet";
	guild = gil_summoned_skeleton;
	aivar[AIV_MM_REAL_ID] = id_summoned_skeleton;
	level = 0;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 150;
	attribute[ATR_HITPOINTS_MAX] = 150;
	attribute[ATR_HITPOINTS] = 150;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 125;
	protection[PROT_EDGE] = 125;
	protection[PROT_POINT] = 175;
	protection[PROT_FIRE] = 125;
	protection[PROT_FLY] = 125;
	fight_tactic = FAI_HUMAN_NORMAL;
	B_SetVisuals_Lesser_Skeleton();
	aivar[AIV_PARTYMEMBER] = TRUE;
	B_SetAttitude(self,ATT_FRIENDLY);
	start_aistate = ZS_MM_Rtn_Summoned;
	B_SetVisuals_Lesser_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Lesser_Skeleton(Mst_Default_Skeleton)
{
	name[0] = "Szkielet";
	level = 15;
	attribute[ATR_STRENGTH] = 45;
	attribute[ATR_DEXTERITY] = 75;
	attribute[ATR_HITPOINTS_MAX] = 150;
	attribute[ATR_HITPOINTS] = 150;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 80;
	protection[PROT_EDGE] = 80;
	protection[PROT_POINT] = 130;
	protection[PROT_FIRE] = 80;
	protection[PROT_FLY] = 80;
	fight_tactic = FAI_HUMAN_NORMAL;
	B_SetVisuals_Lesser_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Crypt_Skeleton_Room_01(Mst_Default_Skeleton)
{
	name[0] = "Krypta-Wächter";
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
	CreateInvItem(self,ItKe_EVT_CRYPT_01);
};

instance Crypt_Skeleton_Room_02(Mst_Default_Skeleton)
{
	name[0] = "Krypta-Wächter";
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
	CreateInvItem(self,ItKe_EVT_CRYPT_02);
};

instance Crypt_Skeleton_Room_03(Mst_Default_Skeleton)
{
	name[0] = "Krypta-Wächter";
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
	CreateInvItem(self,ItKe_EVT_CRYPT_03);
};

instance Skeleton_Archol1(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Archol2(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Skeleton_Archol3(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Archol4(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Skeleton_Archol5(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Archol6(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Skeleton_Mario1(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Mario2(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

instance Skeleton_Mario3(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_1h_MISC_Sword);
};

instance Skeleton_Mario4(Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride] = TRUE;
	B_SetVisuals_Skeleton();
	EquipItem(self,ItMw_2H_Sword_M_01);
};

