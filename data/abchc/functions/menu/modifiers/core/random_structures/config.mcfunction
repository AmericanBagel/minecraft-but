#> abchc:menu/modifiers/core/random_structures/config
# Config menu for random_structures made with
# ../src/index.js
#
# @within abchc:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append
  
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"Features randomly spawn","color":"#7f22fb","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.random_structures.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.random_structures.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.random_structures.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add abch.random_structures.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]

#> Chance
# How likely feature spawning is
# ID: chance
# Type: number
execute unless score random_structures.chance abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/reset"}},{"text":" Chance: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How likely feature spawning is","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/1down"}},{"score":{"name":"random_structures.chance","objective":"abch.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/5up"}}]
          
execute if score random_structures.chance abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/reset"}},{"text":" Chance: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How likely feature spawning is","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/1down"}},{"score":{"name":"random_structures.chance","objective":"abch.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/chance/5up"}}]

#> Sound effects
# Whether to play sound effects when a feature is spawned or not. By default, sound effects are disabled if the chance is above 4 to preserve your precious eardrums.
# ID: sfx
# Type: toggle

# If config is set, show toggle based on config
execute if score random_structures.sfx abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"Sound effects","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Whether to play sound effects when a feature is spawned or not. By default, sound effects are disabled if the chance is above 4 to preserve your precious eardrums.","color":"#ECEFF5"}]}}]
execute if score random_structures.sfx abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"Sound effects","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Whether to play sound effects when a feature is spawned or not. By default, sound effects are disabled if the chance is above 4 to preserve your precious eardrums.","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score random_structures.sfx abch.config matches -2147483648..2147483647 unless score random_structures.sfx abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"Sound effects","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Whether to play sound effects when a feature is spawned or not. By default, sound effects are disabled if the chance is above 4 to preserve your precious eardrums.","color":"#ECEFF5"}]}}]
execute unless score random_structures.sfx abch.config matches -2147483648..2147483647 if score random_structures.sfx abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/random_structures/sfx/toggle"}},{"text":"Sound effects","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Whether to play sound effects when a feature is spawned or not. By default, sound effects are disabled if the chance is above 4 to preserve your precious eardrums.","color":"#ECEFF5"}]}}]