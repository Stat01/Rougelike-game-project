extends MeshInstance3D
func _physics_process(delta: float) -> void:
	global_rotation.y += delta
