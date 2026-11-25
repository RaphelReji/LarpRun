extends Area2D

@onready var game_manager: Node = %GameManager
@export var speed = 150.0
var directon = 1

func _physics_process(delta: float) -> void:
	$RayCast2D.target_position.x = 30 * directon
	$RayCast2D.force_raycast_update()

	if $RayCast2D.is_colliding():
		directon *= -1

	position.x += speed * directon * delta


func _on_body_entered(body: Node2D) -> void:
		if body is CharacterBody2D:
			game_manager.decrease_health()
