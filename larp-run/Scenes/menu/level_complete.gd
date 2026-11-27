extends Control

@onready var level_title: Label = $CenterContainer/CompletionPanel/Content/LevelTitle
@onready var complete_title: Label = $CenterContainer/CompletionPanel/Content/CompleteTitle
@onready var time_label: Label = $CenterContainer/CompletionPanel/Content/TimeLabel
@onready var deaths_label: Label = $CenterContainer/CompletionPanel/Content/DeathsLabel
@onready var points_earned_label: Label = $CenterContainer/CompletionPanel/Content/PointsEarnedLabel
@onready var next_level_btn: Button = $CenterContainer/CompletionPanel/Content/NextLevelBtn
@onready var replay_btn: Button = $CenterContainer/CompletionPanel/Content/ReplayBtn
@onready var level_select_btn: Button = $CenterContainer/CompletionPanel/Content/LevelSelectBtn

var current_level = GameData.current_level
var level_path = "res://Scenes/levels/level" + str(current_level) + ".tscn"
var completion_time = 45.0
var deaths = 2
var points_earned = 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	level_title.text = "LEVEL " + str(current_level)
	time_label.text = "TIME: " + str(GameData.completion_time) + " SECONDS"
	deaths_label.text = "DEATHS: " + str(GameData.deaths)
	points_earned_label.text = "POINTS EARNED: " + str(points_earned)
	
	next_level_btn.pressed.connect(_on_next_level_btn_pressed)
	replay_btn.pressed.connect(_on_replay_pressed)
	level_select_btn.pressed.connect(_on_level_select_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_next_level_btn_pressed() -> void:
	if current_level >= 50:
		print("all over")
		return
	
	
	current_level += 1
	var next_level_path = "res://Scenes/levels/level" + str(current_level) + ".tscn"
	get_tree().change_scene_to_file(next_level_path)
	
	
func _on_replay_pressed() -> void:
	print("clicked 2")
	get_tree().change_scene_to_file(level_path)

func _on_level_select_pressed() -> void:
	print("clicked 3")
	get_tree().change_scene_to_file("res://Scenes/menu/level_select.tscn")
