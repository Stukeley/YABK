func void OldMenu()//nazwa funkcji
{
if(hero.attribute[ATR_MANA]<=9)// Oznacza ¿e jeœli hero ma mniej lub równo: "9" many
{
ManaX = 1800; // pozycja/zmienna wyœwietlania many to 1800
ManaX2 = ManaX + 100; // pozycja/zmienna ukoœnika pomiêdzy to 1800 z wy¿ej plus 100
ManaX3 = ManaX + 150; // pozycja/zmienna max many to 1800 plus 150
}else if(hero.attribute[ATR_MANA]<=99) // jeœli ma mniej b¹dŸ równo 99 many
{
ManaX = 1800; // x = 1400 trzeba dodaæ ¿eby wiedzia³ czym jest mana x gdy np wczytasz grê czy coœ :D
ManaX2 = ManaX + 150; // plus 150
ManaX3 = ManaX + 200; // plus 200  tu ju¿ jak wy¿ej tylko wiêksze liczby
}else if(hero.attribute[ATR_MANA]<=999) // mniej b¹dŸ równo 999
{
ManaX = 1800; //wiadomo
ManaX2 = ManaX + 200;// plus 200
ManaX3 = ManaX + 250;// plus 250
}else if(hero.attribute[ATR_MANA]<=9999)// wiadomo
{
ManaX = 1800;//wiadomo
ManaX2 = ManaX + 300;//wiadomo
ManaX3 = ManaX + 350;//wiadomo
		// UWAGA!! czemu zwiêkszamy pozycjê "X" ? a no bo liczba 100 zajmujê wiêcej miejsca ni¿ 10 i nie mog¹ na siebie nachodziæ
};

if(hero.attribute[ATR_HITPOINTS]<=9)
{
HpX = 1800;// Tutaj to samo co by³o z man¹
HpX2 = HpX + 100;
HpX3 = HpX + 150;
}else if(hero.attribute[ATR_HITPOINTS]<=99)
{
HpX = 1800;
HpX2 = HpX + 150;
HpX3 = HpX + 200;
}else if(hero.attribute[ATR_HITPOINTS]<=999)
{
HpX = 1800;
HpX2 = HpX + 200;
HpX3 = HpX + 250;
}else if(hero.attribute[ATR_HITPOINTS]<=9999)
{
HpX = 1800;
HpX2 = HpX + 250;
HpX3 = HpX + 300;
}; // a¿ dot¹d.

if (hero.guild == 0)//jeœli hero ma gildie zerow¹
{
guild = "Brak";// to wyœwietl jej nazwê (BRAK)
} else if (hero.guild == 1)//jesli ma gildiê nr 1
{
guild = "Palladyn"; // wyœwietli (PALLADYN)
}else if (hero.guild == 2) // i tak dalej.
{
guild = "Stra¿nik";
}else if (hero.guild == 3)
{
guild = "Obywatel";
}else if (hero.guild == 4)
{
guild = "Mag Ognia";
}else if (hero.guild == 5)
{
guild = "Nowicjusz";
}else if (hero.guild == 6)
{
guild = "£owca Smoków";
}else if (hero.guild == 7)
{
guild = "Najemnik";
}else if (hero.guild == 8)
{
guild = "Farmer";
}else if (hero.guild == 9)
{
guild = "Bandyta";
}else if (hero.guild == 10)
{
guild = "Skazaniec";
}else if (hero.guild == 11)
{
guild = "Poszukiwacz";
}else if (hero.guild == 12)
{
guild = "Mieszkaniec";
}else if (hero.guild == 13)
{
guild = "Pirat";
}else if (hero.guild == 14)
{
guild = "Mag Wody";
}else if (hero.guild == 17)
{
guild = "Chrz¹szcz";
}else if (hero.guild == 18)
{
guild = "Owca";
}else if (hero.guild == 19)
{
guild = "Goblin";
}else if (hero.guild == 20)
{
guild = "Szkielet-goblin";
}else if (hero.guild == 21)
{
guild = "Prz. Szkielet Goblin";
}else if (hero.guild == 22)
{
guild = "Œcierwojad";
}else if (hero.guild == 23)
{
guild = "Olbrzymi szczur";
}else if (hero.guild == 24)
{
guild = "Polna bestia";
}else if (hero.guild == 25)
{
guild = "Krwiopijca";
}else if (hero.guild == 26)
{
guild = "Jaszczór";
}else if (hero.guild == 27)
{
guild = "Wilk";
}else if (hero.guild == 28)
{
guild = "Prz. Wilk";
}else if (hero.guild == 29)
{
guild = "Pe³zacz";
}else if (hero.guild == 30)
{
guild = "Topielec";
}else if (hero.guild == 31)
{
guild = "Szkielet";
}else if (hero.guild == 32)
{
guild = "Prz. Szkielet";
}else if (hero.guild == 33)
{
guild = "Szkielet-Mag";
}else if (hero.guild == 34)
{
guild = "Zombie";
}else if (hero.guild == 35)
{
guild = "Zêbacz";
}else if (hero.guild == 36)
{
guild = "Cieniostwór";
}else if (hero.guild == 37)
{
guild = "Szkielet-potwór";
}else if (hero.guild == 38)
{
guild = "Harpia";
}else if (hero.guild == 39)
{
guild = "Kamienny golem";
}else if (hero.guild == 40)
{
guild = "Ognisty golem";
}else if (hero.guild == 41)
{
guild = "Lodowy golem";
}else if (hero.guild == 42)
{
guild = "Prz. golem";
}else if (hero.guild == 43)
{
guild = "Demon";
}else if (hero.guild == 44)
{
guild = "Prz. demon";
}else if (hero.guild == 45)
{
guild = "Troll";
}else if (hero.guild == 46)
{
guild = "W¹¿ b³otny";
}else if (hero.guild == 47)
{
guild = "Smok";
}else if (hero.guild == 48)
{
guild = "Kretoszczur";
}else if (hero.guild == 49)
{
guild = "Aligator";
}else if (hero.guild == 50)
{
guild = "B³otny golem";
}else if (hero.guild == 51)
{
guild = "Stra¿nik";
}else if (hero.guild == 52)
{
guild = "Kamienna puma";
}else if (hero.guild == 54)
{
guild = "Prz. Stra¿nik";
}else if (hero.guild == 55)
{
guild = "Prz.Zombie";
}else if (hero.guild == 59)
{
guild = "Ork";
}else if (hero.guild == 60)
{
guild = "Ork";
}else if (hero.guild == 61)
{
guild = "Ork-o¿ywieniec";
}else if (hero.guild == 62)
{
guild = "Smokowiec";
};//nooo kurwa wszystkie :)

   // ------------------------------------------ //
  // ---------- ZMIENNE ----------------------- //
 // ------------------------------------------ // 
// ---- LVL ----------------------------------//
lvl = hero.level;//zmienna liczbowa lvl(var int lvl) to aktualny level hero.
lvlt	= IntToString(lvl);// Zamieñ zmienn¹ tekstow¹ (var string lvlt) na zmienn¹ liczbow¹ lvl (var int lvl).

// ---- MANA-KRÊGI ----------------------- //
manakreise = Npc_GetTalentSkill(hero, NPC_TALENT_MAGE);// zmienna liczbowa manakreise to aktualny kr¹g magii hero.
manakreiseT = IntToString(manakreise);// zamieñ zmienn¹ tekstow¹ na liczbê krêgu magii.

// ---- EXP ----------------------------- //
exp = hero.exp; // zmienna liczbowa (var int exp) to doœwiadczenie hero.
expt = IntToString(exp); // zamieñ zmienn¹ tekstow¹ na liczbow¹ aby j¹ wyœwietliæ

// ---- N.EXP ---- //
nexp = hero.exp_next; // zmienna liczbowa (var int nexp).
nexpt = IntToString(nexp); // zamiana zmiennej tekstowej (var string nexpt).

// ---- LP ---- //
lp = hero.lp; // Noo i to siê tak ci¹gnie
lpt = IntToString(lp);

   // --------------------------------------- //
  // ------------- ATRYBUTY ---------------- //
 // --------------------------------------- //
// ---- Si³a ----------------------------- //
str = hero.attribute[ATR_STRENGTH]; // by³o t³umaczone z tymi zmiennymi i zamian¹.
strt = IntToString(str);

// ---- Zrêka ---- //
dex = hero.attribute[ATR_DEXTERITY]; // te¿
dext = IntToString(dex);

// ---- Mana ---- // -- TUTAJ!!!!.... Mana i p¿ jest nieco bardziej skomplikowane:
mana = hero.attribute[ATR_MANA];// mana to aktualna iloœæ many hero
mmana = hero.attribute[ATR_MANA_MAX];// mmana to maxymalna iloœæ many hero
manat = IntToString(mana);// manat wy¿ej jako zmienna tekstowa. Teraz zmieniamy j¹ na zmienn¹ liczbow¹
mmanat = IntToString(mmana);// jak wy¿ej chodzi o to aby wyœwietla³o ( CYFRÊ )

// ---- P¯ ---- //
hp = hero.attribute[ATR_HITPOINTS];
mhp = hero.attribute[ATR_HITPOINTS_MAX];
hpt = IntToString(hp);
mhpt = IntToString(mhp); // To samo co z man¹ i (max man¹).

   // ------------------------------------- //  
  // ---------- OCHRONA ------------------ //
 // ------------------------------------- //
// ---- Przed broni¹ ------------------- //
edgw = hero.protection[PROT_EDGE];// tutaj standard by³o wyjaœnione
edgwt = IntToString(edgw);

// ---- Przed strza³ami ---- //
edgp = hero.protection[PROT_POINT];
edgpt = IntToString(edgp);

// ---- Przed ogniem ---- //
edgf = hero.protection[PROT_FIRE];
edgft = IntToString(edgf);

// ---- Przed magi¹ ---- //
edgm = hero.protection[PROT_MAGIC];
edgmt = IntToString(edgm);

   // ---------------------------------- //
  // --------- UMIEJÊTNOŒCI ----------- //
 // ---------------------------------- //
// ---- 1H -------------------------- //
if (Hero.HitChance[NPC_TALENT_1H] >=0) // jeœli szansa trafienia 1h hero jest wieksz b¹dŸ równa 0
{
skill1h = "£amaga";// Wyœwietli (£amaga).
posX1h = 4200;// ustalenia pozycji dla tekstu
posX1h2 = posX1h+1400;
posX1h3 = posX1h2+600;
posX1h4 = posX1h3+100;
};
if (Hero.HitChance[NPC_TALENT_1H] >=30)// jeœli wiêksza b¹dŸ równa 30
{
skill1h = "Wojownik"; // to wojownik 
posX1h = 4200; // ustalenia pozycji tekstu
posX1h2 = posX1h+1400;
posX1h3 = posX1h2+700;
posX1h4 = posX1h3+150;
};
if (Hero.HitChance[NPC_TALENT_1H] >=60) // jesli wiêksza b¹dŸ równa 60
{
skill1h = "Mistrz";// mistrz
posX1h = 4200;// jak wy¿ej
posX1h2 = posX1h+1400;
posX1h3 = posX1h2+500;
posX1h4 = posX1h3+150;
};
if (Hero.HitChance[NPC_TALENT_1H] ==100)// jesli równa 100 poniewa¿ to ju¿ 3 cyfry pozycje s¹ inne
{
posX1h = 4200;
posX1h2 = posX1h+1400;
posX1h3 = posX1h2+500;
posX1h4 = posX1h3+200;
};
JedenH = Hero.HitChance[NPC_TALENT_1H]; // zmienna liczbowa (var int JedenH) to procent szansy trafienia 1h
JedenHtext = IntToString(JedenH);// Zamiana banana na ananasy.

// ---- 2H ---- //
if (Hero.HitChance[NPC_TALENT_2H] >=0) // jeœli szansa trafienia 2h hero jest wieksz b¹dŸ równa 0
{
skill2h = "£amaga";// to zielony
posX2h = 4200;// ustalenia pozycji dla tekstu
posX2h2 = posX2h+1400;
posX2h3 = posX2h2+600;
posX2h4 = posX2h3+100;
};
if (Hero.HitChance[NPC_TALENT_2H] >=30)// jeœli wiêksza b¹dŸ równa 30
{
skill2h = "Wojownik"; // to wojownik 
posX2h = 4200; // ustalenia pozycji tekstu
posX2h2 = posX2h+1400;
posX2h3 = posX2h2+700;
posX2h4 = posX2h3+150;
};
if (Hero.HitChance[NPC_TALENT_2H] >=60) // jesli wiêksza b¹dŸ równa 60
{
skill2h = "Mistrz";// mistrz
posX2h = 4200;// jak wy¿ej
posX2h2 = posX2h+1400;
posX2h3 = posX2h2+500;
posX2h4 = posX2h3+150;
};
if (Hero.HitChance[NPC_TALENT_2H] ==100)// jesli równa 100 poniewa¿ to ju¿ 3 cyfry pozycje s¹ inne
{
posX2h = 4200;
posX2h2 = posX2h+1400;
posX2h3 = posX2h2+500;
posX2h4 = posX2h3+200;
};
DwaH = Hero.HitChance[NPC_TALENT_2H]; // jak w 1h
DwaHtext = IntToString(DwaH);

// ---- £uk ---- //
if (Hero.HitChance[NPC_TALENT_BOW] >=0) // jeœli szansa trafienia £ukiem hero jest wieksz b¹dŸ równa 0
{
skillbow = "Œlepy";
posXbow = 4200;
posXbow2 = posXbow+1400;
posXbow3 = posXbow2+600;
posXbow4 = posXbow3+100;
};
if (Hero.HitChance[NPC_TALENT_BOW] >=30)// jeœli wiêksza b¹dŸ równa 30
{
skillbow = "Strzelec"; 
posXbow = 4200; 
posXbow2 = posXbow+1400;
posXbow3 = posXbow2+700;
posXbow4 = posXbow3+150;
};
if (Hero.HitChance[NPC_TALENT_BOW] >=60) // jesli wiêksza b¹dŸ równa 60
{
skillbow = "Myœliwy";
posXbow = 4200;
posXbow2 = posXbow+1400;
posXbow3 = posXbow2+500;
posXbow4 = posXbow3+150;
};
if (Hero.HitChance[NPC_TALENT_BOW] ==100)// jesli równa 100 poniewa¿ to ju¿ 3 cyfry pozycje s¹ inne
{
posXbow = 4200;
posXbow2 = posXbow+1400;
posXbow3 = posXbow2+500;
posXbow4 = posXbow3+200;
};
BoW = Hero.HitChance[NPC_TALENT_BOW];// jak w 1h i 2h
BowText = IntToString(BoW);

// ---- Kusza ---- //
if (Hero.HitChance[NPC_TALENT_CROSSBOW] >=0) // jeœli szansa trafienia £ukiem hero jest wieksz b¹dŸ równa 0
{
skillCboW = "Œlepy";
posXCboW = 4200;
posXCboW2 = posXCboW+1400;
posXCboW3 = posXCboW2+600;
posXCboW4 = posXCboW3+100;
};
if (Hero.HitChance[NPC_TALENT_CROSSBOW] >=30)// jeœli wiêksza b¹dŸ równa 30
{
skillCboW = "Strzelec"; 
posXCboW = 4200; 
posXCboW2 = posXCboW+1400;
posXCboW3 = posXCboW2+700;
posXCboW4 = posXCboW3+150;
};
if (Hero.HitChance[NPC_TALENT_CROSSBOW] >=60) // jesli wiêksza b¹dŸ równa 60
{
skillCboW = "Myœliwy";
posXCboW = 4200;
posXCboW2 = posXCboW+1400;
posXCboW3 = posXCboW2+500;
posXCboW4 = posXCboW3+150;
};
if (Hero.HitChance[NPC_TALENT_CROSSBOW] ==100)// jesli równa 100 poniewa¿ to ju¿ 3 cyfry pozycje s¹ inne
{
posXCboW = 4200;
posXCboW2 = posXCboW+1400;
posXCboW3 = posXCboW2+500;
posXCboW4 = posXCboW3+200;
};
CboW = Hero.HitChance[NPC_TALENT_CROSSBOW]; // jak w 1h i 2h i ³uku.
CboWText = IntToString(CboW);

// ---- Skradanie siê ---- //
if (Npc_GetTalentSkill (hero,NPC_TALENT_SNEAK) == TRUE)// Jeœli nauczy³ siê skradania.
{
SkillSneak = "Uczony"; // wyœwietli ¿e uczony
} else { // a jak nie
SkillSneak = "-"; // to myœlnik.
};

// ---- W³amywanie siê ---- //
if (Npc_GetTalentSkill (hero,NPC_TALENT_PICKLOCK) == TRUE)
{
SkillPicklock = "Uczony";
} else {
SkillPicklock = "-"; // jak ze skradaniem.
};

// ---- Kradzie¿ ---- //
if (Npc_GetTalentSkill (hero,NPC_TALENT_PICKPOCKET) == TRUE)
{
SkillPickpocket = "Uczony";
} else {
SkillPickpocket = "-"; // jak ze skradaniem.
};

// ---- Tworzenie run ---- //
if (Npc_GetTalentSkill (hero,NPC_TALENT_RUNES) == TRUE)
{
SkillRunes = "Uczony";
} else {
SkillRunes = "-"; // jak ze skradaniem.
};

// ---- Alchemia ---- //
if (Npc_GetTalentSkill (hero,NPC_TALENT_ALCHEMY) == TRUE)
{
SkillAlchemy = "Uczony";
} else {
SkillAlchemy = "-"; // jak ze skradaniem.
};

// ---- Kowalstwo ---- //
if (Npc_GetTalentSkill (hero,NPC_TALENT_SMITH) == TRUE)
{
SkillSmith = "Uczony";
} else {
SkillSmith = "-"; // jak ze skradaniem.
};

// ---- Patroszenie ---- //
if (Npc_GetTalentSkill (hero,NPC_TALENT_TAKEANIMALTROPHY) == TRUE)
{
SkillTakeAnimalTrophy = "Uczony";
} else {
SkillTakeAnimalTrophy = "-"; // jak ze skradaniem
};
// ---- REPUTACJA ---- //
RepKdwT = IntToString(RepKDW);
// RepKdwT (var string RepKdwT) zmienna tekstowa reputacji aby j¹ wyœwietliæ.
// RepKDW (var int RepKDW) zmienna liczbowa reputacji.

if(MEM_KeyState(KEY_J)==KEY_PRESSED)//jaki klawisz bêdzie wciœniêty
{
  var int zmienna;//zmienna

 
                if(zmienna)// jeœli zmienna
				{
			 View_Delete(View);// Usuñ view
	
                } else {
					
				View = View_Create(0, 0, PS_VMax, PS_VMax);//Stwórz View
				View_Open(View);// Otwórz View
				View_SetTexture(View, "Menu_Staty.tga");// Dodaj Teksturkê
				
				// ---- Postaæ ---- //
				View_AddText(View, 800, 1400, "POSTAÆ:", "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Gildia ---- //
				View_AddText(View, 500, 1800, "Gildia:", "FONT_OLD_10_WHITE.TGA" );
				View_AddText(View, 1800, 1800, guild, "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Poziom ----//
				View_AddText(View, 500, 2000, "Poziom:", "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, 1800, 2000, lvlt, "FONT_OLD_10_WHITE.TGA" ); 
				
				// ---- Krêgi Magii ---- //
				View_AddText(View, 500, 2200, "Magia:", "FONT_OLD_10_WHITE.TGA" );
				View_AddText(View, 1800, 2200, "Kr¹g", "FONT_OLD_10_WHITE.TGA" );
				View_AddText(View, 2200, 2200, manakreiseT, "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Doœwiadczenie ---- //
				View_AddText(View, 500, 2400, "Exp:", "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, 1800, 2400, expt, "FONT_OLD_10_WHITE.TGA" ); 
				
				// ---- Doœwiadczenie do nastêpnego poziomu ---- //
				View_AddText(View, 500, 2600, "N.Poziom:", "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, 1800, 2600, nexpt, "FONT_OLD_10_WHITE.TGA" ); 
				
				// ---- Punkty Nauki ---- //
				View_AddText(View, 500, 2800, "Lp:", "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, 1800, 2800, lpt, "FONT_OLD_10_WHITE.TGA" ); 
				
				// ---- Atrybuty ---- //
				View_AddText(View, 800, 3100, "ATRYBUTY:", "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Si³a ---- //
				View_AddText(View, 500, 3500, "Si³a:", "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, 1800, 3500, strt, "FONT_OLD_10_WHITE.TGA" ); 
				
				// ---- Zrêcznoœæ ---- //
				View_AddText(View, 500, 3700, "Zrêcznoœæ:", "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, 1800, 3700, dext, "FONT_OLD_10_WHITE.TGA" ); 
				
				// ---- Mana ---- //
				View_AddText(View, 500, 3900, "Mana:", "FONT_OLD_10_WHITE.TGA" );
				View_AddText(View, ManaX, 3900, manat, "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, ManaX2, 3900, "/", "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, ManaX3, 3900, mmanat, "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Hp ---- //
				View_AddText(View, 500, 4100, "P¿:", "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, HpX, 4100, hpt, "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, HpX2, 4100, "/", "FONT_OLD_10_WHITE.TGA" ); 
				View_AddText(View, HpX3, 4100, mhpt, "FONT_OLD_10_WHITE.TGA" );
				
				// ---- OCHORONA ---- //
				View_AddText(View, 800, 4400, "OCHRONA:", "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Broñ ---- //
				View_AddText(View, 500, 4800, "Przed Broni¹:", "FONT_OLD_10_WHITE.TGA" );
				View_AddText(View, 1800, 4800, edgwt, "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Pociski ----//
				View_AddText(View, 500, 5000, "Przed Pociskami:", "FONT_OLD_10_WHITE.TGA" );
				View_AddText(View, 1800, 5000, edgpt, "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Ogieñ ---- //
				View_AddText(View, 500, 5200, "Przed Ogniem:", "FONT_OLD_10_WHITE.TGA" );
				View_AddText(View, 1800, 5200, edgft, "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Magia ---- //
				View_AddText(View, 500, 5400, "Przed Magi¹:", "FONT_OLD_10_WHITE.TGA" );
				View_AddText(View, 1800, 5400, edgmt, "FONT_OLD_10_WHITE.TGA" );
				
				// ---- UMIEJÊTNOŒCI ---- //
				View_AddText(View, 4500, 1400, "UMIEJÊTNOŒCI:", "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Br. Jednorêczna ---- //
				View_AddText(View, posX1h, 1800, "Broñ jednorêczna:", "FONT_OLD_10_WHITE.TGA" );//broñ 1h
				View_AddText(View, posX1h2, 1800, skill1h, "FONT_OLD_10_WHITE.TGA" );// skill tekst
				View_AddText(View, posX1h3, 1800, JedenHtext, "FONT_OLD_10_WHITE.TGA" );// skill procent
				View_AddText(View, posX1h4, 1800, "%", "FONT_OLD_10_WHITE.TGA" );// "%" znaczek
				
				// ---- Br. Dwórêczna ---- //
				View_AddText(View, posX2h, 2000, "Broñ dwurêczna:", "FONT_OLD_10_WHITE.TGA" );//broñ 2h
				View_AddText(View, posX2h2, 2000, skill2h, "FONT_OLD_10_WHITE.TGA" );// skill tekst
				View_AddText(View, posX2h3, 2000, DwaHtext, "FONT_OLD_10_WHITE.TGA" );// skill procent
				View_AddText(View, posX2h4, 2000, "%", "FONT_OLD_10_WHITE.TGA" );// "%" znaczek

				// ---- £uk ---- //
				View_AddText(View, posXbow, 2200, "Cel. £uk:", "FONT_OLD_10_WHITE.TGA" );//broñ 2h
				View_AddText(View, posXbow2, 2200, skillbow, "FONT_OLD_10_WHITE.TGA" );// skill tekst
				View_AddText(View, posXbow3, 2200, BowText, "FONT_OLD_10_WHITE.TGA" );// skill procent
				View_AddText(View, posXbow4, 2200, "%", "FONT_OLD_10_WHITE.TGA" );// "%" znaczek
				
				// ---- Kusza ---- //
				View_AddText(View, posXbow, 2400, "Cel. Kusza:", "FONT_OLD_10_WHITE.TGA" );//broñ 2h
				View_AddText(View, posXbow2, 2400, skillcbow, "FONT_OLD_10_WHITE.TGA" );// skill tekst
				View_AddText(View, posXbow3, 2400, CboWText, "FONT_OLD_10_WHITE.TGA" );// skill procent
				View_AddText(View, posXbow4, 2400, "%", "FONT_OLD_10_WHITE.TGA" );// "%" znaczek
				
				// ---- Skradanie siê ---- //
				View_AddText(View, 4200, 2700, "Skradanie siê:", "FONT_OLD_10_WHITE.TGA" );//Skradanie siê
				View_AddText(View, 5600, 2700, SkillSneak, "FONT_OLD_10_WHITE.TGA" );//uczony|-
				
				// ---- W³amywanie siê ---- //
				View_AddText(View, 4200, 2900, "W³amywanie siê:", "FONT_OLD_10_WHITE.TGA" );//W³amywanie siê
				View_AddText(View, 5600, 2900, SkillPicklock, "FONT_OLD_10_WHITE.TGA" );// Uczony|-
				
				// ---- Kradzie¿ ---- //
				View_AddText(View, 4200, 3100, "Kradzie¿:", "FONT_OLD_10_WHITE.TGA" );//Kradzie¿
				View_AddText(View, 5600, 3100, SkillPickpocket, "FONT_OLD_10_WHITE.TGA" );// Uczony|-
				
				// ---- Tworzenie run ---- //
				View_AddText(View, 4200, 3400, "Tworzenie run:", "FONT_OLD_10_WHITE.TGA" );//Kradzie¿
				View_AddText(View, 5600, 3400, SkillRunes, "FONT_OLD_10_WHITE.TGA" );// Uczony|-
				
				// ---- Alchemia ---- //
				View_AddText(View, 4200, 3600, "Alchemia:", "FONT_OLD_10_WHITE.TGA" );//Kradzie¿
				View_AddText(View, 5600, 3600, SkillAlchemy, "FONT_OLD_10_WHITE.TGA" );// Uczony|-
				
				// ---- Kowalstwo ---- //
				View_AddText(View, 4200, 3800, "Kowalstwo:", "FONT_OLD_10_WHITE.TGA" );//Kradzie¿
				View_AddText(View, 5600, 3800, SkillSmith, "FONT_OLD_10_WHITE.TGA" );// Uczony|-
				
				// ---- Patroszenie ---- //
				View_AddText(View, 4200, 4100, "Patroszenie:", "FONT_OLD_10_WHITE.TGA" );//Kradzie¿
				View_AddText(View, 5600, 4100, SkillTakeAnimalTrophy, "FONT_OLD_10_WHITE.TGA" );// Uczony|-
				
				// ---- Reputacja ---- //
				View_AddText(View, 4500, 4400, "REPUTACJA:", "FONT_OLD_10_WHITE.TGA" );
				
				// ---- Reputacja u magów Wody ---- //
				View_AddText(View, 4200, 4800, "Magowie wody:", "FONT_OLD_10_WHITE.TGA" );
				View_AddText(View, 5600, 4800, RepKdwT, "FONT_OLD_10_WHITE.TGA" );		
                };
                zmienna = !zmienna;//zmienna jest przeciwna zmiennej
        };
};