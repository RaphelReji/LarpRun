extends Area2D

@export_file("*.tscn") var target_level: String
@export var level_number = 1
func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		GameData.current_level = level_number
		GameData.finish_level()
		get_tree().change_scene_to_file("res://Scenes/menu/level_complete.tscn")
