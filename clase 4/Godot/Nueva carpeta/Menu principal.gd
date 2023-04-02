extends Node2D


func _ready():
	pass


func _on_Salir_pressed():
	get_tree().quit()
	pass 


func _on_Jugar_pressed():
	get_tree().change_scene("res://Transicion.tscn")
	pass 
