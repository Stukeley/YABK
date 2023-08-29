// Zmiana parametrow Zolnierzy (w zaleznosci od posiadanych ulepszen).
// TODO - pierszy priorytet to ogarnac ten plik

// Funkcja zmieniajaca parametry stworzonego Zolnierza (C_Npc) w zaleznosci od gildii (gil) z uwzglednieniem m.in. ulepszen.
// gil - gildia (GIL_PAL lub GIL_DJG)
func void b_setsoldierabilities(var C_Npc slf,var int gil)
{
	var int stufe;
	var int face;
	var int fraktion;
	var int used_armor;
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
	Npc_SetTalentSkill(self,NPC_TALENT_1H,0);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,0);
	slf.aivar[96] = stufe;
	if(gil == GIL_PAL)
	{
		stufe = L1_SOLDIER_LEVEL;
	}
	else if(gil == GIL_DJG)
	{
		stufe = L2_SOLDIER_LEVEL;
	};
	face = Face_N_NormalBart01 + stufe;
	if(gil == GIL_PAL)
	{
		fraktion = FRAKTION_L1;
		if(L1_UNSTERBLICHKEIT == TRUE)
		{
			slf.flags = NPC_FLAG_IMMORTAL;
		};
		if(L1_HEILTRANKERFORSCHT == TRUE)
		{
			CreateInvItems(slf,ItPo_Health_Addon_04,1);
		};
		used_armor = L1_USED_ARMOR;
		slf.name[0] = NPCNAME_SOLDAT_PAL;
	}
	else
	{
		fraktion = FRAKTION_L2;
		if(L2_UNSTERBLICHKEIT == TRUE)
		{
			slf.flags = NPC_FLAG_IMMORTAL;
		};
		if(L2_HEILTRANKERFORSCHT == TRUE)
		{
			CreateInvItems(slf,ItPo_Health_Addon_04,1);
		};
		used_armor = L2_USED_ARMOR;
		slf.name[0] = NPCNAME_SOLDAT_DJG;
	};
	slf.aivar[98] = face;
	slf.aivar[99] = 1;
	slf.aivar[75] = used_armor;
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
		if(used_armor == 1)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,ITAR_Mil_L);
		}
		else if(used_armor == 2)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,ItAr_MIL_M);
		}
		else if(used_armor == 3)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,ItAr_PAL_M);
		}
		else if(used_armor == 4)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,ItAr_PAl_H);
		};
	}
	else if(fraktion == DJG)
	{
		if(used_armor == 1)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,ItAr_Sld_L);
		}
		else if(used_armor == 2)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,itar_sld_M);
		}
		else if(used_armor == 3)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,itar_djg_l);
		}
		else if(used_armor == 4)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,itar_djg_h);
		};
	}
	else if(fraktion == TMP)
	{
		if(used_armor == 1)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,itar_snov_l);
		}
		else if(used_armor == 2)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,itar_tmp_l);
		}
		else if(used_armor == 3)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,itar_tmp_m);
		}
		else if(used_armor == 4)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_N,itar_tmp_h);
		};
	}
	else if(fraktion == SKE)
	{
		if(used_armor == 1)
		{
			b_setskelettvisual(slf,1);
		}
		else if(used_armor == 2)
		{
			b_setskelettvisual(slf,2);
		}
		else if(used_armor == 3)
		{
			b_setskelettvisual(slf,3);
		}
		else if(used_armor == 4)
		{
			b_setskelettvisual(slf,4);
		};
	};
	slf.guild = gil;
	slf.voice = 6;
	slf.npcType = npctype_main;
	if(fraktion != SKE)
	{
		Mdl_SetVisual(slf,"humans.mds");
	};
	Mdl_ApplyOverlayMds(slf,"humans_relaxed.mds");
	Mdl_SetModelFatness(slf,0);
	B_GiveNpcTalents(slf);
	B_CreateAmbientInv(slf);
	slf.senses = SENSE_SEE | SENSE_SMELL | SENSE_HEAR;
	slf.senses_range = 2500;
	if(stufe == 1)
	{
		B_SetAttributesToChapter(slf,0);
		B_SetFightSkills(slf,10);
		Npc_SetTalentSkill(self,NPC_TALENT_1H,0);
		slf.fight_tactic = FAI_HUMAN_COWARD;
	};
	if(stufe == 2)
	{
		B_SetAttributesToChapter(slf,1);
		B_SetFightSkills(slf,30);
		Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
		slf.fight_tactic = FAI_HUMAN_COWARD;
	};
	if(stufe == 3)
	{
		B_SetAttributesToChapter(slf,2);
		B_SetFightSkills(slf,45);
		Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
		slf.fight_tactic = FAI_HUMAN_NORMAL;
	};
	if(stufe == 4)
	{
		B_SetAttributesToChapter(slf,3);
		B_SetFightSkills(slf,60);
		Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
		slf.fight_tactic = FAI_HUMAN_NORMAL;
	};
	if(stufe == 5)
	{
		B_SetAttributesToChapter(slf,4);
		B_SetFightSkills(slf,70);
		Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
		slf.fight_tactic = FAI_HUMAN_STRONG;
	};
	if(stufe == 6)
	{
		B_SetAttributesToChapter(slf,5);
		B_SetFightSkills(slf,80);
		Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
		slf.fight_tactic = FAI_HUMAN_STRONG;
	};
	if(stufe == 7)
	{
		B_SetAttributesToChapter(slf,6);
		B_SetFightSkills(slf,90);
		Npc_SetTalentSkill(self,NPC_TALENT_1H,2);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	};
	if(gil == GIL_DJG)
	{
		if(L2_USED_WEAPON == 1)
		{
			EquipItem(slf,itmw_shortsword_djg);
		}
		else if(L2_USED_WEAPON == 2)
		{
			EquipItem(slf,itmw_sword_djg);
		}
		else if(L2_USED_WEAPON == 3)
		{
			EquipItem(slf,itmw_langschwert_djg);
		}
		else if(L2_USED_WEAPON == 4)
		{
			EquipItem(slf,itmw_elbastardo_djg);
		};
	}
	else if(gil == GIL_PAL)
	{
		if(L1_USED_WEAPON == 1)
		{
			EquipItem(slf,itmw_shortsword_pal);
		}
		else if(L1_USED_WEAPON == 2)
		{
			EquipItem(slf,itmw_sword_pal);
		}
		else if(L1_USED_WEAPON == 3)
		{
			EquipItem(slf,itmw_langschwert_pal);
		}
		else if(L1_USED_WEAPON == 4)
		{
			EquipItem(slf,itmw_elbastardo_pal);
		};
	};
};

