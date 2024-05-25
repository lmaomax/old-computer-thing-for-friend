extends VBoxContainer
var cursor_blink: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_blink_timer_timeout():
	match cursor_blink:
		0:
			$HBoxContainer/Cursor.visible = false
			cursor_blink = 1
			$HBoxContainer/Cursor/Blink_Timer.start()
		1:
			$HBoxContainer/Cursor.visible = true
			cursor_blink = 0
			$HBoxContainer/Cursor/Blink_Timer.start()


func _process(delta):
	pass

