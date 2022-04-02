#> abchc:menu/modifiers/core/modifier/toggle/toggle
# Turn on toggle config generated with
# the script in ../src
# @within abchc:menu/**
# @context player

# Add score
scoreboard players add toggle abch.config 1

# If score goes above 1, set it to 0
execute if score toggle abch.config matches 2.. run scoreboard players set toggle abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/modifier/config