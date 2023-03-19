#> minecraft_but.coreraft_but.core:menu/modifiers/core/degradation/config
# Config menu for degradation made with
# ../src/index.js
#
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.coreraft_but.core:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.coreraft_but.core:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"The world disintegrates","color":"#af159c","clickEvent":{"action":"run_command","valueminecraft_but.coreunction minecraft_but.core:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_cominecraft_but.core","value":"/function minecraft_but.core:menu/modifiers/core/chaos"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.degradation.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.degradation.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.degradation.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.degradation.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]                        

#> Speed
                        # How fast the world degrades around you
                        # ID: speed
                        # Type: number
                        execute unless score degradation.speed minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/degradation/speed/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/reset"}},{"text":" Speed: ","color":"#00dfff","hoverEvent":{"action":"show_text","contents":[{"text":"How fast the world degrades around you","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/5down"}},{"text":" [‹] ","color":"#ECEminecraft_but.core"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/1down"}},{"score":{"name":"degradation.speed","objective":"minecraft_but.default"},"color":"#ECEFF5"},{"text"minecraft_but.core] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/minecraft_but.core},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/5up"}}]
                                    
                        execute if score degradation.speed minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/degradation/speed/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/reset"}},{"text":" Speed: ","color":"#00dfff","hoverEvent":{"action":"show_text","contents":[{"text":"How fast the world degrades around you","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/5down"}},{"text":" [‹] ","color":"#ECEminecraft_but.core"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/1down"}},{"score":{"name":"degradation.speed","objective":"minecraft_but.config"},"color":"#ECEFF5"},{"text"minecraft_but.core] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/minecraft_but.core},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/degradation/speed/5up"}}]