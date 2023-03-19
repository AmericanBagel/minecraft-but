#> minecraft_but.coreraft_but.core:modifiers/mermaid/load
# Load function for "mermaid" modifier
# Manage scoreboards and configs
# @within minecraft_but.coreraft_but.core:modifiers/load
# @context root

#> Timer to play sound
scoreboard objectives add minecraft_but.mermaid.timer dummy
scoreboard objectives add minecraft_but.mermaid.deaths deathCount
scoreboard objectives add minecraft_but.mermaid dummy

#> Configs
# If difficulty isn't set, default to global difficulty
execute unless score difficulty.mermaid minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation difficulty.mermaid minecraft_but.config = difficulty.global minecraft_but.config
scoreboard players operation difficulty.mermaid minecraft_but.default = difficulty.global minecraft_but.config

# Dolphins grace
scoreboard players set mermaid.dolphins_grace minecraft_but.default 1
execute unless score mermaid.dolphins_grace minecraft_but.config matches 0..1 run scoreboard players set mermaid.dolphins_grace minecraft_but.config 1

# Rain mercy
scoreboard players set mermaid.rain minecraft_but.default 1
execute unless score mermaid.rain minecraft_but.config matches 0..1 run scoreboard players set mermaid.rain minecraft_but.config 1

# Warning message in actionbar
scoreboard players set mermaid.warning minecraft_but.default 1
execute unless score mermaid.warning minecraft_but.config matches 0..1 run scoreboard players set mermaid.rain minecraft_but.config 1

# Warning sound
scoreboard players set mermaid.sfx minecraft_but.default 1
execute unless score mermaid.sfx minecraft_but.config matches 0..1 run scoreboard players set mermaid.rain minecraft_but.config 1