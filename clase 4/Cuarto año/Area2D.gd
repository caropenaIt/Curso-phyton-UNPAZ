extends Area2D
func _on_Area2D_body_entered(body):
 if body.name == "Personaje":
  $Enemigo.queue_free()
  $Bandera.queue_free()
 if body.name == "Enemigo":
  $Personaje.queue_free() 
pass
