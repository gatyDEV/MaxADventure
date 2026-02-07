extends Area2D

const MY_DIALOGUE = preload("res://game/dialogues/npc_say.dialogue" )
@export var npc_area: Area2D
@export var animation_npc: AnimatedSprite2D
@export var animtimer: Timer
var estado_npc = [{"angry": 1, "happy": 2, "neutral": 3}]

func _ready():
	estado()
	if animtimer:
		animtimer.connect("timeout", Callable(self, "_on_animtimer_timeout"))
		animtimer.start()	

func _on_body_entered(body):
	if body.is_in_group("players"):
		DialogueManager.show_dialogue_balloon(MY_DIALOGUE, "start")

func _on_animtimer_timeout():
	if animation_npc:
		animation_npc.play("animacion")  # reproduce la animación
		animtimer.start()


func estado():
	pass
