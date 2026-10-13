extends Sprite3D
@export var Person1: Sprite3D
@export var Convos: AudioStreamPlayer3D
@export var player: CharacterBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	if true:
		visible = false
		#when the game starts the sprite will not be visible 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	


func _on_body_enteredd(body): 
	if body == player:
		Person1.visible = true
		visible = true
	pass # Replace with function body.


func _on_convo_1_body_entered(body):
	if body == Convos:
		Person1.visible = true
		visible = true
		#i highkey just pasted this a bunch of times everywhere but what it should do is make it so when the collider for the audio is activated the people appear as well but that did not work 
		#i tried connecting it, i tried making the collider a parent but none of it worked and i really dont know why
	
	pass # Replace with function body.
