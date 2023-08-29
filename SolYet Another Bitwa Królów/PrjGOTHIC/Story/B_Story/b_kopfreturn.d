
func void b_kopfreturn(var C_Npc slf)
{
	var int fraktion;
	var int stufe;
	var int used_armor;
	if((slf.aivar[74] < LOAD) && (slf.aivar[74] != 0))
	{
		if(slf.guild == GIL_DJG)
		{
			fraktion = FRAKTION_L2;
		}
		else
		{
			fraktion = FRAKTION_L1;
		};
		if(slf.aivar[99] == 1)
		{
			used_armor = slf.aivar[75];
			if(fraktion == PAL)
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
					B_SetSkelettVisual(slf,1);
				}
				else if(used_armor == 2)
				{
					B_SetSkelettVisual(slf,2);
				}
				else if(used_armor == 3)
				{
					B_SetSkelettVisual(slf,3);
				}
				else if(used_armor == 4)
				{
					B_SetSkelettVisual(slf,4);
				};
			};
		}
		else if(slf.aivar[99] == 2)
		{
			stufe = slf.aivar[96];
			if(fraktion == PAL)
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
			if(stufe == 7)
			{
				Mdl_ApplyOverlayMds(slf,"humans_skeleton.mds");
				Mdl_SetVisualBody(slf,"Ske_Body2",DEFAULT,DEFAULT,"",DEFAULT,DEFAULT,-1);
			};
		}
		else if(slf.aivar[99] == 3)
		{
			if(fraktion == PAL)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_B_Saturas,BodyTex_B,ItAr_KDF_H);
			}
			else if(fraktion == DJG)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_B_Saturas,BodyTex_B,itar_kdw_h);
			}
			else if(fraktion == TMP)
			{
				B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_B_Saturas,BodyTex_B,itar_gur_h);
			}
			else if(fraktion == SKE)
			{
				B_SetSkelettVisual(slf,5);
			};
		}
		else if(slf.aivar[99] == 4)
		{
			if(slf.aivar[75] == 0)
			{
				if(fraktion == DJG)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_sld_M);
				}
				else if(fraktion == PAL)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,ItAr_MIL_M);
				}
				else if(fraktion == TMP)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_tmp_l);
				}
				else if(fraktion == SKE)
				{
					B_SetSkelettVisual(slf,2);
				};
			}
			else if(slf.aivar[75] == 1)
			{
				if(FRAKTION_L2 == DJG)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_djg_l);
				}
				else if(FRAKTION_L2 == PAL)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,ItAr_PAL_M);
				}
				else if(FRAKTION_L2 == TMP)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_tmp_m);
				}
				else if(fraktion == SKE)
				{
					B_SetSkelettVisual(slf,3);
				};
			}
			else if(slf.aivar[75] >= 2)
			{
				if(fraktion == DJG)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_djg_h);
				}
				else if(fraktion == PAL)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,ItAr_PAl_H);
				}
				else if(fraktion == TMP)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",Face_N_Wolf,BodyTex_N,itar_tmp_h);
				}
				else if(fraktion == SKE)
				{
					B_SetSkelettVisual(slf,4);
				};
			};
		}
		else if(slf.aivar[99] == 5)
		{
			if(fraktion == PAL)
			{
				if(slf.aivar[75] == 1)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ITAR_Mil_L);
				}
				else if(slf.aivar[75] == 2)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ItAr_MIL_M);
				}
				else if(slf.aivar[75] == 3)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ItAr_PAL_M);
				}
				else if(slf.aivar[75] == 4)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ItAr_PAl_H);
				};
			}
			else if(fraktion == DJG)
			{
				if(slf.aivar[75] == 1)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,ItAr_Sld_L);
				}
				else if(slf.aivar[75] == 2)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_sld_M);
				}
				else if(slf.aivar[75] == 3)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_djg_l);
				}
				else if(slf.aivar[75] == 4)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_djg_h);
				};
			}
			else if(fraktion == TMP)
			{
				if(slf.aivar[75] == 1)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_snov_l);
				}
				else if(slf.aivar[75] == 2)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_tmp_l);
				}
				else if(slf.aivar[75] == 3)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_tmp_m);
				}
				else if(slf.aivar[75] == 4)
				{
					B_SetNpcVisual(slf,MALE,"Hum_Head_Fighter",slf.aivar[98],BodyTex_L,itar_tmp_h);
				};
			}
			else if(fraktion == SKE)
			{
				if(slf.aivar[75] == 1)
				{
					B_SetSkelettVisual(slf,1);
				}
				else if(slf.aivar[75] == 2)
				{
					B_SetSkelettVisual(slf,2);
				}
				else if(slf.aivar[75] == 3)
				{
					B_SetSkelettVisual(slf,3);
				}
				else if(slf.aivar[75] == 4)
				{
					B_SetSkelettVisual(slf,4);
				};
			};
		};
		slf.aivar[74] = LOAD;
	};
};

func void ZS_RunToWP()
{
	Perception_Set_Normal();
	B_ResetAll(self);
	b_setunsterblichkeit(self);
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
	AI_SetWalkMode(self,NPC_RUN);
	b_kopfreturn(self);
	if(Npc_GetDistToWP(self,self.wp) > TA_DIST_SELFWP_MAX)
	{
		AI_GotoWP(self,self.wp);
	};
};

func int ZS_RunToWP_Loop()
{
	b_kopfreturn(self);
	if(Npc_HasEquippedRangedWeapon(self))
	{
		AI_ReadyRangedWeapon(self);
	}
	else if(Npc_HasEquippedMeleeWeapon(self))
	{
		AI_ReadyMeleeWeapon(self);
	};
	if(Npc_GetDistToWP(self,self.wp) > TA_DIST_SELFWP_MAX)
	{
		AI_GotoWP(self,self.wp);
	};
	b_setunsterblichkeit(self);
	self.aivar[AIV_TAPOSITION] = ISINPOS;
	if(self.aivar[AIV_TAPOSITION] == ISINPOS)
	{
		if(((self.guild == GIL_DJG) || (self.guild == GIL_SLD)) && (MAP == MAP01))
		{
			if(self.aivar[94] == 0)
			{
				Npc_ExchangeRoutine(self,"L2Ebene2");
			};
			if(self.aivar[94] == 1)
			{
				Npc_ExchangeRoutine(self,"L2Ebene1");
			};
			if(self.aivar[94] == 2)
			{
				Npc_ExchangeRoutine(self,"Pass");
			};
			if(self.aivar[94] == 3)
			{
				Npc_ExchangeRoutine(self,"L1Ebene1");
			};
			if(self.aivar[94] == 4)
			{
				Npc_ExchangeRoutine(self,"L1Ebene2");
			};
			if(self.aivar[94] == 5)
			{
				Npc_ExchangeRoutine(self,"Lager1");
			};
		};
		if(((self.guild == GIL_PAL) || (self.guild == GIL_MIL)) && (MAP == MAP01))
		{
			if(self.aivar[94] == 0)
			{
				Npc_ExchangeRoutine(self,"L1Ebene2");
			};
			if(self.aivar[94] == 1)
			{
				Npc_ExchangeRoutine(self,"L1Ebene1");
			};
			if(self.aivar[94] == 2)
			{
				Npc_ExchangeRoutine(self,"Pass");
			};
			if(self.aivar[94] == 3)
			{
				Npc_ExchangeRoutine(self,"L2Ebene1");
			};
			if(self.aivar[94] == 4)
			{
				Npc_ExchangeRoutine(self,"L2Ebene2");
			};
			if(self.aivar[94] == 5)
			{
				Npc_ExchangeRoutine(self,"Lager2");
			};
		};
		if(((self.guild == GIL_DJG) || (self.guild == GIL_SLD)) && (MAP == MACHTL_MAP) && (self.aivar[97] <= 1))
		{
			if(self.aivar[94] == 0)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg1_2");
			};
			if(self.aivar[94] == 1)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg1_1");
			};
			if(self.aivar[94] == 2)
			{
				Npc_ExchangeRoutine(self,"Lager1");
			};
		};
		if(((self.guild == GIL_DJG) || (self.guild == GIL_SLD)) && (MAP == MACHTL_MAP) && (self.aivar[97] == 2))
		{
			if(self.aivar[94] == 0)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg2_2_1");
			};
			if(self.aivar[94] == 1)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg2_2_2");
			};
			if(self.aivar[94] == 2)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg2_1_2");
			};
			if(self.aivar[94] == 3)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg2_1_1");
			};
			if(self.aivar[94] == 4)
			{
				Npc_ExchangeRoutine(self,"Lager1");
			};
		};
		if(((self.guild == GIL_PAL) || (self.guild == GIL_MIL)) && (MAP == MACHTL_MAP) && (self.aivar[97] <= 1))
		{
			if(self.aivar[94] == 0)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg1_1");
			};
			if(self.aivar[94] == 1)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg1_2");
			};
			if(self.aivar[94] == 2)
			{
				Npc_ExchangeRoutine(self,"Lager2");
			};
		};
		if(((self.guild == GIL_PAL) || (self.guild == GIL_MIL)) && (MAP == MACHTL_MAP) && (self.aivar[97] == 2))
		{
			if(self.aivar[94] == 0)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg2_1_1");
			};
			if(self.aivar[94] == 1)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg2_1_2");
			};
			if(self.aivar[94] == 2)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg2_2_2");
			};
			if(self.aivar[94] == 3)
			{
				Npc_ExchangeRoutine(self,"Map2_Weg2_2_1");
			};
			if(self.aivar[94] == 4)
			{
				Npc_ExchangeRoutine(self,"Lager2");
			};
		};
		if(((MAP == VARUS_MAP) || (MAP == MACHTL_MAP)) && (self.aivar[97] == 3))
		{
			Npc_ExchangeRoutine(self,"Mine");
		};
		if(((self.guild == GIL_PAL) || (self.guild == GIL_MIL)) && (MAP == VARUS_MAP))
		{
			if(self.aivar[94] == 0)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager1_1");
			};
			if(self.aivar[94] == 1)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager1_2");
			};
			if(self.aivar[94] == 2)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager1_3");
			};
			if(self.aivar[94] == 3)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager2_3");
			};
			if(self.aivar[94] == 4)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager2_2");
			};
			if(self.aivar[94] == 5)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager2_1");
			};
			if(self.aivar[94] == 6)
			{
				Npc_ExchangeRoutine(self,"Lager2");
			};
		};
		if(((self.guild == GIL_DJG) || (self.guild == GIL_SLD)) && (MAP == VARUS_MAP))
		{
			if(self.aivar[94] == 0)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager2_1");
			};
			if(self.aivar[94] == 1)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager2_2");
			};
			if(self.aivar[94] == 2)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager2_3");
			};
			if(self.aivar[94] == 3)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager1_3");
			};
			if(self.aivar[94] == 4)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager1_2");
			};
			if(self.aivar[94] == 5)
			{
				Npc_ExchangeRoutine(self,"VarusMap_Lager1_1");
			};
			if(self.aivar[94] == 6)
			{
				Npc_ExchangeRoutine(self,"Lager1");
			};
		};
		if((MAP == VARUS_MAP) && (self.aivar[97] == 4))
		{
			Npc_ExchangeRoutine(self,"HOEHLE");
		};
		self.aivar[94] += 1;
		self.aivar[AIV_TAPOSITION] = NOTINPOS;
	};
	return LOOP_CONTINUE;
};

func int ZS_RunToWP_End()
{
	return TRUE;
};

