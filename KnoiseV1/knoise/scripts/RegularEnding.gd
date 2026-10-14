extends Node2D

var timeNumber = 0
var textNumber = 0 
var cutSceneNumber = 0

#Timers
@onready var image_timer: Timer = $ImageTimer
@onready var text_timer: Timer = $TextTimer
@onready var cutscene_timer: Timer = $CutsceneTimer


#Ending Images
@onready var img_1: TextureRect = $rEndingImages/Img1
@onready var img_2: TextureRect = $rEndingImages/Img2
@onready var img_3: TextureRect = $rEndingImages/Img3
@onready var img_4: TextureRect = $rEndingImages/Img4
@onready var img_5: TextureRect = $rEndingImages/Img5
@onready var img_6: TextureRect = $rEndingImages/Img6
@onready var img_7: TextureRect = $rEndingImages/Img7
@onready var img_8: TextureRect = $rEndingImages/Img8
@onready var img_9: TextureRect = $rEndingImages/Img9

#Texts
@onready var text_1: Label = $rEndingText/Text1
@onready var text_2: Label = $rEndingText/Text2
@onready var text_3: Label = $rEndingText/Text3
@onready var text_4: Label = $rEndingText/Text4
@onready var text_5: Label = $rEndingText/Text5
@onready var text_6: Label = $rEndingText/Text6
@onready var text_7: Label = $rEndingText/Text7
@onready var text_8: Label = $rEndingText/Text8
@onready var text_9: Label = $rEndingText/Text9
@onready var text_10: Label = $rEndingText/Text10
@onready var text_11: Label = $rEndingText/Text11
@onready var text_12: Label = $rEndingText/Text12
@onready var text_13: Label = $rEndingText/Text13

#Buttons
@onready var reset_button: Button = $Buttons/ResetButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _on_image_timer_timeout() -> void:
	timeNumber += 1
	
	if timeNumber == 1:
		img_1.hide()
		img_5.show()
		text_timer.start()
		text_1.show()
	
	if timeNumber == 2:
		img_5.hide()
		img_2.show()
	
	if timeNumber == 3:
		img_2.hide()
		img_3.show()
	
	if timeNumber == 4:
		img_3.hide()
		img_5.show()
	
	if timeNumber == 5:
		pass
	
	if timeNumber == 6:
		pass
	
	if timeNumber == 7:
		pass
	
	if timeNumber == 8:
		pass
	
	if timeNumber == 9:
		img_6.show()
		img_7.show()
	
	if timeNumber == 10:
		img_6.hide()
		img_7.hide()
	
	if timeNumber == 11:
		img_8.show()
	
	if timeNumber == 12:
		pass
	
	if timeNumber == 13:
		img_8.hide()
		img_9.show()
	
	if timeNumber == 14:
		pass
	
	if timeNumber == 15:
		text_13.show()
		reset_button.show()

#TEXT TIMER
func _on_text_timer_timeout() -> void:
	textNumber += 1
	
	if textNumber == 1:
		text_1.hide()
	
	if textNumber == 2:
		pass
	
	if textNumber == 3:
		text_2.show()
	
	if textNumber == 4:
		text_2.hide()
		text_3.show()
	
	if textNumber == 5:
		text_3.hide()
		text_4.show()
	
	if textNumber == 6:
		text_4.hide()
		text_5.show()
	
	if textNumber == 7:
		text_5.hide()
		text_6.show()
	
	if textNumber == 8:
		text_6.hide()
		text_10.show()
	
	if textNumber == 9:
		text_10.hide()
		text_7.show()
	
	if textNumber == 10:
		text_7.hide()
		text_8.show()
	
	if textNumber == 11:
		text_8.hide()
		text_9.show()
	
	if textNumber == 12:
		text_9.hide()
		text_11.show()
	
	if textNumber == 13:
		text_11.hide()
		text_12.show()
	
	if textNumber == 14:
		text_12.hide()
