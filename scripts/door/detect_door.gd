extends Node
class_name DetectDoor

func _on_puertacasa_1_body_entered(body):
	if body.is_in_group("players"):
		call_deferred("_entrar_casa1")

func _on_salir_puerta_body_entered(body):
	if body.is_in_group("players"):
		call_deferred("_salir_casa")
		


func _entrar_casa1():
	get_tree().change_scene_to_file("res://game/scenes/mundos/casas/casa_1.tscn")

func _salir_casa():
	get_tree().change_scene_to_file("res://game/scenes/mundos/world.tscn")
