// Plik zwiazany z perkiem "Zdrowie" kupowanym za punkty honoru.

// Przelicznik ilosci dodatkowego HP z perka "Zdrowie" [1 / HPOVERLIMIT_RATIO];
const int HPOVERLIMIT_RATIO = 5;

// Funkcja ustawiajca jednostce dodatkowe HP [perk za honor zamiast niesmiertelnosci].
// slf - jednostka, ktorej ustawiamy dodatkowe HP.
// gil - gildia (GIL_PAL = czerwoni, lub GIL_DJG = niebiescy)
func void B_SetUnitHpOverLimit(var C_Npc slf, var int gil)
{
	if (gil == GIL_PAL && L1_BONUSHPPERK == FALSE)
	{
		return;
	};
	if (gil == GIL_DJG && L2_BONUSHPPERK == FALSE)
	{
		return;
	};

	var int maxHp;
	maxHp = slf.attribute[ATR_HITPOINTS_MAX];

	var int bonusHp;
	bonusHp = maxHp / HPOVERLIMIT_RATIO;

	slf.attribute[ATR_HITPOINTS_MAX] = maxHp + bonusHp;

	Wld_PlayEffect("spellFX_Innoseye", slf, slf, 0, 0, 0, FALSE);
};