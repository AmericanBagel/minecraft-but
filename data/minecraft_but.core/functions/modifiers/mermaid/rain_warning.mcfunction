#> minecraft_but.core:modifiers/mermaid/rain_warning
# Warning to give if it's raining
# @within minecraft_but.core:modifiers/mermaid/out_of_water
# @context player

#> Message that pulses with warning beat
title @s actionbar [{"text":"Get back in the ","color":"#660000","bold":true},{"text":"water ","color":"#000066","bold":true},{"text":"or ","color":"#660000","bold":true},{"text":"rain","color":"#000066","bold":true},{"text":"! ","color":"#660000","bold":true}]
execute if score $tick minecraft_but.mermaid matches 8 run title @s actionbar [{"text":"Get back in the ","color":"#ff4444","bold":true},{"text":"water ","color":"#4444ff","bold":true},{"text":"or ","color":"#ff4444","bold":true},{"text":"rain","color":"#4444ff","bold":true},{"text":"! ","color":"#ff4444","bold":true}]
execute if score $tick minecraft_but.mermaid matches 9 run title @s actionbar [{"text":"Get back in the ","color":"#aa4444","bold":true},{"text":"water ","color":"#4444aa","bold":true},{"text":"or ","color":"#aa4444","bold":true},{"text":"rain","color":"#4444aa","bold":true},{"text":"! ","color":"#aa4444","bold":true}]

execute if score $tick minecraft_but.mermaid matches 13 run title @s actionbar [{"text":"Get back in the ","color":"#ff2222","bold":true},{"text":"water ","color":"#2222ff","bold":true},{"text":"or ","color":"#ff2222","bold":true},{"text":"rain","color":"#2222ff","bold":true},{"text":"! ","color":"#ff2222","bold":true}]
execute if score $tick minecraft_but.mermaid matches 14 run title @s actionbar [{"text":"Get back in the ","color":"#aa2222","bold":true},{"text":"water ","color":"#2222aa","bold":true},{"text":"or ","color":"#aa2222","bold":true},{"text":"rain","color":"#2222aa","bold":true},{"text":"! ","color":"#aa2222","bold":true}]

execute if score $tick minecraft_but.mermaid matches 17 run title @s actionbar [{"text":"Get back in the ","color":"#ff0000","bold":true},{"text":"water ","color":"#0000ff","bold":true},{"text":"or ","color":"#ff0000","bold":true},{"text":"rain","color":"#0000ff","bold":true},{"text":"! ","color":"#ff0000","bold":true}]
execute if score $tick minecraft_but.mermaid matches 18 run title @s actionbar [{"text":"Get back in the ","color":"#aa0000","bold":true},{"text":"water ","color":"#0000aa","bold":true},{"text":"or ","color":"#aa0000","bold":true},{"text":"rain","color":"#0000aa","bold":true},{"text":"! ","color":"#aa0000","bold":true}]