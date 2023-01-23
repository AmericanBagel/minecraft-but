#> minecraft_but.core:modifiers/look_straight/load
# Manage configs for "Look Straight" modifier
# @within minecraft_but.core:modifiers/load
# @context root

scoreboard objectives add minecraft_but.look_straight.x dummy
scoreboard objectives add minecraft_but.look_straight.y dummy

# TOGGLE: y - y - def 0
scoreboard players set look_straight.y minecraft_but.default 1
execute unless score look_straight.y minecraft_but.config matches 0..1 run scoreboard players set look_straight.y minecraft_but.config 1

# RANGE: y_rot - y rotation - def 0
scoreboard players set look_straight.y_rot minecraft_but.default 0
execute unless score look_straight.y_rot minecraft_but.config matches -2147483648..2147483647 run scoreboard players set look_straight.y_rot minecraft_but.config 0
execute if score look_straight.y_rot minecraft_but.config matches ..-91 run scoreboard players set look_straight.y_rot minecraft_but.config 90
execute if score look_straight.y_rot minecraft_but.config matches 91.. run scoreboard players set look_straight.y_rot minecraft_but.config -90

# TOGGLE: x - x - def 0
scoreboard players set look_straight.x minecraft_but.default 0
execute unless score look_straight.x minecraft_but.config matches 0..1 run scoreboard players set look_straight.x minecraft_but.config 0

# RANGE: x_rot - x rotation - def 0
scoreboard players set look_straight.x_rot minecraft_but.default 0
execute unless score look_straight.x_rot minecraft_but.config matches -2147483648..2147483647 run scoreboard players set look_straight.x_rot minecraft_but.config 0
execute if score look_straight.x_rot minecraft_but.config matches ..-91 run scoreboard players set look_straight.x_rot minecraft_but.config 90
execute if score look_straight.x_rot minecraft_but.config matches 91.. run scoreboard players set look_straight.x_rot minecraft_but.config -90