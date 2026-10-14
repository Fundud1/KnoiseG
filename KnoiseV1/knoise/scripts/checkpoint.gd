extends Area3D

#@export allows us to put a node in the inspector of a node 
#that holds this script

# Assign the player controller
@export var player: CharacterBody3D

# Assign the DirectionButtons node
@export var direction_buttons: Node


# Roads the player can come from
@export var coming_from = []

# Arrow settings for each road
@export var show_left = []
@export var show_right = []
@export var show_up = []
@export var show_down = []

#Used for Good Ending Check
@export var time_controller: Node
@export var is_heart_avenue_41st: bool = false

func _ready():
	body_entered.connect(_on_body_entered)


func _on_body_entered(body):
	if body == player: #if the body detected is the player run this code:
	
		print("Player is coming from: ", player.current_road)
	
		#the bool is gonna be checked only for checkpoint 13 
		#time controller can't be empty
		#of course the timeNumber needs to be 8 so it matches with 1:00 PM
		if is_heart_avenue_41st and time_controller != null and time_controller.timeNumber == 8:
			get_tree().change_scene_to_file("res://scenes/good_ending.tscn")
			player.release_mouse()
			return

		#Find which road the player is coming from
		var road_number = coming_from.find(player.current_road)
		#road_number is the index, coming_from is the array/list, current_road is the road name

		#-1 means the road wasn't found so checks for errors
		#if a road is found
		if road_number != -1:
			player.release_mouse()
			player.can_move = false

			# Hide all buttons first
			for button in direction_buttons.get_children():
				button.hide()

			# Show the buttons for this road (each road name is labeled as a number now)
			# Make sure each road name is labeled properly in here and
			# in the same order it was created in the array
			#So in the Show Left array, the road number should be in the same order each street is in the coming from array
			if show_left[road_number]:
				direction_buttons.get_node("LeftButton").show()

			if show_right[road_number]:
				direction_buttons.get_node("RightButton").show()

			if show_up[road_number]:
				direction_buttons.get_node("UpButton").show()

			if show_down[road_number]:
				direction_buttons.get_node("DownButton").show()
