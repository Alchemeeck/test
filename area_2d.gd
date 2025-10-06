extends Area2D

func is_point_in_area(point: Vector2) -> bool:
	var local_point = point - global_position
	var shape = $CollisionShape2D.shape
	if shape is CircleShape2D:
		return local_point.length() < shape.radius
	elif shape is RectangleShape2D:
		var half_size = shape.size / 2
		return abs(local_point.x) < half_size.x and abs(local_point.y) < half_size.y
	return false
