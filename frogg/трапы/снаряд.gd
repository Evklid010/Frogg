extends Path2D

@export var loop := true
@export var speed := 200.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$PathFollow2D.loop = loop # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta:) -> void:
	$PathFollow2D.progress += speed * delta

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "frogg":
		body.on_death()
