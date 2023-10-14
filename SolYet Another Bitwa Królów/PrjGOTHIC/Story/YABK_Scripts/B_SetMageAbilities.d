// Zmiana parametrow Magow (w zaleznosci od posiadanych ulepszen).

// Funkcja zmieniajaca parametry stworzonego Maga (C_Npc) w zaleznosci od gildii (gil) z uwzglednieniem m.in. ulepszen.
// gil - gildia (GIL_PAL = czerwoni, lub GIL_DJG = niebiescy)
func void B_SetMageAbilities(var C_Npc slf, var int gil)
{
	// Frakcja maga - PAL (Paladyn), DJG (Lowca Smokow), TMP (Templariusz), SKE (Ozywieniec).
	var int fraktion;

	// Czy Magowie zostali ulepszeni przez Uczonego (TRUE/FALSE).
	var int magierupdate;
	var int ThirdCircle;
	var int FourthCircle;
	var int FifthCircle;
	var int SixthCircle;

	// Czy Magowie posiadaja ulepszenie "Bryla Lodu" (TRUE/FALSE).	[Niewykorzystywane?]
	var int eisblockerforscht;

	// Czy Magowie posiadaja ulepszenie "Uzdrowienie" (TRUE/FALSE).
	var int wundenheilenerforscht;

	// Czy Magowie posiadaja ulepszenie "Blyskawica" (TRUE/FALSE).
	var int blitzschlagerforscht;

	// Czy Magowie posiadaja ulepszenie "Pelnia Zycia" (TRUE/FALSE).
	var int heiltrankerforscht;

	// Czy Magowie posiadaja ulepszenie "Korzen" (TRUE/FALSE). [Niewykorzystywane?]
	var int rankenerforscht;

	// Ustawiony uzywany spell.
	var int favoritspell;

	// Perk "Zdrowie".
	var int bonusHpPerk;

	// Poziom maga (jaki?).
	var int stufe;
	//Twarz postaci, uzyte do losowania
	var int Face;

	// Domyslne atrybuty maga.
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

	if (gil == GIL_PAL)
	{
		stufe = L1_MAGE_LEVEL;
		bonusHpPerk = L1_bonusHpPerk;
		fraktion = FRAKTION_L1;
		magierupdate = L1_MAGIERUPDATE;
		FourthCircle = L1_FourthCircle;
		FifthCircle = L1_FifthCircle;
		SixthCircle = L1_SixthCircle;
		eisblockerforscht = L1_EISBLOCKERFORSCHT;
		wundenheilenerforscht = L1_WUNDENHEILENERFORSCHT;
		blitzschlagerforscht = L1_BLITZSCHLAGERFORSCHT;
		heiltrankerforscht = L1_HEILTRANKERFORSCHT;
		rankenerforscht = L1_RANKENERFORSCHT;
		favoritspell = L1_FAVORITSPELL;
	}
	else if (gil == GIL_DJG)
	{
		stufe = L2_MAGE_LEVEL;
		bonusHpPerk = L2_bonusHpPerk;
		fraktion = FRAKTION_L2;
		magierupdate = L2_MAGIERUPDATE;
		FourthCircle = L2_FourthCircle;
		FifthCircle = L2_FifthCircle;
		SixthCircle = L2_SixthCircle;
		eisblockerforscht = L2_EISBLOCKERFORSCHT;
		wundenheilenerforscht = L2_WUNDENHEILENERFORSCHT;
		blitzschlagerforscht = L2_BLITZSCHLAGERFORSCHT;
		heiltrankerforscht = L1_HEILTRANKERFORSCHT;
		rankenerforscht = L2_RANKENERFORSCHT;
		favoritspell = L2_FAVORITSPELL;
	};

	// Przypisanie wygladu maga w zaleznosci od frakcji.
	if (fraktion != SKE)
	{
		Mdl_SetVisual(slf, "humans.mds");
	};

	Mdl_ApplyOverlayMds(slf,"humans_mage.mds");

	Face = Hlp_Random(20);
	Face = Face+65;
	if (fraktion == PAL || fraktion == PCH)
	{
		if (magierupdate == TRUE)
		{
			slf.name[0] = "Uczeñ";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face, BodyTex_B, Itar_Mages_Fire_2);
		}
		else if (FourthCircle == TRUE)
		{
			slf.name[0] = "M³ody Mag";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face, BodyTex_B, Itar_Mages_Fire_3);		
		}
		else if (FifthCircle == TRUE)
		{
			slf.name[0] = "Mag";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face, BodyTex_B, Itar_Mages_Fire_4);		
		}
		else if (SixthCircle == TRUE)
		{
			slf.name[0] = "Arcymag";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face, BodyTex_B, Itar_Mages_Fire_5);		
		}
		else
		{
			slf.name[0] = "Nowicjusz";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face, BodyTex_B, Itar_Mages_Fire_1);
		};
	}
	else if (fraktion == DJG)
	{
		if (magierupdate == TRUE)
		{
			slf.name[0] = "Uczeñ";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Water_2);
		}
		else if (FourthCircle == TRUE)
		{
			slf.name[0] = "M³ody Mag";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Water_3);		
		}
		else if (FifthCircle == TRUE)
		{
			slf.name[0] = "Mag";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Water_4);		
		}
		else if (SixthCircle == TRUE)
		{
			slf.name[0] = "Arcymag";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Water_5);		
		}
		else
		{
			slf.name[0] = "Nowicjusz";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Water_1);
		};
	}
	else if (fraktion == TMP)
	{
		if (magierupdate == TRUE)
		{
			slf.name[0] = "Uczeñ";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Swamp_2);
		}
		else if (FourthCircle == TRUE)
		{
			slf.name[0] = "M³ody Mag";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Swamp_3);		
		}
		else if (FifthCircle == TRUE)
		{
			slf.name[0] = "Mag";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Swamp_4);		
		}
		else if (SixthCircle == TRUE)
		{
			slf.name[0] = "Arcymag";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Swamp_5);		
		}
		else
		{
			slf.name[0] = "Nowicjusz";
			B_SetNpcVisual(slf, MALE, "Hum_Head_Fighter", Face_B_Saturas, BodyTex_B, Itar_Mages_Swamp_1);
		};
	}
	else if (fraktion == SKE || fraktion == ORC)
	{
		if (magierupdate == TRUE)
		{
			slf.name[0] = "Uczeñ";
			B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_MadPsi,BodyTex_N,Itar_Mages_Dark_2);
		}
		else if (FourthCircle == TRUE)
		{
			slf.name[0] = "M³ody Mag";
			B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_MadPsi,BodyTex_N,Itar_Mages_Dark_3);		
		}
		else if (FifthCircle == TRUE)
		{
			slf.name[0] = "Mag";
			B_SetSkelettVisual(slf, 6);		
		}
		else if (SixthCircle == TRUE)
		{
			slf.name[0] = "Arcymag";
			B_SetNpcVisual(self,MALE,"Ske_Head",0,0,Itar_Mages_Dark_5);		
		}
		else
		{
			slf.name[0] = "Nowicjusz";
			B_SetNpcVisual(self,MALE,"Hum_Head_Bald",Face_N_MadPsi,BodyTex_N,Itar_Mages_Dark_1);
		};
	};

	// aivar - tablica sterujaca AI.
	// Dlaczego takie wartosci?
	slf.aivar[99] = 3;
	if (LOAD == 0)
	{
		slf.aivar[74] = 1;
	}
	else
	{
		slf.aivar[74] = LOAD;
	};

	// Ustawienie statystyk oraz stylu walki w zaleznosci czy magowie sa ulepszeni czy nie.
	// [BALANS]
	if (magierupdate == TRUE)
	{
		B_SetAttributesToChapter(slf, 1);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else if (FourthCircle == TRUE)
	{
		B_SetAttributesToChapter(slf, 2);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else if (FifthCircle == TRUE)
	{
		B_SetAttributesToChapter(slf, 3);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else if (SixthCircle == TRUE)
	{
		B_SetAttributesToChapter(slf, 4);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else
	{
		B_SetAttributesToChapter(slf, 0);
		slf.fight_tactic = FAI_HUMAN_NORMAL;
	};

	slf.guild = gil;
	slf.voice = 7;
	slf.npcType = npctype_main;

	Mdl_SetModelFatness(slf, 0);
	B_GiveNpcTalents(slf);
	slf.aivar[AIV_MagicUser] = MAGIC_ALWAYS;

	B_CreateAmbientInv(slf);

	slf.senses = SENSE_SEE | SENSE_SMELL;
	slf.senses_range = 1250;

	B_SetFightSkills(slf, 10);
	CreateInvItems(slf,ItRu_FireBolt,1);
	CreateInvItems(slf, ItRu_Icebolt,1);
	CreateInvItems(slf,ItRu_Concussionbolt,1);

	// Jezeli magowie maja ulepszenie "Bryla Lodu" to tworzymy rune.
	if(eisblockerforscht == TRUE)
	{
		CreateInvItems(slf, ItRu_IceCube, 1);
	};
	if (FourthCircle == TRUE)
	{	
		CreateInvItems(slf, ItRu_Firestorm, 1);
	};
	if (FifthCircle == TRUE)
	{	
		CreateInvItems(slf, ItRu_ChargeFireball, 1);
	};
	if (SixthCircle == TRUE)
	{
		CreateInvItems(slf, ItRu_Pal_Circle_6,1);
	};
	// Jezeli magowie maja ulepszenie "Uzdrowienie" to tworzymy rune.
	if(wundenheilenerforscht == TRUE)
	{
		CreateInvItems(slf, ItRu_FullHeal, 1);
		slf.aivar[90] = TRUE;
	}
	else
	{
		slf.aivar[90] = FALSE;
	};

	// Jezeli magowie maja ulepszenie "Blyskawica" to tworzymy rune.
	if(blitzschlagerforscht == TRUE)
	{
		CreateInvItems(slf, ItRu_LightningFlash, 1);
	};

	// Jezeli magowie maja ulepszenie "Pelnia Zycia" to tworzymy rune.
	if(heiltrankerforscht == TRUE)
	{
		CreateInvItems(slf, ItPo_Health_Addon_04, 1);
	};

	// Je¿eli magowie maja ulepszenie "Korzen" to tworzymy rune.
	if(rankenerforscht == TRUE)
	{
		CreateInvItems(slf, ItRu_GreenTentacle, 1);
	};
	if (magierupdate == TRUE)
	{
		if (fraktion == DJG){
			CreateInvItems(slf, ItRu_Zap,1);
		}
		else if(fraktion == SKE)
		{
			CreateInvItems(slf,ItRu_Pal_Circle_6,1);
		}
		else if (fraktion == TMP)
		{
			CreateInvItems(slf,ItRu_FireBolt,1);
		}
		else
		{
			CreateInvItems(slf, ItRu_InstantFireball,1);
		};

	}
	else if (FourthCircle == TRUE)
	{
		if(fraktion == DJG)
		{
			
			CreateInvItems(slf,ItRu_Icelance,1);
		}
		else if(fraktion == SKE)
		{
			CreateInvItems(slf,ItRu_BreathOfDeath,1);
		}
		else if (fraktion == TMP)
		{
			CreateInvItems(slf,ItRu_FireBolt,1);
		}
		else
		{
			CreateInvItems(slf, ItRu_Firestorm,1);
		};

	
	}
	else if(FifthCircle == TRUE)
	{
		if(fraktion == DJG)
		{
			CreateInvItems(slf,ItRu_LightningFlash,1);
		}
		else if(fraktion == SKE)
		{
			CreateInvItems(slf,ItRu_Skull,1);
		}
		else if (fraktion == TMP)
		{
			CreateInvItems(slf,ItRu_Deathball,1);
		}
		else
		{
			CreateInvItems(slf, ItRu_ChargeFireball,1);
		};

	}
	else if(SixthCircle == TRUE)
	{
		if(fraktion == DJG)
		{
			CreateInvItems(slf,ItRu_Pal_Circle_6,1);
		}
		else if(fraktion == SKE)
		{
			CreateInvItems(slf,ItRu_BeliarsRage,1);
		}
		else if (fraktion == TMP)
		{
			CreateInvItems(slf,ItRu_Deathbolt,1);
		}
		else
		{
			CreateInvItems(self,ItRu_Waterfist,1);
		};

	};
	// Ustawiamy uzywany spell na wybrany w dialogu.
	slf.aivar[89] = favoritspell;


	// Ustawiamy dodatkowe zdrowie [perk za honor].
	if (bonusHpPerk == TRUE)
	{
		B_SetUnitHpOverLimit(slf, gil);
	};
};

