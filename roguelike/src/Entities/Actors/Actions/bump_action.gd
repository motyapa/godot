class_name BumpAction
extends ActionWithDirection

func perform() -> void:
	var destination := Vector2i(entity.grid_position + offset)
	
	if get_target_actor():
		MeleeAction.new(entity, offset.x, offset.y).perform()
	else:
		MovementAction.new(entity, offset.x, offset.y).perform()
