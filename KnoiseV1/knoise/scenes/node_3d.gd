extends Node3D
@export var Collision1: CharacterBody3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
#func _collisi(body)://random bullshit
	#if body == player:
		#$AudioStreamPlayer.play()

func _on_rigid_body_3d_body_entered(body: Node) -> void:
	if body == Collision1:
		$AudioStreamPlayer.play()
