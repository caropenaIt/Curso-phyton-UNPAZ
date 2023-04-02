extends KinematicBody2D

var movimiento = Vector2(0,0)
var velocidad = 400

var disparo = true
var pre_laser = preload("res://Escenas/Laser.tscn")

func _ready():
	visible = true
	pass
	
func _physics_process(delta):
	movimiento.y = - velocidad
	
	if Input.is_action_pressed("Izquierda"):
		movimiento.x = -velocidad
	if Input.is_action_pressed("ui_right"):
		movimiento.x = velocidad
	if Input.is_action_just_released("Izquierda") or Input.is_action_just_released("ui_right"):
		movimiento.x = 0
		
	move_and_slide(movimiento)
	
	if Input.is_action_pressed("ui_up"):
		Disparo()
		pass

func Disparo():
	if disparo:
		var laser = pre_laser.instance()
		get_parent().call_deferred("add_child", laser)
		laser.global_position = global_position
		disparo = false
		yield(get_tree().create_timer(.5),"timeout")
		disparo = true
		pass
	pass


func _on_Area_Nave_area_entered(area):
	if area.name == "Area_Roca":
		queue_free()
	pass
	
