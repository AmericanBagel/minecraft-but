#> abchc:modifiers/look_straight/load
# Manage configs for "Look Straight" modifier
# @within abchc:modifiers/load
# @context root

scoreboard objectives add abch.look_straight.x dummy
scoreboard objectives add abch.look_straight.y dummy

# TOGGLE: y - y - def 0
scoreboard players set look_straight.y abch.default 1
execute unless score look_straight.y abch.config matches 0..1 run scoreboard players set look_straight.y abch.config 1

# RANGE: y_rot - y rotation - def 0
scoreboard players set look_straight.y_rot abch.default 0
execute unless score look_straight.y_rot abch.config matches -2147483648..2147483647 run scoreboard players set look_straight.y_rot abch.config 0
execute if score look_straight.y_rot abch.config matches ..-91 run scoreboard players set look_straight.y_rot abch.config 90
execute if score look_straight.y_rot abch.config matches 91.. run scoreboard players set look_straight.y_rot abch.config -90

# TOGGLE: x - x - def 0
scoreboard players set look_straight.x abch.default 0
execute unless score look_straight.x abch.config matches 0..1 run scoreboard players set look_straight.x abch.config 0

# RANGE: x_rot - x rotation - def 0
scoreboard players set look_straight.x_rot abch.default 0
execute unless score look_straight.x_rot abch.config matches -2147483648..2147483647 run scoreboard players set look_straight.x_rot abch.config 0
execute if score look_straight.x_rot abch.config matches ..-91 run scoreboard players set look_straight.x_rot abch.config 90
execute if score look_straight.x_rot abch.config matches 91.. run scoreboard players set look_straight.x_rot abch.config -90