extends KinematicBody2D
class_name Actor

const FLOOR_NORMAL: = Vector2.UP

export var speed: = Vector2(300.0, 1000.0)
export var gravity: = 3000.0 

var _velocity: = Vector2.ZERO

#func _physics_process(delta: float) -> void:
	#velocity.y += gravity * delta
	# may move to each actor velocity.y = min(velocity.y, speed.y) #may change to max() 
	
