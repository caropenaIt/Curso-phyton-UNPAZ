extends KinematicBody2D
var movimiento = Vector2()
var velocidad = 300

var disparo = true
var pre_laser = preload("Laser.tscn")

func _ready():
	visible = true
	pass
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		movimiento.x =-velocidad
	if Input.is_action_pressed("ui_right"):
		movimiento.x = velocidad
	if Input.is_action_just_released("ui_left")or Input.is_action_just_released("ui_right"):
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
		$"Laser sonido".play()
		disparo = false
		yield(get_tree().create_timer(.5),"timeout")
		disparo = true
		pass


func _on_Nave_area_entered(area): 
	if area.name == "Roca":
		queue_free()
	if area.name  == "Sweb":
		queue_free()
	if area.name == "Atomo":
		queue_free()
		pass


