extends TextureButton


func _on_mouse_entered():
	scale = Vector2(1.15,1.15)
	
func  _on_mouse_exited():
	scale = Vector2(1,1)
	
func  _ready() -> void:
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	
	
func _on_pressed():
	get_tree().change_scene_to_file("res://Scenes/levels/level1.tscn")


func _on_level_btn_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/levels/level2.tscn")
	


func _on_level_btn_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/levels/level3.tscn")


func _on_level_btn_4_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/levels/level4.tscn")
