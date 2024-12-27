extends Node2D
@onready var anin = $AnimatedSprite2D
@onready var death = $AudioStreamPlayer/death

func _on_area_2d_body_entered(body: Node2D) -> void:
	
	if body.name == "frogg":
		
		body.on_death()
