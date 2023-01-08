extends Node

var result = []
var PlayerPoints = 0 setget points_change

#sack of fertilize
export(int) var max_fertilizer = 3 setget set_max_fertilizer
var fertilizer = 0 setget fertilizer_change

signal fertilizer_changed(value)
signal max_fertilizer_changed(value)
signal points_changed(value)

func set_max_fertilizer(value):
	max_fertilizer = value
	self.fertilizer = min(fertilizer, max_fertilizer)
	emit_signal("max_fertilizer_changed", max_fertilizer)

func fertilizer_change(value):
	fertilizer = clamp(value, 0, max_fertilizer)
	emit_signal("fertilizer_changed", fertilizer)

func reset_fertilizerUI():
	emit_signal("fertilizer_changed", fertilizer)
	
func points_change(value):
	PlayerPoints += value
	emit_signal("points_changed", value)
