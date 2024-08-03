extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("RIP!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1
	# access scene try and reload
	get_tree().reload_current_scene()
