extends CharacterBody3D


const SPEED = 3.0

var can_move = true

var current_road = ""

func _unhandled_input(event: InputEvent) -> void:
	# Mouse capturing
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		capture_mouse()
	if Input.is_key_pressed(KEY_ESCAPE):
		release_mouse()

func _physics_process(delta: float) -> void:

	if Input.is_action_pressed("move_forward") and can_move:
		velocity = -transform.basis.z * SPEED #makes me move forward because camera is reverse so include a negative
	else:
		velocity = Vector3.ZERO
		#when you release it makes the character stop moving
		
	move_and_slide()
	#applys the velocity onto the characterbody

func capture_mouse():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func release_mouse():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
