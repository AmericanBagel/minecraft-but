#> abchc:modifiers/troglodyte/light_warning
# Warning to give if player is in light
# @within abchc:modifiers/troglodyte/mercy
# @context player

#> Message that pulses with warning beat
title @s actionbar [{"text":"Get out of the ","color":"#660000","bold":true},{"text":"light","color":"#000066","bold":true},{"text":"! ","color":"#660000","bold":true}]
execute if score $tick abch.troglodyte matches 10 run title @s actionbar [{"text":"Get out of the ","color":"#ff4444","bold":true},{"text":"light","color":"#4444ff","bold":true},{"text":"! ","color":"#ff4444","bold":true}]
execute if score $tick abch.troglodyte matches 11 run title @s actionbar [{"text":"Get out of the ","color":"#aa4444","bold":true},{"text":"light","color":"#4444aa","bold":true},{"text":"! ","color":"#aa4444","bold":true}]

execute if score $tick abch.troglodyte matches 14 run title @s actionbar [{"text":"Get out of the ","color":"#ff2222","bold":true},{"text":"light","color":"#2222ff","bold":true},{"text":"! ","color":"#ff2222","bold":true}]
execute if score $tick abch.troglodyte matches 15 run title @s actionbar [{"text":"Get out of the ","color":"#aa2222","bold":true},{"text":"light","color":"#2222aa","bold":true},{"text":"! ","color":"#aa2222","bold":true}]

execute if score $tick abch.troglodyte matches 18 run title @s actionbar [{"text":"Get out of the ","color":"#ff0000","bold":true},{"text":"light","color":"#0000ff","bold":true},{"text":"! ","color":"#ff0000","bold":true}]
execute if score $tick abch.troglodyte matches 19 run title @s actionbar [{"text":"Get out of the ","color":"#aa0000","bold":true},{"text":"light","color":"#0000aa","bold":true},{"text":"! ","color":"#aa0000","bold":true}]