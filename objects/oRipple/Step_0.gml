/// @description Set alarm to change direction

if alarm_get(0) == -1
	alarm_set(0, random_range(minTimer,maxTimer))