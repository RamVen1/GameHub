extends Button

@export_file("*.tscn") var game_scene: String

var scene: PackedScene

func _ready() -> void:
	if game_scene.is_empty():
		printerr("No scene given to button \"%s\"" % self.text)
		return
	scene = load(game_scene)
		
func _on_pressed() -> void:
	print("Pressed \"%s\" button!" % self.text)
	if scene != null:
		var error: Error = get_tree().change_scene_to_packed(scene)
		if error != OK:
			printerr(error)
