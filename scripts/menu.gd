class_name MainMenu
extends Control

@onready var options = $MarginContainer/HBoxContainer/VBoxContainer/Options as Button
@onready var quit = $MarginContainer/HBoxContainer/VBoxContainer/Quit as Button
@onready var play = $MarginContainer/HBoxContainer/VBoxContainer/Play as Button

# Preload scene and keep it in memory
@onready var start_level = preload("res://scenes/game.tscn") as PackedScene

func _ready():
	play.button_down.connect(_on_play_pressed)
	quit.button_down.connect(_on_quit_pressed)
	
func _on_play_pressed():
	get_tree().change_scene_to_packed(start_level)

func _on_options_pressed():
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
