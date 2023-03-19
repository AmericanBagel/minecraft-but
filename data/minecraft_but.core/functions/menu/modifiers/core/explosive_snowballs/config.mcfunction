#> minecraft_but.core:menu/modifiers/core/explosive_snowballs/config
# Config menu for explosive_snowballs made with
# ../src/index.js
#
# @within minecraft_but.core:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.core:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosions"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"Snowballs explode","color":"#c13810","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosions"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosions"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.explosive_snowballs.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.explosive_snowballs.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.explosive_snowballs.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.explosive_snowballs.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]                    

#> Explosion radius
                    # How large explosions should be. Negative values don't destroy blocks but damage mobs.
                    # ID: radius
                    # Type: number
                    execute unless score explosive_snowballs.radius minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/reset"}},{"text":" Explosion radius: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How large explosions should be. Negative values don't destroy blocks but damage mobs.","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/1down"}},{"score":{"name":"explosive_snowballs.radius","objective":"minecraft_but.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/5up"}}]
                                
                    execute if score explosive_snowballs.radius minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/reset"}},{"text":" Explosion radius: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How large explosions should be. Negative values don't destroy blocks but damage mobs.","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/1down"}},{"score":{"name":"explosive_snowballs.radius","objective":"minecraft_but.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/5up"}}]