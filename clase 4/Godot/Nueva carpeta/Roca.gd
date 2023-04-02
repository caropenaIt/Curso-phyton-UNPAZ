extends RigidBody2D
func _ready():
	pass


func _on_Area_Roca_area_entered(area):
	if area.name == "Area_Nave" or area.name == "Laser":
		queue_free()
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass

func _on_Roca_area_entered(area):
	if area.name == "Nave" or area.name == "Laser":
		queue_free()
	pass 
