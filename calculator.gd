class_name Calculator extends Panel

@onready var output:Label = $VBoxContainer/LabelOutput

var total:int = 0
var opperation = ""
var display:String = "0"


func _on_btn_number_pressed(number: int) -> void:
	if display != "0":
		display += str(number)
	else:
		display = str(number)

	output.text = display



func _on_btn_symbol_pressed(symbol:String) -> void:
	print(symbol)


func _on_btn_equals_pressed() -> void:
	print('=')
