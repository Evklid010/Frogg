extends Node2D

@export var next_scene : String


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name != "frogg":
		return
	get_tree().change_scene_to_file(next_scene)
