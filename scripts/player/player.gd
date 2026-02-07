extends CharacterBody2D

#Crenado variable de velocidad
var vx: int = 50
var vy: int = 50

@export var musica: AudioStreamPlayer2D
@export var animacion: AnimatedSprite2D

#funcion que inicia cuando el programa inicia
func _ready():
	add_to_group("players")
	musica.play()
	
#Funcion process
func _process(_delta):
	pass

#Funcion del movimiento
func _physics_process(_delta):
	var velocidad = Vector2()
	if Input.is_key_pressed(KEY_W):
		animacion.play("atras")
		velocidad.y -= vy
	if Input.is_key_pressed(KEY_S):
		animacion.play("adelante")
		velocidad.y += vy
	if Input.is_key_pressed(KEY_A):
		animacion.play("derecha")
		velocidad.x -= vx
	if Input.is_key_pressed(KEY_D):
		animacion.play("izquierda")
		velocidad.x += vx
	
	
	velocity = velocidad
	move_and_slide()
	
