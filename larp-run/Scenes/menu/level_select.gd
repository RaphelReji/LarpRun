extends Control

var current_world = 1

func _on_next_world_btn_pressed():
	current_world += 1
	print(current_world)

func _on_previous_world_btn_pressed():
	current_world -= 1
	print(current_world)
	
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
