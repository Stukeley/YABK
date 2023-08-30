// Plik zawiera funkcje do uzyskania kodu pancerza uzywanego przez jednostke danej frakcji oraz poziomu.

// Funkcja zwraca kod pancerza w zaleznosci od frakcji oraz poziomu jednostki lub pancerza jednostki.
// Dotyczy: bohaterow, zolnierzy oraz najemnikow.
// fraktion - frakcja jednostki - PAL (Paladyn), DJG (Lowca Smokow), TMP (Templariusz). Ozywieniec jest obslugiwany za pomoca funkcji B_SetSkelettVisual.
// level - poziom jednostki 1-4.
func int B_GetUnitArmor(var int fraktion, var int level)
{
	if (fraktion == PAL)
	{
		if (level == 1)
		{
			return ItAr_MIL_L;
		}
		else if (level == 2)
		{
			return ItAr_MIL_M;
		}
		else if (level == 3)
		{
			return ItAr_PAL_M;
		}
		else if (level == 4)
		{
			return ItAr_PAl_H;
		};
	}
	else if (fraktion == DJG)
	{
		if (level == 1)
		{
			return ItAr_Sld_L;
		}
		else if (level == 2)
		{
			return itar_sld_M;
		}
		else if (level == 3)
		{
			return itar_djg_l;
		}
		else if (level == 4)
		{
			return itar_djg_h;
		};
	}
	else if (fraktion == TMP)
	{
		if (level == 1)
		{
			return itar_snov_l;
		}
		else if (level == 2)
		{
			return itar_tmp_l;
		}
		else if (level == 3)
		{
			return itar_tmp_m;
		}
		else if (level == 4)
		{
			return itar_tmp_h;
		};
	};

	return -1;
};