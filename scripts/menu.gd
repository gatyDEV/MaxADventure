extends Control

#Detectar para jugar
func _on_singleplayer_pressed() -> void:
	get_tree().change_scene_to_file("res://game/scenes/mundos/world.tscn")
#Detectar el boton de ajustes
func _on_settings_pressed() -> void:
	pass

#Hacer que si se toca el boton de salir salga
func _on_quit_pressed() -> void:
	get_tree().quit()
