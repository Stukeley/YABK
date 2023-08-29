// Zmiana parametrow Bohaterow (w zaleznosci od posiadanych ulepszen).
// TODO - pierszy priorytet to ogarnac ten plik

// Funkcja zmieniajaca parametry stworzonego Bohatera (C_Npc) w zaleznosci od gildii (gil) z uwzglednieniem m.in. ulepszen.
// gil - gildia (GIL_PAL lub GIL_DJG)
func void b_setheroabilities(var C_Npc slf,var int gil)
{
	var int fraktion;
	var int ruestungslevel;
	var int skilllevel;
	var int schwertlevel;
	var int armbrustlevel;
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
	slf.protection[PROT_POINT] = 0;
	slf.protection[PROT_FIRE] = 0;
	slf.protection[PROT_MAGIC] = 0;
	Npc_SetTalentSkill(slf,NPC_TALENT_1H,0);
	Npc_SetTalentSkill(slf,NPC_TALENT_2H,0);
	slf.aivar[96] = 0;
	if(gil == GIL_DJG)
	{
		ruestungslevel = L2_HELD_RUESTUNGLEVEL;
		fraktion = FRAKTION_L2;
		skilllevel = L2_HELD_SKILLLEVEL;
		schwertlevel = L2_HELD_SCHWERTLEVEL;
		slf.name[0] = NPCNAME_HERO_DJG;
	}
	else if(gil == GIL_PAL)
	{
		ruestungslevel = L1_HELD_RUESTUNGLEVEL;
		fraktion = FRAKTION_L1;
		skilllevel = L1_HELD_SKILLLEVEL;
		schwertlevel = L1_HELD_SCHWERTLEVEL;
		slf.name[0] = NPCNAME_HERO_PAL;
	};
	slf.aivar[99] = 4;
	slf.aivar[75] = ruestungslevel;
	if(LOAD == 0)
	{
		slf.aivar[74] = 1;
	}
	else
	{
		slf.aivar[74] = LOAD;
	};
	if(ruestungslevel == 0)
	{
		if(fraktion == DJG)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_sld_M);
		}
		else if(fraktion == Pal)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,ItAr_MIL_M);
		}
		else if(fraktion == TMP)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_tmp_l);
		}
		else if(fraktion == SKE)
		{
			b_setskelettvisual(slf,2);
		};
	}
	else if(ruestungslevel == 1)
	{
		if(fraktion == DJG)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_djg_l);
		}
		else if(fraktion == Pal)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,ItAr_PAL_M);
		}
		else if(fraktion == TMP)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_tmp_m);
		}
		else if(fraktion == SKE)
		{
			b_setskelettvisual(slf,3);
		};
	}
	else if(ruestungslevel >= 2)
	{
		if(fraktion == DJG)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_djg_h);
		}
		else if(fraktion == Pal)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,ItAr_PAl_H);
		}
		else if(fraktion == TMP)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_tmp_h);
		}
		else if(fraktion == SKE)
		{
			b_setskelettvisual(slf,4);
		};
	};
	slf.voice = 6;
	slf.npcType = npctype_main;
	slf.guild = gil;
	if(fraktion != SKE)
	{
		Mdl_SetVisual(slf,"humans.mds");
	};
	Mdl_ApplyOverlayMds(slf,"humans_relaxed.mds");
	Mdl_SetModelFatness(slf,0);
	slf.bodyStateInterruptableOverride = TRUE;
	B_CreateAmbientInv(slf);
	slf.senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	slf.senses_range = 2000;
	B_GiveNpcTalents(slf);
	if(schwertlevel == 0)
	{
		EquipItem(slf,itmw_hero_1);
		slf.HitChance[NPC_TALENT_1H] = 31;
		slf.HitChance[NPC_TALENT_2H] = 31;
		Mdl_ApplyOverlayMds(slf,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST1.mds");
	}
	else if(schwertlevel == 1)
	{
		EquipItem(slf,itmw_hero_2);
		slf.HitChance[NPC_TALENT_1H] = 54;
		slf.HitChance[NPC_TALENT_2H] = 54;
		Mdl_ApplyOverlayMds(slf,"humans_1hST1.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST1.mds");
	}
	else if(schwertlevel == 2)
	{
		EquipItem(slf,itmw_hero_3);
		slf.HitChance[NPC_TALENT_1H] = 77;
		slf.HitChance[NPC_TALENT_2H] = 77;
		Mdl_ApplyOverlayMds(slf,"humans_1hST2.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST2.mds");
	}
	else if(schwertlevel >= 3)
	{
		EquipItem(slf,itmw_hero_4);
		slf.HitChance[NPC_TALENT_1H] = 100;
		slf.HitChance[NPC_TALENT_2H] = 100;
		Mdl_ApplyOverlayMds(slf,"humans_1hST2.mds");
		Mdl_ApplyOverlayMds(slf,"humans_2hST2.mds");
	};
	if(skilllevel >= (7 * TOTEGEGNERFUERSKILLLEVEL))
	{
		B_SetAttributesToChapter(slf,12);
		slf.fight_tactic = FAI_HUMAN_MASTER;
		slf.aivar[96] = 7;
	}
	else if(skilllevel >= (6 * TOTEGEGNERFUERSKILLLEVEL))
	{
		B_SetAttributesToChapter(slf,11);
		slf.fight_tactic = FAI_HUMAN_MASTER;
		slf.aivar[96] = 6;
	}
	else if(skilllevel >= (5 * TOTEGEGNERFUERSKILLLEVEL))
	{
		B_SetAttributesToChapter(slf,10);
		slf.fight_tactic = FAI_HUMAN_MASTER;
		slf.aivar[96] = 5;
	}
	else if(skilllevel >= (4 * TOTEGEGNERFUERSKILLLEVEL))
	{
		B_SetAttributesToChapter(slf,9);
		slf.fight_tactic = FAI_HUMAN_MASTER;
		slf.aivar[96] = 4;
	}
	else if(skilllevel >= (3 * TOTEGEGNERFUERSKILLLEVEL))
	{
		B_SetAttributesToChapter(slf,6);
		slf.fight_tactic = FAI_HUMAN_MASTER;
		slf.aivar[96] = 3;
	}
	else if(skilllevel >= (2 * TOTEGEGNERFUERSKILLLEVEL))
	{
		B_SetAttributesToChapter(slf,5);
		slf.fight_tactic = FAI_HUMAN_STRONG;
		slf.aivar[96] = 2;
	}
	else if(skilllevel >= (1 * TOTEGEGNERFUERSKILLLEVEL))
	{
		B_SetAttributesToChapter(slf,4);
		slf.fight_tactic = FAI_HUMAN_STRONG;
		slf.aivar[96] = 1;
	}
	else if(skilllevel >= 0)
	{
		B_SetAttributesToChapter(slf,3);
		slf.fight_tactic = FAI_HUMAN_STRONG;
		slf.aivar[96] = 0;
	};
	if(gil == GIL_PAL)
	{
		armbrustlevel = L1_HELD_ARMBRUSTLEVEL;
	}
	else
	{
		armbrustlevel = L2_HELD_ARMBRUSTLEVEL;
	};
	if(armbrustlevel == 1)
	{
		EquipItem(slf,ItRw_Crossbow_L_02);
		slf.HitChance[NPC_TALENT_BOW] = 31;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 31;
		Mdl_ApplyOverlayMds(slf,"humans_BowT1.mds");
		Mdl_ApplyOverlayMds(slf,"humans_CBowT1.mds");
	}
	else if(armbrustlevel == 2)
	{
		EquipItem(slf,ItRw_Crossbow_M_01);
		slf.HitChance[NPC_TALENT_BOW] = 54;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 54;
		Mdl_ApplyOverlayMds(slf,"humans_BowT1.mds");
		Mdl_ApplyOverlayMds(slf,"humans_CBowT1.mds");
	}
	else if(armbrustlevel == 3)
	{
		EquipItem(slf,ItRw_Crossbow_M_02);
		slf.HitChance[NPC_TALENT_BOW] = 77;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 77;
		Mdl_ApplyOverlayMds(slf,"humans_BowT2.mds");
		Mdl_ApplyOverlayMds(slf,"humans_CBowT2.mds");
	}
	else if(armbrustlevel == 4)
	{
		EquipItem(slf,ItRw_Crossbow_H_01);
		slf.HitChance[NPC_TALENT_BOW] = 100;
		slf.HitChance[NPC_TALENT_CROSSBOW] = 100;
		Mdl_ApplyOverlayMds(slf,"humans_BowT2.mds");
		Mdl_ApplyOverlayMds(slf,"humans_CBowT2.mds");
	};
	if(L1_WEGAUFTEILUNG < WEGCOUNTER)
	{
		slf.aivar[97] = 1;
	}
	else
	{
		slf.aivar[97] = 2;
	};
	if(MAP == VARUS_MAP)
	{
		slf.aivar[97] = 2;
		slf.aivar[94] = 0;
	};
};

