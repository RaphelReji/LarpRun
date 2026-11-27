extends Control

@onready var level_title: Label = $CenterContainer/CompletionPanel/Content/LevelTitle
@onready var complete_title: Label = $CenterContainer/CompletionPanel/Content/CompleteTitle
@onready var time_label: Label = $CenterContainer/CompletionPanel/Content/TimeLabel
@onready var deaths_label: Label = $CenterContainer/CompletionPanel/Content/DeathsLabel
@onready var points_earned_label: Label = $CenterContainer/CompletionPanel/Content/PointsEarnedLabel
@onready var wallet_label: Label = $CenterContainer/CompletionPanel/Content/WalletLabel

var current_level = 5
var completion_time = 45.0
var deaths = 2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	level_title.text = "LEVEL " + str(current_level)
	time_label.text = "TIME: " + str(completion_time) + " SECONDS"
	deaths_label.text = "DEATHS: " + str(deaths)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
