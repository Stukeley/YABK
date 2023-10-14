// Pierwszy Kopacz w Kopalni Czerwonego Obozu

instance DJG_7013_COOK(Npc_Default)
{
	name[0] = NPCNAME_MINENARBEITER;
	guild = GIL_NONE;
	id = 7013;
	voice = 6;
	npcType = NPC_FLAG_GHOST | npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	B_SetAttributesToChapter(self,1);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	if(FRAKTION_L2 == SKE)
	{
			Mdl_SetVisualBody(self,"Zom_Body",0,0,"Zom_Head",0,DEFAULT,-1);
	}
	else 
	{
			B_SetNpcVisual (self, MALE, "Hum_Head_Pony", Face_B_Normal01, BodyTex_B, itar_pal_prisoner);	
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	B_CreateAmbientInv(self);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = rtn_start_7013;
};


func void rtn_start_7013()
{
	TA_Pick_Ore(8,0,23,0,"L2_CAULDRON_000");
	TA_Pick_Ore(23,0,8,0,"L2_CAULDRON_000");
};

