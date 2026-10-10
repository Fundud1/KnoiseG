extends Node3D

var timeNumber = 0
var controlNumber = 0

#Control Timer Reference
@onready var control_timer: Timer = $ControlTimer

#New Conversations
@onready var special_conversations: Node3D = $"Special Conversations"

#Old Convserations
@onready var conversations: Node3D = $Conversations


#Text for Clock
@onready var _9_00am: Label = $"UI/CanvasText/Clock/9_00AM"
@onready var _9_30am: Label = $"UI/CanvasText/Clock/9_30AM"
@onready var _10_00am: Label = $"UI/CanvasText/Clock/10_00AM"
@onready var _10_30am: Label = $"UI/CanvasText/Clock/10_30AM"
@onready var _11_00am: Label = $"UI/CanvasText/Clock/11_00AM"
@onready var _11_30am: Label = $"UI/CanvasText/Clock/11_30AM"
@onready var _12_00pm: Label = $"UI/CanvasText/Clock/12_00PM"
@onready var _12_30pm: Label = $"UI/CanvasText/Clock/12_30PM"
@onready var _1_00pm: Label = $"UI/CanvasText/Clock/1_00PM"
@onready var _1_30pm: Label = $"UI/CanvasText/Clock/1_30PM"
@onready var _2_00pm: Label = $"UI/CanvasText/Clock/2_00PM"

#Text for Prime Time
@onready var prime_time_text: Label = $UI/CanvasText/PrimeTimeText
@onready var prime_time_description: Label = $UI/CanvasText/PrimeTimeDescription

#Audio:
@onready var nba_buzzer: AudioStreamPlayer3D = $"Audios/NBA Buzzer"

#Sky
@onready var world_environment: WorldEnvironment = $WorldEnvironment

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	special_conversations.hide()
	
	#Turn off all Prime Time conversation colliders
	#for each convo in the node special conversations (.get_children means whatever is under is considered a convo)
	#if that convo is a Area3D node
	#then turn the monitoring or checking for collisions off
	for convo in special_conversations.get_children():
		if convo is Area3D:
			convo.monitoring = false #Hover to check definition


func _on_timer_timeout() -> void:
	timeNumber += 1
	
	#Every 2 minutes is a new timerNumber state
	
	if timeNumber == 1:
		_9_30am.show()
		_9_00am.hide()
	
	if timeNumber == 2:
		_10_00am.show()
		_9_30am.hide()
	
	if timeNumber == 3:
		_10_30am.show()
		_10_00am.hide()
	
	if timeNumber == 4:
		_11_00am.show()
		_10_30am.hide()
	
	if timeNumber == 5:
		_11_30am.show()
		_11_00am.hide()
	
	if timeNumber == 6:
		_12_00pm.show()
		_11_30am.hide()
		
		#Change Sky Color for Prime Time
		#HAD TO SEARCH UP BC IDK HOW
		var sky_material = world_environment.environment.sky.sky_material as ProceduralSkyMaterial
		
		#Basic color changes to wtv looks good as Noon?
		sky_material.sky_top_color = Color(0.25, 0.55, 0.95)
		sky_material.sky_horizon_color = Color(0.65, 0.8, 0.95)
		
		#Start Control Timer
		control_timer.start()
		
		nba_buzzer.play()
		
		#Start Showing the Prime Time Text
		prime_time_text.show()
		prime_time_description.show()
		
		#Reset the Conversations to the Special Ones
		#Destroy all old conversation areas
		for convo in conversations.get_children():
			convo.queue_free()
		
		#Turn on Prime Time conversations
		special_conversations.show()
		
		for convo in special_conversations.get_children():
			if convo is Area3D:
				convo.monitoring = true
	
	if timeNumber == 7:
		_12_30pm.show()
		_12_00pm.hide()
	
	if timeNumber == 8:
		_1_00pm.show()
		_12_30pm.hide()
	
	if timeNumber == 9:
		_1_30pm.show()
		_1_00pm.hide()
	
	if timeNumber == 10:
		_2_00pm.show()
		_1_30pm.hide()


func _on_control_timer_timeout() -> void:
	controlNumber += 1
	
	if controlNumber == 1:
		prime_time_text.hide()
		prime_time_description.hide()
	
	if controlNumber == 2:
		prime_time_text.show()
		prime_time_description.show()
	
	if controlNumber == 3:
		prime_time_text.hide()
		prime_time_description.hide()
	
	if controlNumber == 4:
		prime_time_text.show()
		prime_time_description.show()
	
	if controlNumber == 5:
		prime_time_text.hide()
		prime_time_description.hide()
	
	if controlNumber == 6:
		prime_time_text.show()
		prime_time_description.show()
	
	if controlNumber == 7:
		prime_time_text.hide()
		prime_time_description.hide()
