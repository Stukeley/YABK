// Plik zawiera funkcje do uzyskania kodu broni uzywanej przez jednostke danej frakcji oraz poziomu.

// Funkcja zwraca kod broni w zaleznosci od poziomu broni zolnierza.
// Dotyczy tylko zolnierzy.
// gil - gildia (GIL_PAL lub GIL_DJG)
// weapon_level - poziom broni zolnierza (od 1 do 4).
func int B_GetSoldierWeapon(var int gil, var int weapon_level)
{
	if (gil == GIL_PAL)
	{
		if (weapon_level == 1)
		{
			return itmw_shortsword_pal;
		}
		else if (weapon_level == 2)
		{
			return itmw_sword_pal;
		}
		else if (weapon_level == 3)
		{
			return itmw_langschwert_pal;
		}
		else
		{
			return itmw_elbastardo_pal;
		};
	}
	else if (gil == GIL_DJG)
	{
		if (weapon_level == 1)
		{
			return itmw_shortsword_djg;
		}
		else if (weapon_level == 2)
		{
			return itmw_sword_djg;
		}
		else if (weapon_level == 3)
		{
			return itmw_langschwert_djg;
		}
		else
		{
			return itmw_elbastardo_djg;
		};
	};

	return -1;
};

// Funkcja zwraca kod broni w zaleznosci od poziomu najemnika.
// Dotyczy tylko najemnikow.
// gil - gildia (GIL_PAL lub GIL_DJG)
// merc_level - poziom najemnika (od 1 do 7).
func int B_GetMercWeapon(var int merc_level)
{
	if (merc_level == 1)
	{
		return itmw_shortsword_sk;
	}
	else if (merc_level == 2)
	{
		return itmw_sword_sk;
	}
	else if (merc_level == 3)
	{
		return itmw_langschwert_sk;
	}
	else if (merc_level == 4)
	{
		return itmw_elbastardo_sk;
	}
	// nie wiem co to
	else if (merc_level == 5)
	{
		return -1;
	}
	// ani to
	else if (merc_level == 7)
	{
		return ItMw_2H_Sword_M_01;
	};

	return -1;
};

// Funkcja zwraca kod broni w zaleznosci od poziomu broni bohatera.
// Dotyczy tylko bohaterow.
// weapon_level - poziom broni bohatera (od 0 do 3).
func int B_GetHeroWeapon(var int weapon_level)
{
	if (weapon_level == 0)
	{
		return itmw_hero_1;
	}
	else if (weapon_level == 1)
	{
		return itmw_hero_2;
	}
	else if (weapon_level == 2)
	{
		return itmw_hero_3;
	}
	else
	{
		return itmw_hero_4;
	};
};