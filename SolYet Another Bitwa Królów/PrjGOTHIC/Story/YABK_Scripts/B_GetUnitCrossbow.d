// Plik zawiera funkcje do uzyskania kodu kuszy uzywanej przez jednostke danej frakcji oraz poziomu.

// Funkcja zwraca kod kuszy w zaleznosci od poziomu kuszy jednostki.
// Dotyczy wszystkich typow jednostek, w tym bohaterow.
// crossbow_level - poziom kuszy (od 1 do 4).
func int B_GetUnitCrossbow(var int crossbow_level)
{
	if (crossbow_level == 0)
	{
		return -1;
	}
	else if (crossbow_level == 1)
	{
		return ItRw_Crossbow_L_02;
	}
	else if (crossbow_level == 2)
	{
		return ItRw_Crossbow_M_01;
	}
	else if (crossbow_level == 3)
	{
		return ItRw_Crossbow_M_02;
	}
	else
	{
		return ItRw_Crossbow_H_01;
	};
};