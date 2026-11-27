extends Area2D

@onready var game_manager: Node = %GameManager
@export var speed = 150.0
var direction = 1

func _physics_process(delta: float) -> void:
	$RayCast2D.target_position.x = 30 * direction
	$RayCast2D.force_raycast_update()

	if $RayCast2D.is_colliding():
		direction *= -1

	position.x += speed * direction * delta


func _on_body_entered(body: Node2D) -> void:
		print("Something touched the saw: ", body.name)
		if(body.name == "CharacterBody2D"):
			var x_delta = body.position.x - position.x
			game_manager.decrease_health()
			if (x_delta > 0):
				body.jump_slide(500)
			else:
				body.jump_slide(-500)
