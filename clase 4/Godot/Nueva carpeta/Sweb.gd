extends Area2D


func _ready():
	pass
func _process(delta):
	position.y += 15


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass 



func _on_Sweb_area_entered(area):
	if area.name == "Nave" or area.name == "Laser":
		queue_free()
	pass 
