extends Area2D
var pre_Sweb = preload("Sweb.tscn")
var tela = true
var vida = 7
func _ready():
	pass
func _process(delta):
	if Global.Disparo:
		_Disparo()
		pass
		if vida == 0:
			Global.contador += 200
			queue_free()
	pass
func _Disparo():
	if tela:
		var Sweb = pre_Sweb.instance()
		get_parent().call_deferred("add_child", Sweb)
		Sweb.global_position = global_position
		tela= false
		yield(get_tree().create_timer(1),"timeout")
		tela = true
		pass 


func _on_Spider_nave_area_entered(area):
	if area.name == "Laser":
		vida -= 1
		Global.contador += 10
	pass 
