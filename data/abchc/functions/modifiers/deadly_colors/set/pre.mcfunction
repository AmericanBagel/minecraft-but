# Wipe the slate clean so we can fill it out.
data remove storage abchc:modifiers/deadly_colors red
data remove storage abchc:modifiers/deadly_colors orange
data remove storage abchc:modifiers/deadly_colors yellow
data remove storage abchc:modifiers/deadly_colors green
data remove storage abchc:modifiers/deadly_colors blue
data remove storage abchc:modifiers/deadly_colors violet
data remove storage abchc:modifiers/deadly_colors brown
data remove storage abchc:modifiers/deadly_colors light
data remove storage abchc:modifiers/deadly_colors dark

# For each color that's enabled, set up warning:
execute if score #red abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/red/warn
execute if score #orange abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/orange/warn
execute if score #yellow abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/yellow/warn
execute if score #green abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/green/warn
execute if score #blue abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/blue/warn
execute if score #violet abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/violet/warn
execute if score #brown abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/brown/warn
execute if score #light abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/light/warn
execute if score #dark abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/dark/warn