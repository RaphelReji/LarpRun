extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -900.0
@onready var sprite_2d = $Sprite2D
var is_hurt = false

func  jump():
	velocity.y = JUMP_VELOCITY

func jump_slide(x):
	velocity.y = JUMP_VELOCITY
	velocity.x = x
	
func _physics_process(delta: float) -> void:
	if is_hurt:
		return
	
	# animations
	if not is_hurt:
		if(velocity.x > 1 || velocity.x < -1):
			sprite_2d.animation = "running"
		else:
			sprite_2d.animation = "default"
		# Add the gravity.
		if not is_on_floor():
			velocity += get_gravity() * delta
			sprite_2d.animation = "jumping"

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 12)

	move_and_slide()

	var  isLeft = velocity.x < 0
	sprite_2d.flip_h = isLeft
	
	
func take_damage():
	is_hurt = true
	sprite_2d.play("hit")
	await get_tree().create_timer(0.50).timeout
	is_hurt = false
