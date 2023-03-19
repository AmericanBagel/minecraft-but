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
execute unless score difficulty.mermaid abch.config matches -2147483648..2147483647 run scoreboard players operation difficulty.mermaid abch.config = difficulty.global abch.config
scoreboard players operation difficulty.mermaid abch.default = difficulty.global abch.config

# Dolphins grace
scoreboard players set mermaid.dolphins_grace abch.default 1
execute unless score mermaid.dolphins_grace abch.config matches 0..1 run scoreboard players set mermaid.dolphins_grace abch.config 1

# Rain mercy
scoreboard players set mermaid.rain abch.default 1
execute unless score mermaid.rain abch.config matches 0..1 run scoreboard players set mermaid.rain abch.config 1

# Warning message in actionbar
scoreboard players set mermaid.warning abch.default 1
execute unless score mermaid.warning abch.config matches 0..1 run scoreboard players set mermaid.rain abch.config 1

# Warning sound
scoreboard players set mermaid.sfx abch.default 1
execute unless score mermaid.sfx abch.config matches 0..1 run scoreboard players set mermaid.rain abch.config 1