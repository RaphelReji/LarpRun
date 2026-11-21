extends TextureButton


func _on_mouse_entered():
	scale = Vector2(1.15,1.15)
	
func  _on_mouse_exited():
	scale = Vector2(1,1)
	
func  _ready() -> void:
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
