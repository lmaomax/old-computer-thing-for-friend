extends Control

const InputText = preload("res://Input.tscn")
const InputResponse = preload("res://response.tscn")

@onready var pc_technically = $"Background Computer/MarginContainer/ScrollContainer/PC_technically"

func _input(event):
	if Input.is_action_just_pressed("EnterKey"):
		var input_text = InputText.instantiate()
		var input_response = InputResponse.instantiate()
		get_node("Background Computer/MarginContainer/ScrollContainer/PC_technically/Type Input").free()
		pc_technically.add_child(input_response)
		pc_technically.add_child(input_text)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


