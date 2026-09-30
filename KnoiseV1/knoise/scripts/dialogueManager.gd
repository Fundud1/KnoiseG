extends CanvasLayer

@onready var dialogueBox: Control = $DialogueBox
@onready var dialogueText: Label = $DialogueBox/DialogueText

var dialogueLines: Array[String] = []
var currentLineIndex: int = 0
var isDialogueActive: bool = false

func _ready() -> void:
	dialogueBox.visible = false
	
	startDialogue(["J - we're almost here...",
					"R - I Heard There's Going To Be Millions Of People...",
					"J - i mean the knicks won...",
					"R - I Know, I Know...",
					"R - Been So Long Since The City Won...",
					"J - imagine we see brunson...",
					"R - I Just Want To See The Bus",
					"M - OUR STOP IS HERE...",
					"J - what did you say again",
					"R - Let's Get A Good View Of The Bus!",
					"R - It's A Dream Really...",
					"R - Seeing New York This Excited...",
					"J - bet let's find the bus."])

func startDialogue(lines: Array[String]):
	#start the dialogue
	dialogueLines = lines
	currentLineIndex = 0
	isDialogueActive = true
	dialogueBox.visible = true
	dialogueText.text = dialogueLines[currentLineIndex]
	
	
func _input(event):
	if not isDialogueActive:
		return
		
	if event.is_action_pressed("mouse_click"):
		advanceDialogue()

func advanceDialogue():
	if currentLineIndex < dialogueLines.size() - 1:
		currentLineIndex += 1
		dialogueText.text = dialogueLines[currentLineIndex]
	else:
		isDialogueActive = false
		dialogueBox.visible = false
		#switch to game scene
		get_tree().change_scene_to_file("res://scenes/knoise_title.tscn")
