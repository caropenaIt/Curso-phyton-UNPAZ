extends Position2D
var pre_roca = preload("res://Roca.tscn")
var cae = true
var cadence = 1
func _physics_process(delta):
 if Global.spawn:
  Cae_Rocas()
func Cae_Rocas():
 if cae:
  var roca = pre_roca.instance()
  get_parent().call_deferred("add_child", roca)
  roca.position.x = position.x
  roca.position.y = position.y
  cae = false
  yield(get_tree().create_timer(cadence),"timeout")
  cae = true
pass
