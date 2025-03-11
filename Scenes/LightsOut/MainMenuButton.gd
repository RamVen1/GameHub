extends Button

@export_file("*.tscn") var game_scene: String
@onready var menu_panel = $MenuPanel # MenuPanel is a sibling of the button

var scene: PackedScene

func _ready() -> void:
	if game_scene.is_empty():
		printerr("No scene given to button \"%s\"" % self.text)
		return
	scene = load(game_scene)
	
# Function for the button to transition to a new scene
func _on_pressed() -> void:
	print("Pressed \"%s\" button!" % self.text)
	if scene != null:
		var error: Error = get_tree().change_scene_to_packed(scene)
		if error != OK:
			printerr(error)

# Function for toggling the visibility of the MenuPanel PopupPanel
func _on_rules_button_pressed() -> void:
	if menu_panel.visible:
		menu_panel.hide()  # Hide the panel if it's currently visible
	else:
		menu_panel.popup_centered()
	  # Show the panel, centered on the screen
