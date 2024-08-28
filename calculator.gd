class_name Calculator extends Panel

@onready var output:Label = $VBoxContainer/LabelOutput

var total:int = 0
var opperation = ""



func _on_btn_number_pressed(number: int) -> void:
	if output.text == "0":
		output.text = ""

	output.text = str(number)



func _on_btn_symbol_pressed(symbol:String) -> void:
	match symbol:
		"+":
			opperation = "+"
				
		"-":
			opperation = "-"
		"*":
			opperation = "*"
		"/":
			opperation = "/"
	
	total = int(output.text)
	output.text = "0"


func _on_btn_equals_pressed() -> void:
	match opperation:
		"+":
			total += int(output.text)
		"-":
			total -= int(output.text)
		"*":
			total *= int(output.text)
		"/":
			total /= int(output.text)
	
	opperation = ""
	output.text = str(total)
