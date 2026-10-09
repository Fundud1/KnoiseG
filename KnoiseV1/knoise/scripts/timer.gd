extends Node3D

var timeNumber = 0

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


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


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

func primeTime():
	pass
