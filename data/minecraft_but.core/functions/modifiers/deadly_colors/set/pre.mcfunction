# Wipe the slate clean so we can fill it out.
data remove storage minecraft_but.core:modifiers/deadly_colors red
data remove storage minecraft_but.core:modifiers/deadly_colors orange
data remove storage minecraft_but.core:modifiers/deadly_colors yellow
data remove storage minecraft_but.core:modifiers/deadly_colors green
data remove storage minecraft_but.core:modifiers/deadly_colors blue
data remove storage minecraft_but.core:modifiers/deadly_colors violet
data remove storage minecraft_but.core:modifiers/deadly_colors brown
data remove storage minecraft_but.core:modifiers/deadly_colors light
data remove storage minecraft_but.core:modifiers/deadly_colors dark

# For each color that's enabled, set up warning:
execute if score #red minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/red/warn
execute if score #orange minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/orange/warn
execute if score #yellow minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/yellow/warn
execute if score #green minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/green/warn
execute if score #blue minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/blue/warn
execute if score #violet minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/violet/warn
execute if score #brown minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/brown/warn
execute if score #light minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/light/warn
execute if score #dark minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/dark/warn