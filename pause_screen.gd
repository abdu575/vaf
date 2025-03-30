extends CanvasLayer

@onready var continue_button = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/VBoxContainer/ContinueButton
@onready var restart_button = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/VBoxContainer/RestartButton


func _ready():
	continue_button.pressed.connect(_on_continue_pressed)
	restart_button.pressed.connect(_on_restart_pressed)

func _on_continue_pressed():
	get_tree().paused = false
	queue_free()  # Закрываем меню паузы

func _on_restart_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()  # Перезапускаем уровень
