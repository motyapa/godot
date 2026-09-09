extends Node

var num_levels = 2
var curr_level = 0

var game_scene = "res://main.tscn"
var title_screen = "res://ui/title.tscn"


func restart():
	curr_level = 0
	get_tree().change_scene_to_file(title_screen)
	
func next_level():
	curr_level += 1
	if curr_level <= num_levels:
		get_tree().change_scene_to_file(game_scene)
