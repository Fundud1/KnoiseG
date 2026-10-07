extends Node3D

var timeNumber = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	timeNumber += 1
	
	if timeNumber == 1:
		pass
