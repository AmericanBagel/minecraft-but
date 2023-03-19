#> minecraft_but.coreraft_but.core:modifiers/waning_wellness/eat_golden_apple
# Function run by "minecraft_but.coreraft_but.core:modifiers/waning_wellness/eat_golden_apple" advancement
#
# Heals player and removes advancement so player can use it again
# @private
# @context enchanted golden apple eater

#> Remove advancement so players can heal again
advancement revoke @s only minecraft_but.coreraft_but.core:modifiers/waning_wellness/eat_ench_gold_apple

#> Increase max health
execute if score waning_wellness minecraft_but.toggle matches 1.. run minecraft_but.coreion minecraft_but.core:modifiers/waning_wellness/increase_health