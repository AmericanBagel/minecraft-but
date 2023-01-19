#> abchc:menu/modifiers/core/2020_mode/config
# Config menu for 2020_mode made with
# ../src/index.js
#
# @within abchc:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/misc"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"You social distance","color":"#ffc2c2","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/misc"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/misc"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.2020_mode.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.2020_mode.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.2020_mode.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add abch.2020_mode.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]

#> Push away players
# Should players be pushed away from other players?
# ID: player
# Type: toggle

# If config is set, show toggle based on config
execute if score 2020_mode.player abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"Push away players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be pushed away from other players?","color":"#ECEFF5"}]}}]
execute if score 2020_mode.player abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"Push away players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be pushed away from other players?","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score 2020_mode.player abch.config matches -2147483648..2147483647 unless score 2020_mode.player abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"Push away players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be pushed away from other players?","color":"#ECEFF5"}]}}]
execute unless score 2020_mode.player abch.config matches -2147483648..2147483647 if score 2020_mode.player abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/player/toggle"}},{"text":"Push away players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be pushed away from other players?","color":"#ECEFF5"}]}}]

#> Push away entities
# Should entities be pushed away from other players?
# ID: entity
# Type: toggle

# If config is set, show toggle based on config
execute if score 2020_mode.entity abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"Push away entities","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should entities be pushed away from other players?","color":"#ECEFF5"}]}}]
execute if score 2020_mode.entity abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"Push away entities","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should entities be pushed away from other players?","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score 2020_mode.entity abch.config matches -2147483648..2147483647 unless score 2020_mode.entity abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"Push away entities","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should entities be pushed away from other players?","color":"#ECEFF5"}]}}]
execute unless score 2020_mode.entity abch.config matches -2147483648..2147483647 if score 2020_mode.entity abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/2020_mode/entity/toggle"}},{"text":"Push away entities","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should entities be pushed away from other players?","color":"#ECEFF5"}]}}]