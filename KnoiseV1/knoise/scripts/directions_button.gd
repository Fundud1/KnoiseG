extends TextureButton

#use the inspector to choose what arrow button each checkpoint gets
@export var player: CharacterBody3D
@export var direction = ""

@export var dead_end_text: Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_pressed() -> void:
	if direction == "left":
		player.rotate_y(deg_to_rad(90))

	elif direction == "right":
		player.rotate_y(deg_to_rad(-90))

	elif direction == "up":
		player.rotate_y(deg_to_rad(0))

	elif direction == "down":
		player.rotate_y(deg_to_rad(180))
	
	#if dead end text exists, do this code
	if dead_end_text:
		dead_end_text.hide() #hide the text

	player.can_move = true
	player.capture_mouse()
	#declare each children in the parent "DirectionsButtons" as "button"
	#and for each button in this parent do this: [hide]
	for button in get_parent().get_children():
		button.hide() 
