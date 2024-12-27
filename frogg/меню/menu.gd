extends Node2D


func _on_quit_pressed() -> void:
	$AudioStreamPlayer/butt.play()
	await $AudioStreamPlayer/butt.finished
	get_tree().quit()


func _on_play_pressed() -> void:
	$AudioStreamPlayer/butt.play()
	await $AudioStreamPlayer/butt.finished

	get_tree().change_scene_to_file("res://уровни/level.tscn")
