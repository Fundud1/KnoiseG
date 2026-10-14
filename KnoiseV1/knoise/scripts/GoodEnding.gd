extends Node2D

var timeNumber = 0
var controlNumber = 0

@onready var control_timer: Timer = $ControlTimer

#Images
@onready var img_1: TextureRect = $gEndingImages/Img1
@onready var img_2: TextureRect = $gEndingImages/Img2
@onready var img_4: TextureRect = $gEndingImages/Img4
@onready var img_5: TextureRect = $gEndingImages/Img5
@onready var img_6: TextureRect = $gEndingImages/Img6
@onready var img_7: TextureRect = $gEndingImages/Img7

#Texts
@onready var text_1: Label = $gEndingText/Text1
@onready var text_2: Label = $gEndingText/Text2
@onready var text_3: Label = $gEndingText/Text3
@onready var text_4: Label = $gEndingText/Text4
@onready var text_5: Label = $gEndingText/Text5
@onready var text_6: Label = $gEndingText/Text6
@onready var text_7: Label = $gEndingText/Text7
@onready var text_8: Label = $gEndingText/Text8

#UI
@onready var reset_button: Button = $Buttons/ResetButton

#Audio
@onready var tape_stop: AudioStreamPlayer2D = $TapeStop
@onready var happy_jingle: AudioStreamPlayer2D = $HappyJingle
@onready var background_music: AudioStreamPlayer2D = $BackgroundMusic
@onready var train_leave: AudioStreamPlayer2D = $TrainLeave
@onready var crowd_talk: AudioStreamPlayer2D = $CrowdTalk

func _on_image_timer_timeout() -> void:
	timeNumber += 1
	
	if timeNumber == 1:
		img_1.hide()
		img_5.show()
		text_1.show()
	
	if timeNumber == 2:
		text_1.hide()
		text_2.show()
		
	
	if timeNumber == 3:
		text_2.hide()
		text_3.show()
	
	if timeNumber == 4:
		text_3.hide()
		img_5.hide()
		img_2.show()
	
	if timeNumber == 5:
		img_5.show()
		img_2.hide()
		text_4.show()
	
	if timeNumber == 6:
		text_4.hide()
		img_5.hide()
		img_2.show()
	
	if timeNumber == 7:
		tape_stop.play()
		background_music.play()
		img_2.hide()
		img_4.show()
		control_timer.start()
	
	if timeNumber == 8:
		pass
	
	if timeNumber == 9:
		text_5.show()
	
	if timeNumber == 10:
		text_5.hide()
		img_5.hide()
		img_6.show()
	
	if timeNumber == 11:
		img_6.hide()
		img_5.show()
		text_6.show()
	
	if timeNumber == 12:
		img_5.hide()
		img_6.show()
		text_6.hide()
	
	if timeNumber == 13:
		img_6.hide()
		img_5.show()
	
	if timeNumber == 14:
		img_7.hide()
		img_6.show()
	
	if timeNumber == 15:
		img_6.hide()
		img_5.show()
		background_music.stop()
		text_8.show()
	
	if timeNumber == 16:
		img_7.show()
		img_5.hide()
		text_7.show()
		text_8.hide()
		train_leave.play()
		crowd_talk.play()
		reset_button.show()
	

func _on_control_timer_timeout() -> void:
	controlNumber += 1
	
	if controlNumber == 1:
		img_4.hide()
		img_2.show()
	
	if controlNumber == 2:
		img_2.hide()
		img_4.show()
	
	if controlNumber == 3:
		img_4.hide()
		img_2.show()
	
	if controlNumber == 4:
		img_2.hide()
		img_4.show()
	
	if controlNumber == 6:
		img_4.hide()
		img_5.show()
