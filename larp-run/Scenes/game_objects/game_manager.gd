extends Node
@onready var points_label: Label = %PointsLabel
@export var hearts :Array[Node]
@onready var character_body_2d: CharacterBody2D = %CharacterBody2D

var points = 0
var lives = 3

func _ready() -> void:
	GameData.start_level()

func decrease_health():
	lives -= 1
	character_body_2d.take_damage()
	print(lives)
	for h in range(hearts.size()):
		if( h < lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	if (lives == 0):
		get_tree().reload_current_scene()

func add_point():
	points += 1
	print(points)
	points_label.text = "Points:" + str(points)
