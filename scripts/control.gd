extends Control
@onready var grid_container: GridContainer = $GridContainer

var SLOT = preload("uid://de7l2v662ji7u")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(16):
		var slot = SLOT.instantiate()
		grid_container.add_child(slot)
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
