#> minecraft_but.core:menu/modifiers/core/explosive_phantoms/config
# Config menu for explosive_phantoms made with
# ../src/index.js
#
# @within minecraft_but.core:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.core:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/mobs"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"Phantoms explode","color":"#cd500d","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/mobs"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/mobs"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.explosive_phantoms.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.explosive_phantoms.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.explosive_phantoms.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.explosive_phantoms.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]                        

#> Explosion radius
                        # How explosive should phantom explosions be? Negative values hurt players but do not destroy blocks.
                        # ID: radius
                        # Type: number
                        execute unless score explosive_phantoms.radius minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/reset"}},{"text":" Explosion radius: ","color":"undefined","hoverEvent":{"action":"show_text","contents":[{"text":"How explosive should phantom explosions be? Negative values hurt players but do not destroy blocks.","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/1down"}},{"score":{"name":"explosive_phantoms.radius","objective":"minecraft_but.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/5up"}}]
                                    
                        execute if score explosive_phantoms.radius minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/reset"}},{"text":" Explosion radius: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How explosive should phantom explosions be? Negative values hurt players but do not destroy blocks.","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/1down"}},{"score":{"name":"explosive_phantoms.radius","objective":"minecraft_but.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/5up"}}]                    

#> Explosion cooldown
                    # The cooldown of phantom explosions. Usually, phantoms will die from their explosions. However, in cases that they do not die, you can specify a cooldown for their explosions.
                    # ID: interval
                    # Type: range
                    execute unless score explosive_phantoms.interval minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/reset"}},{"text":" Explosion cooldown: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"The cooldown of phantom explosions. Usually, phantoms will die from their explosions. However, in cases that they do not die, you can specify a cooldown for their explosions.","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/1down"}},{"score":{"name":"explosive_phantoms.interval","objective":"minecraft_but.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/5up"}}]
                                
                    execute if score explosive_phantoms.interval minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/reset"}},{"text":" Explosion cooldown: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"The cooldown of phantom explosions. Usually, phantoms will die from their explosions. However, in cases that they do not die, you can specify a cooldown for their explosions.","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/1down"}},{"score":{"name":"explosive_phantoms.interval","objective":"minecraft_but.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/5up"}}]                    

#> Kill on explode
                    # Should phantoms be killed when they explode, or should they be able to survive explosions?
                    # ID: kill
                    # Type: toggle

                    # If config is set, show toggle based on config
                    execute if score explosive_phantoms.kill minecraft_but.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"Kill on explode","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should phantoms be killed when they explode, or should they be able to survive explosions?","color":"#ECEFF5"}]}}]
                    execute if score explosive_phantoms.kill minecraft_but.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"Kill on explode","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should phantoms be killed when they explode, or should they be able to survive explosions?","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score explosive_phantoms.kill minecraft_but.config matches -2147483648..2147483647 unless score explosive_phantoms.kill minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"Kill on explode","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should phantoms be killed when they explode, or should they be able to survive explosions?","color":"#ECEFF5"}]}}]
                    execute unless score explosive_phantoms.kill minecraft_but.config matches -2147483648..2147483647 if score explosive_phantoms.kill minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/toggle"}},{"text":"Kill on explode","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should phantoms be killed when they explode, or should they be able to survive explosions?","color":"#ECEFF5"}]}}]