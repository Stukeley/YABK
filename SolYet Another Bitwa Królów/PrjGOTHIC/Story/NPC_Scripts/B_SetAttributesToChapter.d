// Ustawianie statystyk dowolnego NPC w zaleznosci od jego poziomu.
// Dotyczy zarowno Bohatera jak i jednostek (Zolnierzy i Magow).
// [Balans]

func void B_SetAttributesToChapter(var C_Npc slf,var int kap)
{
	Npc_SetTalentSkill(slf,NPC_TALENT_MAGE,6);
	if(kap == 0)
	{
		slf.level = 3;
		slf.attribute[ATR_STRENGTH] = 10;
		slf.aivar[REAL_STRENGTH] = 10;
		slf.attribute[ATR_DEXTERITY] = 10;
		slf.aivar[REAL_DEXTERITY] = 10;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 40;
		slf.attribute[ATR_HITPOINTS] = 40;
	};
	if(kap == 1)
	{
		slf.level = 10;
		slf.attribute[ATR_STRENGTH] = 50;
		slf.aivar[REAL_STRENGTH] = 50;
		slf.attribute[ATR_DEXTERITY] = 50;
		slf.aivar[REAL_DEXTERITY] = 50;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 160;
		slf.attribute[ATR_HITPOINTS] = 160;
	};
	if(kap == 2)
	{
		slf.level = 20;
		slf.attribute[ATR_STRENGTH] = 100;
		slf.aivar[REAL_STRENGTH] = 100;
		slf.attribute[ATR_DEXTERITY] = 100;
		slf.aivar[REAL_DEXTERITY] = 100;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 280;
		slf.attribute[ATR_HITPOINTS] = 280;
	};
	if(kap == 3)
	{
		slf.level = 30;
		slf.attribute[ATR_STRENGTH] = 125;
		slf.aivar[REAL_STRENGTH] = 125;
		slf.attribute[ATR_DEXTERITY] = 125;
		slf.aivar[REAL_DEXTERITY] = 125;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 400;
		slf.attribute[ATR_HITPOINTS] = 400;
	};
	if(kap == 4)
	{
		slf.level = 40;
		slf.attribute[ATR_STRENGTH] = 150;
		slf.aivar[REAL_STRENGTH] = 150;
		slf.attribute[ATR_DEXTERITY] = 150;
		slf.aivar[REAL_DEXTERITY] = 150;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 520;
		slf.attribute[ATR_HITPOINTS] = 520;
	};
	if(kap == 5)
	{
		slf.level = 50;
		slf.attribute[ATR_STRENGTH] = 175;
		slf.aivar[REAL_STRENGTH] = 175;
		slf.attribute[ATR_DEXTERITY] = 175;
		slf.aivar[REAL_DEXTERITY] = 175;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 630;
		slf.attribute[ATR_HITPOINTS] = 630;
	};
	if(kap == 6)
	{
		slf.level = 60;
		slf.attribute[ATR_STRENGTH] = 200;
		slf.aivar[REAL_STRENGTH] = 200;
		slf.attribute[ATR_DEXTERITY] = 200;
		slf.aivar[REAL_DEXTERITY] = 200;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 745;
		slf.attribute[ATR_HITPOINTS] = 745;
	};
	if(kap == 7)
	{
		slf.level = 70;
		slf.attribute[ATR_STRENGTH] = 300;
		slf.aivar[REAL_STRENGTH] = 300;
		slf.attribute[ATR_DEXTERITY] = 300;
		slf.aivar[REAL_DEXTERITY] = 300;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 10000;
		slf.attribute[ATR_HITPOINTS] = 10000;
	};
	if(kap == 8)
	{
		slf.level = 40;
		slf.attribute[ATR_STRENGTH] = 125;
		slf.attribute[ATR_DEXTERITY] = 210;
		slf.attribute[ATR_HITPOINTS_MAX] = 660;
		slf.attribute[ATR_HITPOINTS] = 660;
		slf.attribute[ATR_MANA_MAX] = 0;
		slf.attribute[ATR_MANA] = 0;
		slf.protection[PROT_BLUNT] = 200;
		slf.protection[PROT_EDGE] = 200;
		slf.protection[PROT_POINT] = 220;
		slf.protection[PROT_FIRE] = 200;
		slf.protection[PROT_FLY] = 200;
		slf.protection[PROT_MAGIC] = 0;
	};
	if(kap == 9)
	{
		slf.level = 80;
		slf.attribute[ATR_STRENGTH] = 200;
		slf.aivar[REAL_STRENGTH] = 200;
		slf.attribute[ATR_DEXTERITY] = 200;
		slf.aivar[REAL_DEXTERITY] = 200;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 880;
		slf.attribute[ATR_HITPOINTS] = 880;
	};
	if(kap == 10)
	{
		slf.level = 90;
		slf.attribute[ATR_STRENGTH] = 240;
		slf.aivar[REAL_STRENGTH] = 240;
		slf.attribute[ATR_DEXTERITY] = 240;
		slf.aivar[REAL_DEXTERITY] = 240;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 1100;
		slf.attribute[ATR_HITPOINTS] = 1100;
	};
	if(kap == 11)
	{
		slf.level = 100;
		slf.attribute[ATR_STRENGTH] = 300;
		slf.aivar[REAL_STRENGTH] = 300;
		slf.attribute[ATR_DEXTERITY] = 300;
		slf.aivar[REAL_DEXTERITY] = 300;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 1350;
		slf.attribute[ATR_HITPOINTS] = 1350;
	};
	if(kap == 12)
	{
		slf.level = 110;
		slf.attribute[ATR_STRENGTH] = 360;
		slf.aivar[REAL_STRENGTH] = 360;
		slf.attribute[ATR_DEXTERITY] = 360;
		slf.aivar[REAL_DEXTERITY] = 360;
		slf.attribute[ATR_MANA_MAX] = 1000;
		slf.aivar[REAL_MANA_MAX] = 1000;
		slf.attribute[ATR_MANA] = 1000;
		slf.attribute[ATR_HITPOINTS_MAX] = 1800;
		slf.attribute[ATR_HITPOINTS] = 1800;
	};
	slf.exp = 500 * ((slf.level + 1) / 2) * (slf.level + 1);
	slf.exp_next = 500 * ((slf.level + 2) / 2) * (slf.level + 1);
};

