extends Area2D

func _ready():
	pass

func _process(delta):
	position.y -= 15
	pass

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass

func _on_Laser_area_entered(area):
	if area.name == "Area_Roca":
		Global.contador += 1
		queue_free()
	pass 
