extends Area3D

@export var player: CharacterBody3D

@export var Convos: AudioStreamPlayer3D

# Called when the node enters the scene tree for the first time.
func _ready():
	body_entered.connect(_on_body_entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _on_body_entered(body):
	if body == player:
		print("Player Hit Collider")
		Convos.play()
