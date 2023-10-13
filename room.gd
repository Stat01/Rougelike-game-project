extends CSGMesh3D

@export var EEpoint_array : Array[Node3D]

@onready var 

var origin: Node3D

func _init(new_origin: Node3D) -> void:
	origin = new_origin

func _ready() -> void:
	origin.curr_rooms += 1
	
	if origin.curr_rooms < origin.minimi_rooms:
		spawnRandomRoom()
	elif randi_range(0, 10) > 3:
		spawnRandomRoom()


func spawnRandomRoom() -> void:
	
	
