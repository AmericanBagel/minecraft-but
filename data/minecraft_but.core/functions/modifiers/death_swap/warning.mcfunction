#> minecraft_but.coreraft_but.core:modifiers/death_swap/warning
# Warn players about swapping
# @context root
# @within minecraft_but.coreraft_but.core:modifiers/death_swap/main
# @input
#   score $time minecraft_but.death_swap
#       The time until players are swapped. Set by interval config plus random offset.
#   score $interval minecraft_but.config
#       interval config converted to ticks (6000 ticks default)

execute if score $interval minecraft_but.death_swap matches 1200 run title @a actionbar [{"text":"Swapping immanent...","color":"#e700fc"}]
execute if score $interval minecraft_but.death_swap matches 600 run title @a actionbar [{"text":"Swapping approaching...","color":"#d416e5"}]
execute if score $interval minecraft_but.death_swap matches 400 run title @a actionbar [{"text":"Swapping likely...","color":"#c025ce"}]
execute if score $interval minecraft_but.death_swap matches 300 run title @a actionbar [{"text":"Swapping highly likely...","color":"#a423af","bold":true}]
execute if score $interval minecraft_but.death_swap matches 200 run title @a actionbar [{"text":"Swapping INCREDIBLY LIKELY!","color":"#871891","bold":true}]
execute if score $interval minecraft_but.death_swap matches 100 run title @a actionbar [{"text":"PREPARE FOR SWAPPING!","color":"#6f1677","bold":true}]