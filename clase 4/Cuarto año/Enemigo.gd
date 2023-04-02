extends KinematicBody2D
var movimiento = Vector2()
var velocidad = 140
func _ready():
	pass
func _physics_process(_delta):
 move_and_slide(movimiento)
 set_vector(get_node("../Personaje").global_position-global_position)
func set_vector(vector):
 movimiento = vector.normalized() * velocidad
pass
