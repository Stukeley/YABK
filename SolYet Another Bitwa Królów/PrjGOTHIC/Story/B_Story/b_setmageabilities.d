
func void b_setmageabilities(var C_Npc slf,var int gil)
{
	var int fraktion;
	var int magierupdate;
	var int eisblockerforscht;
	var int wundenheilenerforscht;
	var int blitzschlagerforscht;
	var int heiltrankerforscht;
	var int rankenerforscht;
	var int favoritspell;
	var int unsterblichkeit;
	var int stufe;
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
	if(gil == GIL_PAL)
	{
		stufe = L1_MAGE_LEVEL;
		unsterblichkeit = L1_UNSTERBLICHKEIT;
		fraktion = FRAKTION_L1;
		magierupdate = L1_MAGIERUPDATE;
		slf.name[0] = NPCNAME_MAGE_PAL;
		eisblockerforscht = L1_EISBLOCKERFORSCHT;
		wundenheilenerforscht = L1_WUNDENHEILENERFORSCHT;
		blitzschlagerforscht = L1_BLITZSCHLAGERFORSCHT;
		heiltrankerforscht = L1_HEILTRANKERFORSCHT;
		rankenerforscht = L2_RANKENERFORSCHT;
		favoritspell = L1_FAVORITSPELL;
	}
	else if(gil == GIL_DJG)
	{
		stufe = L2_MAGE_LEVEL;
		unsterblichkeit = L2_UNSTERBLICHKEIT;
		fraktion = FRAKTION_L2;
		magierupdate = L2_MAGIERUPDATE;
		slf.name[0] = NPCNAME_MAGE_DJG;
		eisblockerforscht = L2_EISBLOCKERFORSCHT;
		wundenheilenerforscht = L2_WUNDENHEILENERFORSCHT;
		blitzschlagerforscht = L2_BLITZSCHLAGERFORSCHT;
		heiltrankerforscht = L1_HEILTRANKERFORSCHT;
		rankenerforscht = L2_RANKENERFORSCHT;
		favoritspell = L2_FAVORITSPELL;
	};
	if(fraktion != SKE)
	{
		Mdl_SetVisual(slf,"humans.mds");
	};
	Mdl_ApplyOverlayMds(slf,"humans_mage.mds");
	if(fraktion == Pal)
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
		b_setskelettvisual(slf,5);
	};
	slf.aivar[99] = 3;
	if(LOAD == 0)
	{
		slf.aivar[74] = 1;
	}
	else
	{
		slf.aivar[74] = LOAD;
	};
	if(magierupdate == TRUE)
	{
		B_SetAttributesToChapter(slf,5);
		slf.fight_tactic = FAI_HUMAN_MASTER;
	}
	else
	{
		B_SetAttributesToChapter(slf,2);
		slf.fight_tactic = FAI_HUMAN_NORMAL;
	};
	slf.guild = gil;
	slf.voice = 7;
	slf.npcType = npctype_main;
	Mdl_SetModelFatness(slf,0);
	B_GiveNpcTalents(slf);
	slf.aivar[AIV_MagicUser] = MAGIC_ALWAYS;
	B_CreateAmbientInv(slf);
	slf.senses = SENSE_SEE | SENSE_SMELL;
	slf.senses_range = 1250;
	B_SetFightSkills(slf,10);
	CreateInvItems(slf,ItRu_InstantFireball,1);
	if(eisblockerforscht == TRUE)
	{
		CreateInvItems(slf,ItRu_IceCube,1);
	};
	if(wundenheilenerforscht == TRUE)
	{
		CreateInvItems(slf,ItRu_FullHeal,1);
		slf.aivar[90] = TRUE;
	}
	else
	{
		slf.aivar[90] = FALSE;
	};
	if(blitzschlagerforscht == TRUE)
	{
		CreateInvItems(slf,ItRu_LightningFlash,1);
	};
	if(heiltrankerforscht == TRUE)
	{
		CreateInvItems(slf,ItPo_Health_Addon_04,1);
	};
	if(rankenerforscht == TRUE)
	{
		CreateInvItems(slf,ItRu_GreenTentacle,1);
	};
	slf.aivar[89] = favoritspell;
	if(unsterblichkeit == TRUE)
	{
		slf.flags = NPC_FLAG_IMMORTAL;
	};
};

