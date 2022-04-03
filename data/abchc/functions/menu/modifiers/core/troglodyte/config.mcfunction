#> abchc:menu/modifiers/core/troglodyte/config
# Config menu for undefined made with
# ../src/index.js
#
# @within abchc:menu/**
# @context player
  
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"Light kills you Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Difficulty
# How unforgiving the modifier should be. Ranges from Easy, Normal, to Hard.
# ID: difficulty
# Type: string
execute unless data storage abchc:menu/modifiers/core/troglodyte difficulty run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How unforgiving the modifier should be. Ranges from Easy, Normal, to Hard.","color":"#ECEFF5"}]}},{"text":" [←] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/down"}},{"text":"Easy","color":"#ECEFF5"},{"text":" [→] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/up"}}]
# If value is set, display value
execute if data storage abchc:menu/modifiers/core/troglodyte difficulty run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How unforgiving the modifier should be. Ranges from Easy, Normal, to Hard.","color":"#ECEFF5"}]}},{"text":" [←] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/down"}},{"nbt":"difficulty","storage":"abchc:menu/modifiers/core/troglodyte","color":"#ECEFF5"},{"text":" [→] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/troglodyte/difficulty/up"}}]
