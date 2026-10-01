extends Area3D

#Assign the player controller
@export var player: CharacterBody3D

#Assign the DirectionButtons node
@export var direction_buttons: Node

#Assign the Dead End text
@export var dead_end_text: Label


func _ready():
	#instead of using the signal we can create a function
	body_entered.connect(_on_body_entered)
	dead_end_text.hide()


func _on_body_entered(body):
	if body == player: #we already initialized this as the player controller in the inspector

		player.can_move = false
		player.release_mouse()

		# Hide all direction buttons
		for button in direction_buttons.get_children():
			button.hide()

		# Show only the back/down arrow
		direction_buttons.get_node("DownButton").show()

		# Show Dead End text
		dead_end_text.show()
