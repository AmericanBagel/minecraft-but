#> minecraft_but.core:modifiers/lazy_inventory/main
# Players or mobs glow, depending on your configuration. They can glow permanently or at an interval such as every minute.
# @context root
# @within minecraft_but.core:modifiers/directory

execute if score glowing.players minecraft_but.config matches 1 run effect give @a glowing 1 0 true
execute if score glowing.mobs minecraft_but.config matches 1 run effect give @e[type=#aestd1:mobs] glowing 1 0 true
execute if score glowing.other minecraft_but.config matches 1 run effect give @e[type=!#aestd1:living_base] glowing 1 0 true