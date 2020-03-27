extends "res://src/Actors/Actor.gd"

onready var stomp_area: Area2D = $StompArea2D

export var score: = 100

func _ready() -> void:
	set_physics_process(false)
	_velocity.x = -speed.x

func _physics_process(delta: float) -> void:
	#_velocity.x *= -1 if is_on_wall() else 1
	#_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= -1.0
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
	
func _on_StompDetc_body_entered(body: PhysicsBody2D) -> void:
	get_node("CollisionShape2D").disabled = true
	#if area.global_position.y > get_node("StompDetc").global_position.y:
	#	return
	die()
	#get_node("CollisionShape2D").disabled = true
	#queue_free()

func die() -> void:
	PlayerData.score += score
	queue_free()
	


