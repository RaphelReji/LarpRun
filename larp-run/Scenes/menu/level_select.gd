extends Control


var current_world = 1

func _on_next_world_btn_pressed():
	if current_world < 5:
		current_world += 1
		print(current_world)
	update_world_title()
func _on_previous_world_btn_pressed():
	if current_world >1:
		current_world -= 1
		print(current_world)
		update_world_title()
	
func update_world_title():
	for i in range(1,6):
		var world_map = get_node("World" + str(i) + "Map")
		world_map.visible= (i == current_world)
	
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_world_title()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
