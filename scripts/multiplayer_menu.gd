extends Control


@onready var host_game = $MarginContainer/HBoxContainer/VBoxContainer/HostGame as Button
@onready var join_game = $MarginContainer/HBoxContainer/VBoxContainer/JoinGame as Button
@onready var exit_menu = $MarginContainer/HBoxContainer/VBoxContainer/Exit as Button

# Reference to the main menu
var main_menu = null

func _ready():
	host_game.pressed.connect(_on_host_game_pressed)
	join_game.pressed.connect(_on_join_game_pressed)
	exit_menu.pressed.connect(_on_exit_menu_pressed)
	
func _on_host_game_pressed():
	print("Hosting a game....")
	
func _on_join_game_pressed():
	print("Joining as Player 2")
	
func _on_exit_menu_pressed():
	if main_menu != null:
		main_menu.show_main_menu()
		self.hide()

func set_main_menu(menu):
	main_menu = menu
