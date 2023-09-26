extends CanvasLayer

@onready var player: CharacterBody2D = $".."

@onready var health: Label = $VBoxContainer/Health
@onready var speed: Label = $VBoxContainer/Speed
@onready var jumpforce: Label = $VBoxContainer/Jumpforce

func _process(delta: float) -> void:
	
	health.text = "health: " + str(player.health)
	speed.text = "acceleration: " + str(player.acceleration)
	jumpforce.text = "jumpforce: " + str(player.jumpforce)
