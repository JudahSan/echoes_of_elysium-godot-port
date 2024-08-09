Project Readme
-

Create Main Menu
-

1. Create new scene of type `User Interface`
2. Add Buttons. Located in side the cotrol node
3. Style buttons and add background image
4. Create a menu.gb script and Code button functionality

```gd
extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

func _on_options_pressed():
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()

```
