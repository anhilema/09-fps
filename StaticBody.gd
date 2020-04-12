extends KinematicBody

# states
#searching
# found
# shooting
var state = ""
onready var scan = $Scanner

func change_state(s):
	state = s

func _ready():
	change_state("searching")
	
func _physics_process(delta):
	if state == "searching":
		var c = scan.get_collider()
		if c != null and c.name == "Player":
			print("found the player")
	if state == "found":
		pass
	if state == "shooting":
		pass
