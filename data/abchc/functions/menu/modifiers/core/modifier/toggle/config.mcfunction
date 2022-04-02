#> abchc:menu/modifiers/core/modifier/toggle/config
# Config menu for toggle with help from
# the script in ../src
# @within abchc:menu/**
# @context player

#> On/Off  
# If config is set, show on/off based on config
execute if score toggle abch.config matches -2147483648..2147483647 unless score toggle abch.config matches 1 run tellraw @p [{"text":" [","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":"] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/on"}},{"text":" Toggle","color":"#ECEFF5"}]
execute if score toggle abch.config matches -2147483648..2147483647 if score value abch.config matches 1 run tellraw @p [{"text":" [","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":"] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/off"}},{"text":" Toggle","color":"#ECEFF5"}]

# If no config is set, show on/off based on default
execute unless score toggle abch.config matches -2147483648..2147483647 unless score toggle abch.default matches 1 run tellraw @p [{"text":" [","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":"] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/on"}},{"text":" Toggle","color":"#ECEFF5"}]
execute unless score toggle abch.config matches -2147483648..2147483647 if score toggle abch.default matches 1 run tellraw @p [{"text":" [","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":"] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/reset"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/modifier/toggle/off"}},{"text":" Toggle","color":"#ECEFF5"}]