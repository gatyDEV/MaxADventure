extends Node2D
const MY_DIALOGUE = preload("res://game/dialogues/my_dialogue.dialogue")

func _ready() -> void:
	DialogueManager.show_dialogue_balloon(MY_DIALOGUE)
