
func void b_call(var int integer)
{
	var string print_int;
	print_int = IntToString(integer);
	Print(print_int);
};

func int wld_gethour()
{
	if(Wld_IsTime(0,0,1,0) == 1)
	{
		return 0;
	}
	else if(Wld_IsTime(1,0,2,0) == 1)
	{
		return 1;
	}
	else if(Wld_IsTime(2,0,3,0) == 1)
	{
		return 2;
	}
	else if(Wld_IsTime(3,0,4,0) == 1)
	{
		return 3;
	}
	else if(Wld_IsTime(4,0,5,0) == 1)
	{
		return 4;
	}
	else if(Wld_IsTime(5,0,6,0) == 1)
	{
		return 5;
	}
	else if(Wld_IsTime(6,0,7,0) == 1)
	{
		return 6;
	}
	else if(Wld_IsTime(7,0,8,0) == 1)
	{
		return 7;
	}
	else if(Wld_IsTime(8,0,9,0) == 1)
	{
		return 8;
	}
	else if(Wld_IsTime(9,0,10,0) == 1)
	{
		return 9;
	}
	else if(Wld_IsTime(10,0,11,0) == 1)
	{
		return 10;
	}
	else if(Wld_IsTime(11,0,12,0) == 1)
	{
		return 11;
	}
	else if(Wld_IsTime(12,0,13,0) == 1)
	{
		return 12;
	}
	else if(Wld_IsTime(13,0,14,0) == 1)
	{
		return 13;
	}
	else if(Wld_IsTime(14,0,15,0) == 1)
	{
		return 14;
	}
	else if(Wld_IsTime(15,0,16,0) == 1)
	{
		return 15;
	}
	else if(Wld_IsTime(16,0,17,0) == 1)
	{
		return 16;
	}
	else if(Wld_IsTime(17,0,18,0) == 1)
	{
		return 17;
	}
	else if(Wld_IsTime(18,0,19,0) == 1)
	{
		return 18;
	}
	else if(Wld_IsTime(19,0,20,0) == 1)
	{
		return 19;
	}
	else if(Wld_IsTime(20,0,21,0) == 1)
	{
		return 20;
	}
	else if(Wld_IsTime(21,0,22,0) == 1)
	{
		return 21;
	}
	else if(Wld_IsTime(22,0,23,0) == 1)
	{
		return 22;
	}
	else if(Wld_IsTime(23,0,0,0) == 1)
	{
		return 23;
	};
};

func int wld_getminute(var int hour)
{
	var int minute;
	if(Wld_IsTime(hour,0,hour,15) == 1)
	{
		minute = 0;
	}
	else if(Wld_IsTime(hour,14,hour,30) == 1)
	{
		minute = 14;
	}
	else if(Wld_IsTime(hour,29,hour,45) == 1)
	{
		minute = 29;
	}
	else
	{
		minute = 44;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	}
	else
	{
		minute = minute + 1;
	};
	if(Wld_IsTime(hour,minute,hour,minute + 2) == 1)
	{
		return minute;
	};
};

func int wld_getexacttime()
{
	var int hour;
	var int minute;
	var int time;
	hour = wld_gethour();
	minute = wld_getminute(hour);
	time = hour * 60;
	time = time + minute;
	return time;
};

func int wld_gettime_intern()
{
	var int time;
	time = Wld_GetDay() * 1440;
	time = time + wld_getexacttime();
	return time;
};

