extends Area2D
var pre_atomo = preload("Atomo.tscn")
var atomo = true
var vida = 10
func _ready():
	pass
func _process(delta):
	if Global.Disparo:
		_Disparo()
		pass
		if vida == 0:
			Global.contador += 500
			queue_free()
	pass
func _Disparo():
	if atomo:
		var atomo = pre_atomo.instance()
		get_parent().call_deferred("add_child", atomo)
		atomo.global_position = global_position
		atomo= false
		yield(get_tree().create_timer(1),"timeout")
		atomo = true
		pass 




func _on_Boss_area_entered(area):
	if area.name == "Laser":
		vida -= 1
		Global.contador += 50
	pass 

