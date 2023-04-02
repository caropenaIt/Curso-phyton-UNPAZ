extends Node2D


func _ready():
	pass


func _on_Salir_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_Jugar_pressed():
	get_tree().change_scene("res://Escenas/NIvel_1.tscn")
	pass # Replace with function body.
