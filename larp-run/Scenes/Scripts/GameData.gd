extends Node

var current_level = 1

# LEVEL THINGS

var deaths = 0
var level_start_time = 0
var level_end_time = 0
var completion_time = 0.0


# points

var points_earned = 0
var total_points = 0

func start_level():
	level_start_time = Time.get_ticks_msec()
	
func finish_level():
	var end_time = Time.get_ticks_msec()
	completion_time = snappedf((end_time - level_start_time) / 1000.0, 0.01)
