#> abchc:modifiers/waning_wellness/eat_golden_apple
# Function run by "abchc:modifiers/waning_wellness/eat_golden_apple" advancement
#
# Heals player and removes advancement so player can use it again
# @private
# @context enchanted golden apple eater

#> Remove advancement so players can heal again
execute if score waning_wellness abch.toggle matches 1.. run advancement revoke @s only abchc:modifiers/waning_wellness/eat_ench_gold_apple

#> Increase max health
execute if score waning_wellness abch.toggle matches 1.. run function abchc:modifiers/waning_wellness/increase_health