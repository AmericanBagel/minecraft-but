#> abchc:modifiers/mermaid/load
# Load function for "mermaid" modifier
# Manage scoreboards and configs
# @within abchc:modifiers/load
# @context root

#> Timer to play sound
scoreboard objectives add abch.mermaid.timer dummy
scoreboard objectives add abch.mermaid.deaths deathCount
scoreboard objectives add abch.mermaid dummy

#> Configs
# If difficulty isn't set, default to global difficulty
execute unless score mermaid.difficulty abch.config matches -2147483648..2147483647 run scoreboard players operation mermaid.difficulty abch.config = difficulty.global abch.config
scoreboard players operation mermaid.difficulty abch.default = difficulty.global abch.config

# Dolphins grace
execute unless score mermaid.dolphins_grace abch.config matches 0..1 run scoreboard players set mermaid.dolphins_grace abch.config 1
execute unless score mermaid.dolphins_grace abch.config matches 0..1 run scoreboard players set mermaid.dolphins_grace abch.config 1