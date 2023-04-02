extends KinematicBody2D
func _ready():
	pass

func _process(delta):
	position.y -= 15
	pass

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass


func _on_Laser_area_entered(area):
	if area.name == "Roca":
		Global.contador += 50 
		queue_free()
	if  area.name == "Spider nave" or area.name == "Sweb":
		queue_free()
	pass

