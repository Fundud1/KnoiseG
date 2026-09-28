extends Area3D

@export var player: CharacterBody3D
@export var road_name = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	#alternate to instead of connecting a onEnter signal
	body_entered.connect(_on_body_entered)


func _on_body_entered(body):
	if body == player:
		player.current_road = road_name
		print("Player is on: ", road_name)
