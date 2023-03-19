#> minecraft_but.coreraft_but.core:modifiers/toxic_water/rain_warning
# Warning to give if it's raining
# @within minecraft_but.coreraft_but.core:modifiers/toxic_water/out_of_water
# @context player

#> Message that pulses with warning beat
title @s actionbar [{"text":"Get out of the ","color":"#660000","bold":true},{"text":"rain","color":"#000066","bold":true},{"text":"!","color":"#660000","bold":true}]
execute if score $tick minecraft_but.toxic_water matches 8 run title @s actionbar [{"text":"Get out of the ","color":"#ff4444","bold":true},{"text":"rain","color":"#4444ff","bold":true},{"text":"!","color":"#ff4444","bold":true}]
execute if score $tick minecraft_but.toxic_water matches 9 run title @s actionbar [{"text":"Get out of the ","color":"#aa4444","bold":true},{"text":"rain","color":"#4444aa","bold":true},{"text":"!","color":"#aa4444","bold":true}]

execute if score $tick minecraft_but.toxic_water matches 13 run title @s actionbar [{"text":"Get out of the ","color":"#ff2222","bold":true},{"text":"rain","color":"#2222ff","bold":true},{"text":"!","color":"#ff2222","bold":true}]
execute if score $tick minecraft_but.toxic_water matches 14 run title @s actionbar [{"text":"Get out of the ","color":"#aa2222","bold":true},{"text":"rain","color":"#2222aa","bold":true},{"text":"!","color":"#aa2222","bold":true}]

execute if score $tick minecraft_but.toxic_water matches 17 run title @s actionbar [{"text":"Get out of the ","color":"#ff0000","bold":true},{"text":"rain","color":"#0000ff","bold":true},{"text":"!","color":"#ff0000","bold":true}]
execute if score $tick minecraft_but.toxic_water matches 18 run title @s actionbar [{"text":"Get out of the ","color":"#aa0000","bold":true},{"text":"rain","color":"#0000aa","bold":true},{"text":"!","color":"#aa0000","bold":true}]