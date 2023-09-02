// Plik zawiera funkcje i stale zwiazane z czasem.

const int REAL_SECONDS_PER_GAME_MINUTE = 5;

// Funkcja (najprawdopodobniej) wykorystywana do debugowania, albo wcale.
func void b_call(var int integer)
{
	var string print_int;
	print_int = IntToString(integer);
	Print(print_int);
};

// Funkcja zwracajaca godzine w grze (0-23).
// startHour - poczatkowa godzina danego wywolania funkcji.
// endHour - koncowa godzina danego wywolania funkcji.
func int Wld_GetHour(var int startHour, var int endHour)
{
	// Dodatkowe zabezpieczenie.
	if (startHour > 23)
	{
		startHour = 0;
		endHour = 1;
	};

	if (Wld_IsTime(startHour, 0, endHour, 0) == 1)
	{
		return startHour;
	}
	else
	{
		return Wld_GetHour(startHour + 1, endHour + 1);
	};
};

// Funkcja zwracajaca minute w grze (0-59).
// hour - aktualna godzina.
// startMinute - poczatkowa minuta danego wywolania funkcji.
// endMinute - koncowa minuta danego wywolania funkcji.
func int Wld_GetMinute(var int hour, var int startMinute, var int endMinute)
{
	// Dodatkowe zabezpieczenie.
	if (startMinute > 59)
	{
		startMinute = 0;
		endMinute = 1;
	};

	if (Wld_IsTime(hour, startMinute, hour, endMinute) == 1)
	{
		return startMinute;
	}
	else
	{
		return Wld_GetMinute(hour, startMinute + 1, endMinute + 1);
	};
};

// Funkcja zwracajaca dokladny czas w grze w minutach.
func int Wld_GetExactTime()
{
	var int hour;
	var int minute;
	var int time;

	hour = Wld_GetHour(0, 1);
	minute = Wld_GetMinute(hour, 0, 1);

	time = hour * 60 + minute;

	return time;
};

// Funkcja zwracajaca dokladny czas w grze w minutach.
// Po co to jest?
func int Wld_GetTime_Intern()
{
	var int time;
	time = Wld_GetDay() * 1440;
	time = time + Wld_GetExactTime();
	return time;
};

