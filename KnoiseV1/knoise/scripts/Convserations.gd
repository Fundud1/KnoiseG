extends Area3D

@export var player: CharacterBody3D
@export var Person1: Sprite3D
#me attempting to add the sprites for the people
@export var Convos: AudioStreamPlayer3D

#Check if the conversation already played
var hasPlayed = false


# Called when the node enters the scene tree for the first time.
func _ready():
	body_entered.connect(_on_body_entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _on_body_entered(body):
	if body == player and hasPlayed == false:
		print("Player Hit Collider")
		Convos.play()
		#Only plays once
		hasPlayed = true
		
		
func _on_body_enteredd(body):
	if body == player:
		Person1.visible = true
		visible = true
		#again i just copy and pasted this code, i deleted the old code cause it just kept crashing the game 
		#also again, it should be making the sprite appear but does not


func _on_person_1_visibility_changed(body):
	if body == player:
		Person1.visible = true
		visible = true
	pass # Replace with function body.
#this is the connection between person1 and this collider and when they collide the person SHOULD become visible but does not
