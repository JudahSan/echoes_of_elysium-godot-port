extends Control


@onready var host_game = $MarginContainer/HBoxContainer/VBoxContainer/HostGame as Button
@onready var join_game = $MarginContainer/HBoxContainer/VBoxContainer/JoinGame as Button

func ready():
	host_game.pressed.connect(_on_host_game_pressed)
	join_game.pressed.connect(_on_join_game_pressed)
	
func _on_host_game_pressed():
	print("Hosting a game....")
	
func _on_join_game_pressed():
	print("Joining as Player 2")
