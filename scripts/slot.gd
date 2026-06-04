extends Panel
@onready var texture_rect: TextureRect = $TextureRect
var col : int
var row : int
var level := -1
var textures = [
	preload("res://assets/poo.png"),
	preload("res://assets/poo lite.png"),
	preload("res://assets/poo 1.png"),
	preload("res://assets/poo 2.png"),
	preload("res://assets/poo 3.png"),
	preload("res://assets/poo 4.png"),
	preload("res://assets/poo 5.png"),
	preload("res://assets/poo 6.png"),
	
]
func selected():
	modulate = Color.DEEP_PINK
func deselected():
	modulate = Color.ANTIQUE_WHITE
func set_level():
	if level == -1:
		texture_rect.texture = null
	else:
		texture_rect.texture = textures[level]
		
signal slot_clicked(slot)
func _gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			slot_clicked.emit(self)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
