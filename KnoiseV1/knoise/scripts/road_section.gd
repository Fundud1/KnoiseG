extends Area3D

@export var player: CharacterBody3D
@export var road_name = ""

#Street Signs
#hold ctrl + drag and drop StreetSigns node here 
#declaring a variable Node3D and give it the actual node we're using
#which is the StreetSign node that holds the images
@onready var street_signs: Node3D = $"../../UI/CanvasSigns/StreetSigns"
@export var sign1: TextureRect
@export var sign2: TextureRect
#We choose for each road what signs are shown

# Called when the node enters the scene tree for the first time.
func _ready():
	#alternate to instead of connecting a onEnter signal
	body_entered.connect(_on_body_entered)


func _on_body_entered(body):
	if body == player:
		player.current_road = road_name
		print("Player is on: ", road_name)
		
		# Hide all street signs
		for sign in street_signs.get_children():
			sign.hide()

		# Show the two signs for this road
		sign1.show()
		sign2.show()
