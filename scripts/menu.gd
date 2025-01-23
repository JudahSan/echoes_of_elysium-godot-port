class_name MainMenu
extends Control

@onready var options = $MarginContainer/HBoxContainer/VBoxContainer/Options as Button
@onready var quit = $MarginContainer/HBoxContainer/VBoxContainer/Quit as Button
@onready var play = $MarginContainer/HBoxContainer/VBoxContainer/Play as Button
@onready var multiplayer_button = $MarginContainer/HBoxContainer/VBoxContainer/Multiplayer as Button

# Preload scene and keep it in memory
@onready var start_level = preload("res://scenes/game.tscn") as PackedScene
@onready var multiplayer_menu_scene = preload("res://scenes/main_menu/multiplayer_menu.tscn") as PackedScene

# Instance for multiplayer menu
var multiplayer_menu_instance = null

func _ready():
	play.pressed.connect(_on_play_pressed)
	quit.pressed.connect(_on_quit_pressed)
	multiplayer_button.pressed.connect(_on_multiplayer_pressed)

func _on_play_pressed():
	get_tree().change_scene_to_packed(start_level)

func _on_options_pressed():
	pass  # Replace with function body.

func _on_multiplayer_pressed():
	if multiplayer_menu_instance == null:
		multiplayer_menu_instance = multiplayer_menu_scene.instantiate()
		add_child(multiplayer_menu_instance)
		multiplayer_menu_instance.set_main_menu(self)

	if multiplayer_menu_instance.visible:
		# Show other menu buttons
		play.visible = true
		options.visible = true
		quit.visible = true
		multiplayer_button.visible = true
		
		# Hide multiplayer menu
		multiplayer_menu_instance.visible = false
		print("Multiplayer menu hidden.")
	else:
		# Hide other menu buttons
		play.visible = false
		options.visible = false
		quit.visible = false
		multiplayer_button.visible = false
		
		# Show multiplayer menu
		multiplayer_menu_instance.visible = true
		print("Multiplayer menu instantiated and made visible.")

func show_main_menu():
	# Show other menu buttons
	play.visible = true
	options.visible = true
	quit.visible = true
	multiplayer_button.visible = true
	
	# Hide multiple menu
	if multiplayer_menu_instance != null:
		multiplayer_menu_instance.visible = false
	print("Returned to the main menu")

func _on_quit_pressed():
	get_tree().quit()
