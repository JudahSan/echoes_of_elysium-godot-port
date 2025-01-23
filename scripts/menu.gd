class_name MainMenu
extends Control

@onready var options = $MarginContainer/HBoxContainer/VBoxContainer/Options as Button
@onready var quit = $MarginContainer/HBoxContainer/VBoxContainer/Quit as Button
@onready var play = $MarginContainer/HBoxContainer/VBoxContainer/Play as Button
@onready var multiplayer = $MarginContainer/HBoxContainer/VBoxContainer/Multiplayer as Button

# Multiplayer menu and buttons
@onready var multiplayer_menu = $MarginContainer/HBoxContainer/VBoxContainer/MultiplayerMenu as Control
@onready var host_game = multiplayer_menu/VBoxContainer/HostGame as Button
@onready var join_game = multiplayer_menu/VBoxContainer/JoinGame as Button

# Preload scene and keep it in memory
@onready var start_level = preload("res://scenes/game.tscn") as PackedScene

func _ready():
	play.pressed.connect(_on_play_pressed)
	quit.pressed.connect(_on_quit_pressed)
	multiplayer.pressed.connect(_on_multiplayer_pressed)
	host_game.pressed.connect(_on_host_game_pressed)
	join_game.pressed.connect(_on_join_game_pressed)

	# Hide multiplayer menu by default
	multiplayer_menu.visible = false

func _on_play_pressed():
	get_tree().change_scene_to_packed(start_level)

func _on_options_pressed():
	pass  # Replace with function body.

func _on_multiplayer_pressed():
	# Toggle multiplayer menu visibility
	multiplayer_menu.visible = not multiplayer_menu.visible 

func _on_join_game_pressed():
	print("Joining as Player 2...")
	# Add your join game logic here

func _on_host_game_pressed():
	print("Hosting a game...")
	# Add your host game logic here

func _on_quit_pressed():
	get_tree().quit()
