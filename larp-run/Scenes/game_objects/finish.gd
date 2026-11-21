extends Area2D

@export_file("*.tscn") var target_level: String

func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		get_tree().change_scene_to_file(target_level)
