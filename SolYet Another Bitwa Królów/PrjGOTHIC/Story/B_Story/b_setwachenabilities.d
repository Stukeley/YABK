
func void b_setwachenabilities(var C_Npc slf,var int gil)
{
	var int stufe;
	var int face;
	var int fraktion;
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
	if(gil == GIL_PAL)
	{
		stufe = L1_WACHEN_LEVEL;
	}
	else if(gil == GIL_DJG)
	{
		stufe = L2_WACHEN_LEVEL;
	};
	face = Face_L_ToughBald01 + stufe;
	if(gil == GIL_PAL)
	{
		fraktion = FRAKTION_L1;
		if(L1_UNSTERBLICHKEIT == TRUE)
		{
			slf.flags = NPC_FLAG_IMMORTAL;
		};
	}
	else if(gil == GIL_DJG)
	{
		fraktion = FRAKTION_L2;
		if(L2_UNSTERBLICHKEIT == TRUE)
		{
			slf.flags = NPC_FLAG_IMMORTAL;
		};
	};
	slf.aivar[98] = face;
	slf.aivar[99] = 5;
	slf.aivar[75] = stufe;
	if(LOAD == 0)
	{
		slf.aivar[74] = 1;
	}
	else
	{
		slf.aivar[74] = LOAD;
	};
	if(fraktion == PAL)
	{
		if(stufe == 1)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ITAR_Mil_L);
		}
		else if(stufe == 2)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ItAr_MIL_M);
		}
		else if(stufe == 3)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ItAr_PAL_M);
		}
		else if(stufe == 4)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ItAr_PAl_H);
		};
	}
	else if(fraktion == DJG)
	{
		if(stufe == 1)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ItAr_Sld_L);
		}
		else if(stufe == 2)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_sld_M);
		}
		else if(stufe == 3)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_djg_l);
		}
		else if(stufe == 4)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_djg_h);
		};
	}
	else if(fraktion == TMP)
	{
		if(stufe == 1)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_snov_l);
		}
		else if(stufe == 2)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_tmp_l);
		}
		else if(stufe == 3)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_tmp_m);
		}
		else if(stufe == 4)
		{
			B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_tmp_h);
		};
	}
	else if(fraktion == SKE)
	{
		if(stufe == 1)
		{
			B_SetSkelettVisual(slf,1);
		}
		else if(stufe == 2)
		{
			B_SetSkelettVisual(slf,2);
		}
		else if(stufe == 3)
		{
			B_SetSkelettVisual(slf,3);
		}
		else if(stufe == 4)
		{
			B_SetSkelettVisual(slf,4);
		};
	};
	if(gil == GIL_PAL)
	{
		slf.name[0] = NPCNAME_WACHE_PAL;
	}
	else if(gil == GIL_DJG)
	{
		slf.name[0] = NPCNAME_WACHE_DJG;
	};
	slf.guild = gil;
	slf.voice = 5;
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
	slf.fight_tactic = FAI_NAILED;
	if(stufe == 1)
	{
		B_SetAttributesToChapter(slf,1);
		B_SetFightSkills(slf,15);
		Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,0);
		EquipItem(slf,ItRw_Crossbow_L_02);
	};
	if(stufe == 2)
	{
		B_SetAttributesToChapter(slf,2);
		B_SetFightSkills(slf,40);
		Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,1);
		EquipItem(slf,ItRw_Crossbow_M_01);
	};
	if(stufe == 3)
	{
		B_SetAttributesToChapter(slf,4);
		B_SetFightSkills(slf,60);
		Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,2);
		EquipItem(slf,ItRw_Crossbow_M_02);
	};
	if(stufe == 4)
	{
		B_SetAttributesToChapter(slf,6);
		B_SetFightSkills(slf,85);
		Npc_SetTalentSkill(self,NPC_TALENT_CROSSBOW,2);
		EquipItem(slf,ItRw_Crossbow_H_01);
	};
};

func void b_updatewachenabilities(var C_Npc slf)
{
	var int stufe;
	var int face;
	var int fraktion;
	var int hp_max;
	var int hp;
	if(!Npc_IsDead(slf))
	{
		if(slf.guild == GIL_PAL)
		{
			stufe = L1_WACHEN_LEVEL;
		}
		else if(slf.guild == GIL_DJG)
		{
			stufe = L2_WACHEN_LEVEL;
		};
		face = Face_L_ToughBald01 + stufe;
		if(slf.guild == GIL_PAL)
		{
			fraktion = FRAKTION_L1;
			if(L1_UNSTERBLICHKEIT == TRUE)
			{
				slf.flags = NPC_FLAG_IMMORTAL;
			};
		}
		else if(slf.guild == GIL_DJG)
		{
			fraktion = FRAKTION_L2;
			if(L2_UNSTERBLICHKEIT == TRUE)
			{
				slf.flags = NPC_FLAG_IMMORTAL;
			};
		};
		if(fraktion == PAL)
		{
			if(stufe == 1)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,ITAR_Mil_L);
			}
			else if(stufe == 2)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,ItAr_MIL_M);
			}
			else if(stufe == 3)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,ItAr_PAL_M);
			}
			else if(stufe == 4)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,ItAr_PAl_H);
			};
		}
		else if(fraktion == DJG)
		{
			if(stufe == 1)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,ItAr_Sld_L);
			}
			else if(stufe == 2)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,itar_sld_M);
			}
			else if(stufe == 3)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,itar_djg_l);
			}
			else if(stufe == 4)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,itar_djg_h);
			};
		}
		else if(fraktion == TMP)
		{
			if(stufe == 1)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,itar_snov_l);
			}
			else if(stufe == 2)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,itar_tmp_l);
			}
			else if(stufe == 3)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,itar_tmp_m);
			}
			else if(stufe == 4)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",face,BodyTex_L,itar_tmp_h);
			};
		}
		else if(fraktion == SKE)
		{
			if(stufe == 1)
			{
				B_SetSkelettVisual(slf,1);
			}
			else if(stufe == 2)
			{
				B_SetSkelettVisual(slf,2);
			}
			else if(stufe == 3)
			{
				B_SetSkelettVisual(slf,3);
			}
			else if(stufe == 4)
			{
				B_SetSkelettVisual(slf,4);
			};
		};
		hp_max = slf.attribute[ATR_HITPOINTS_MAX];
		hp = slf.attribute[ATR_HITPOINTS];
		if(stufe == 1)
		{
			B_SetAttributesToChapter(slf,0);
			B_SetFightSkills(slf,20);
			Mdl_ApplyOverlayMds(slf,"humans_BowT0.mds");
			Mdl_ApplyOverlayMds(slf,"humans_CBowT0.mds");
		};
		if(stufe == 2)
		{
			B_SetAttributesToChapter(slf,2);
			B_SetFightSkills(slf,40);
			Mdl_ApplyOverlayMds(slf,"humans_BowT1.mds");
			Mdl_ApplyOverlayMds(slf,"humans_CBowT1.mds");
		};
		if(stufe == 3)
		{
			B_SetAttributesToChapter(slf,4);
			B_SetFightSkills(slf,60);
			Mdl_ApplyOverlayMds(slf,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(slf,"humans_CBowT2.mds");
		};
		if(stufe == 4)
		{
			B_SetAttributesToChapter(slf,6);
			B_SetFightSkills(slf,85);
			Mdl_ApplyOverlayMds(slf,"humans_BowT2.mds");
			Mdl_ApplyOverlayMds(slf,"humans_CBowT2.mds");
		};
		slf.attribute[ATR_HITPOINTS] = hp + (slf.attribute[ATR_HITPOINTS_MAX] - hp_max);
		if(stufe == 2)
		{
			CreateInvItems(slf,ItRw_Crossbow_M_01,1);
			AI_EquipBestRangedWeapon(self);
		}
		else if(stufe == 3)
		{
			CreateInvItems(slf,ItRw_Crossbow_M_02,1);
			AI_EquipBestRangedWeapon(self);
		}
		else if(stufe == 4)
		{
			CreateInvItems(slf,ItRw_Crossbow_H_01,1);
			AI_EquipBestRangedWeapon(self);
		};
	};
};

