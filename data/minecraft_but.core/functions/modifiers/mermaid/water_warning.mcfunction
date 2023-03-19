#> minecraft_but.coreraft_but.core:modifiers/mermaid/water_warning
# Warning to give if it's not raining
# @within minecraft_but.coreraft_but.core:modifiers/mermaid/out_of_water
# @context player

#> Message that pulses with warning beat
title @s actionbar [{"text":"Get back in the ","color":"#660000","bold":true},{"text":"water","color":"#000066","bold":true},{"text":"! ","color":"#660000","bold":true}]
execute if score $tick minecraft_but.mermaid matches 10 run title @s actionbar [{"text":"Get back in the ","color":"#ff4444","bold":true},{"text":"water","color":"#4444ff","bold":true},{"text":"! ","color":"#ff4444","bold":true}]
execute if score $tick minecraft_but.mermaid matches 11 run title @s actionbar [{"text":"Get back in the ","color":"#aa4444","bold":true},{"text":"water","color":"#4444aa","bold":true},{"text":"! ","color":"#aa4444","bold":true}]

execute if score $tick minecraft_but.mermaid matches 14 run title @s actionbar [{"text":"Get back in the ","color":"#ff2222","bold":true},{"text":"water","color":"#2222ff","bold":true},{"text":"! ","color":"#ff2222","bold":true}]
execute if score $tick minecraft_but.mermaid matches 15 run title @s actionbar [{"text":"Get back in the ","color":"#aa2222","bold":true},{"text":"water","color":"#2222aa","bold":true},{"text":"! ","color":"#aa2222","bold":true}]

execute if score $tick minecraft_but.mermaid matches 18 run title @s actionbar [{"text":"Get back in the ","color":"#ff0000","bold":true},{"text":"water","color":"#0000ff","bold":true},{"text":"! ","color":"#ff0000","bold":true}]
execute if score $tick minecraft_but.mermaid matches 19 run title @s actionbar [{"text":"Get back in the ","color":"#aa0000","bold":true},{"text":"water","color":"#0000aa","bold":true},{"text":"! ","color":"#aa0000","bold":true}]