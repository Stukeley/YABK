
func void b_setmercabilities(var C_Npc slf,var int gil,var int stufe)
{
	var int face;
	var int fraktion;
	var int unsterblichkeit;
	slf.attribute[ATR_STRENGTH] = 10;
	slf.aivar[REAL_STRENGTH] = 10;
	slf.attribute[ATR_DEXTERITY] = 10;
	slf.aivar[REAL_DEXTERITY] = 10;
	slf.attribute[ATR_MANA_MAX] = 10;
	slf.aivar[REAL_MANA_MAX] = 10;
	slf.attribute[ATR_MANA] = 10;
	slf.attribute[ATR_HITPOINTS_MAX] = 40;
	slf.attribute[ATR_HITPOINTS] = 40;
	slf.HitChance[NPC_TALENT_1H] = 0;
	slf.HitChance[NPC_TALENT_2H] = 0;
	slf.HitChance[NPC_TALENT_BOW] = 0;
	slf.HitChance[NPC_TALENT_CROSSBOW] = 0;
	slf.protection[PROT_EDGE] = 0;
	slf.protection[PROT_BLUNT] = 0;
	slf.protection[PROT_POINT] = 35;
	slf.protection[PROT_FIRE] = 0;
	slf.protection[PROT_MAGIC] = 0;
	slf.aivar[96] = stufe;
	Npc_SetTalentSkill(slf,NPC_TALENT_1H,0);
	Npc_SetTalentSkill(slf,NPC_TALENT_2H,0);
	face = Face_P_NormalBald + stufe;
	if(stufe == 5)
	{
		Mdl_SetVisual(slf,"Golem.mds");
		Mdl_ApplyOverlayMds(slf,"Golem_Icegolem.mds");
		Mdl_SetVisualBody(slf,"Gol_Ice_Body",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	}
	else if(stufe == 7)
	{
		Mdl_SetVisual(slf,"HumanS.mds");
		Mdl_ApplyOverlayMds(slf,"humans_skeleton.mds");
		Mdl_SetVisualBody(slf,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
	};
	if((gil == GIL_PAL) || (gil == GIL_MIL))
	{
		fraktion = FRAKTION_L1;
		unsterblichkeit = L1_UNSTERBLICHKEIT;
	}
	else if((gil == GIL_DJG) || (gil == GIL_SLD))
	{
		fraktion = FRAKTION_L2;
		unsterblichkeit = L2_UNSTERBLICHKEIT;
	};
	slf.aivar[98] = face;
	slf.aivar[99] = 2;
	if(LOAD == 0)
	{
		slf.aivar[74] = 1;
	}
	else
	{
		slf.aivar[74] = LOAD;
	};
	if(fraktion == Pal)
	{
		if(stufe == 1)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,ITAR_Mil_L);
		}
		else if(stufe == 2)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,ItAr_MIL_M);
		}
		else if(stufe == 3)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,ItAr_PAL_M);
		}
		else if(stufe == 4)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,ItAr_PAl_H);
		};
	}
	else if(fraktion == DJG)
	{
		if(stufe == 1)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,ItAr_Sld_L);
		}
		else if(stufe == 2)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,itar_sld_M);
		}
		else if(stufe == 3)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,itar_djg_l);
		}
		else if(stufe == 4)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,itar_djg_h);
		};
	}
	else if(fraktion == TMP)
	{
		if(stufe == 1)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,itar_snov_l);
		}
		else if(stufe == 2)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,itar_tmp_l);
		}
		else if(stufe == 3)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,itar_tmp_m);
		}
		else if(stufe == 4)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Bald",slf.aivar[98],BodyTex_P,itar_tmp_h);
		};
	}
	else if(fraktion == SKE)
	{
		if(stufe == 1)
		{
			b_setskelettvisual(slf,1);
		}
		else if(stufe == 2)
		{
			b_setskelettvisual(slf,2);
		}
		else if(stufe == 3)
		{
			b_setskelettvisual(slf,3);
		}
		else if(stufe == 4)
		{
			b_setskelettvisual(slf,4);
		};
	};
	if(unsterblichkeit == TRUE)
	{
		slf.flags = NPC_FLAG_IMMORTAL;
	};
	slf.guild = gil;
	slf.voice = 6;
	slf.npcType = npctype_main;
	if(stufe <= 4)
	{
		if(fraktion != SKE)
		{
			Mdl_SetVisual(slf,"humans.mds");
		};
		Mdl_ApplyOverlayMds(slf,"humans_relaxed.mds");
	};
	Mdl_SetModelFatness(slf,0);
	B_GiveNpcTalents(slf);
	B_CreateAmbientInv(slf);
	slf.senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	slf.senses_range = 2500;
	if(stufe == 1)
	{
		if(gil == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_1_PAL;
		}
		else if(gil == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_1_DJG;
		};
		B_SetAttributesToChapter(slf,0);
		B_SetFightSkills(slf,20);
		Npc_SetTalentSkill(slf,NPC_TALENT_1H,0);
		slf.fight_tactic = FAI_HUMAN_COWARD;
		EquipItem(slf,itmw_shortsword_sk);
	};
	if(stufe == 2)
	{
		if(gil == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_2_PAL;
		}
		else if(gil == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_2_DJG;
		};
		B_SetAttributesToChapter(slf,2);
		B_SetFightSkills(slf,40);
		Npc_SetTalentSkill(slf,NPC_TALENT_1H,1);
		slf.fight_tactic = FAI_HUMAN_NORMAL;
		EquipItem(slf,itmw_sword_sk);
	};
	if(stufe == 3)
	{
		if(gil == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_3_PAL;
		}
		else if(gil == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_3_DJG;
		};
		B_SetAttributesToChapter(slf,4);
		B_SetFightSkills(slf,60);
		Npc_SetTalentSkill(slf,NPC_TALENT_1H,2);
		slf.fight_tactic = FAI_HUMAN_STRONG;
		EquipItem(slf,itmw_langschwert_sk);
	};
	if(stufe == 4)
	{
		if(gil == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_4_PAL;
		}
		else if(gil == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_4_DJG;
		};
		B_SetAttributesToChapter(slf,6);
		B_SetFightSkills(slf,80);
		Npc_SetTalentSkill(slf,NPC_TALENT_1H,2);
		slf.fight_tactic = FAI_HUMAN_MASTER;
		EquipItem(slf,itmw_elbastardo_sk);
	};
	if(stufe == 5)
	{
		slf.attribute[ATR_STRENGTH] = 480;
		slf.attribute[ATR_DEXTERITY] = 480;
		slf.attribute[ATR_HITPOINTS_MAX] = 800;
		slf.attribute[ATR_HITPOINTS] = 800;
		slf.attribute[ATR_MANA_MAX] = 100;
		slf.attribute[ATR_MANA] = 100;
		slf.protection[PROT_BLUNT] = 190;
		slf.protection[PROT_EDGE] = 190;
		slf.protection[PROT_POINT] = 190;
		slf.protection[PROT_FIRE] = 190;
		slf.protection[PROT_FLY] = 190;
		slf.protection[PROT_MAGIC] = 190;
		slf.fight_tactic = FAI_STONEGOLEM;
		slf.damagetype = DAM_FLY;
	};
	if(stufe == 7)
	{
		if(slf.guild == GIL_PAL)
		{
			slf.name[0] = NPCNAME_MERC_7_PAL;
		}
		else if(slf.guild == GIL_DJG)
		{
			slf.name[0] = NPCNAME_MERC_7_DJG;
		};
		B_SetAttributesToChapter(slf,8);
		slf.fight_tactic = FAI_HUMAN_STRONG;
		B_SetFightSkills(slf,75);
		Mdl_ApplyOverlayMds(slf,"humans_1hST2.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST2.mds");
		slf.damagetype = DAM_EDGE;
		EquipItem(slf,ItMw_2H_Sword_M_01);
	};
};

