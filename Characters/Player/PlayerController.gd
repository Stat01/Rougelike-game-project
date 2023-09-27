extends CharacterBody2D

const GRAVITY: float = 9.81
const MAX_SPEED: float = 100
var health: float = 10
var acceleration: float = 300
var jumpforce: float = 10
var friction: float = 0.2

func _physics_process(delta: float) -> void:
	
	var input_strenght: Vector2 = Vector2.ZERO
	#Input stuff
	if Input.is_action_pressed("up"):
		input_strenght.y -= Input.get_action_strength("up")
	elif Input.is_action_pressed("down"):
		input_strenght.y += Input.get_action_strength("down")
	elif Input.is_action_pressed("left"):
		input_strenght.x -= Input.get_action_strength("left")
	elif Input.is_action_pressed("right"):
		input_strenght.x += Input.get_action_strength("right")
	else:
		velocity.x = lerp(velocity.x, 0.0, friction)
	
	velocity += input_strenght * delta * acceleration
	
	#max speed
	if velocity.x > MAX_SPEED:
		velocity.x = MAX_SPEED
	if velocity.x < -MAX_SPEED:
		velocity.x = -MAX_SPEED
	
	#gravity
	if !is_on_floor():
		velocity.y += GRAVITY
	
	move_and_slide()
