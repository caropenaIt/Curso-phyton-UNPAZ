extends Node2D

var rocas = 5

func _ready():
	
	pass

func _process(delta):
	$Pared_1.position.y = $Nave.position.y
	$Pared_2.position.y = $Nave.position.y
	$Spawn_Rocas.position.y = $Nave.position.y - 650
	$Enemigo.position.y = $Nave.position.y - 500
	
	$HUD/Contador.text = str(Global.contador)
	
	if Global.contador == rocas:
		Global.spawn = false
		$Enemigo.visible = true
	pass
