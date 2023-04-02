extends Node2D
var rocas = 250
var Spider_nave = true
var spidey = 570
var Boss = true
var control = false
func _ready():
	$Fondo.material.set_shader_param("BG_vel", 0.2)
	get_tree().paused = false
	pass 
func _process(delta):
	$HUD/Contador.text = str(Global.contador)
	if Global.contador > rocas +1:
		if control:
		 Global.spawn = false
		_Spider_nave()
		control = true
	if Global.contador == spidey:
		 _Boss()

func _Boss():
	if Boss:
		$Boss/AnimationPlayer2.play("Con todo")
		Global.Disparo = true
		pass

func _Spider_nave():
	if Spider_nave:
		$"Spider nave/AnimationPlayer".play("Entrando")
	Spider_nave = false
	pass

func _on_AnimationPlayer_animation_finished(anim_name):
		if anim_name == "Entrando":
		 $"Spider nave/AnimationPlayer".play("Ofensiva")
		Global.Disparo = true
		pass

func _on_Nave_tree_exited():
	$HUD/Perdiste.visible = true
	$HUD/Perdiste/Salir.visible = true
	$"HUD/Perdiste/Salir/Salir/Jugar otra vez".visible = true
	$Fondo.material.set_shader_param("BG_vel", 0)
	pass 


func _on_Salir_pressed():
	get_tree().quit()
	pass 


func _on_Jugar_otra_vez_pressed():
	get_tree().reload_current_scene()
	pass 


func _on_Boss_tree_exited():
	$HUD/Ganaste.visible = true
	$HUD/Ganaste/Salir2.visible = true
	$"HUD/Ganaste/Salir2/Salir/Jugar otra vez2".visible = true
	$Fondo.material.set_shader_param("BG_vel", 0)
	pass 


func _on_Salir2_pressed():
	get_tree().quit()
	pass


func _on_Jugar_otra_vez2_pressed():
	get_tree().reload_current_scene()
	pass 

