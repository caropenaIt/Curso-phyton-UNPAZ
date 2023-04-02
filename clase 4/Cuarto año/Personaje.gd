extends KinematicBody2D
var movimiento = Vector2()
var velocidad = 100
func _ready():
	pass
func _physics_process(_delta):
 if Input.is_action_pressed("ui_right"):
  movimiento.x = velocidad
  $AnimationPlayer.play("Derecha")
 if Input.is_action_pressed("ui_left"):
  movimiento.x = -velocidad
  $AnimationPlayer.play("Izquierda")
 if Input.is_action_pressed("ui_up"):
  movimiento.y = -velocidad
  $AnimationPlayer.play("Arriba")
 if Input.is_action_pressed("ui_down"):
  movimiento.y = velocidad
  $AnimationPlayer.play("Abajo")
 if Input.is_action_just_released("ui_right") or Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_up") or Input.is_action_just_released("ui_down"):
  movimiento.x = 0
  movimiento.y = 0
  $AnimationPlayer.stop()
 move_and_slide(movimiento)
pass
