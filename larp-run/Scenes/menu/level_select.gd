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
	$WorldTitle.text="world" + str(current_world)
	var first_level = (current_world -1) * 10 + 1
	for i in range(10):
		var button = $MapPath/LevelButtons.get_child(i)
		button.tooltip_text = "Level" + str(first_level + 1)
		$Background.modulate = Color("#55515f")
	
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
