#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_orb/config
# Config menu for death_orb made with
# ../src/index.js
#
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.coreraft_but.core:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.coreraft_but.core:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"An orb of death relentlessly follows you","color":"undefined","clickEvent":{"action":"run_command","valueminecraft_but.coreunction minecraft_but.core:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_cominecraft_but.core","value":"/function minecraft_but.core:menu/modifiers/core/chaos"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.death_orb.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.death_orb.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.death_orb.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.death_orb.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]                    

#> Corrupting Aura
                    # Should the Death Orb have a corrupting aura which degrades and infects the blocks around it?
                    # ID: corrupt
                    # Type: toggle

                    # If config is set, show toggle based on config
                    execute if score death_orb.corrupt minecraft_but.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"Corrupting Aura","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should the Death Orb have a corrupting aura which degrades and infects the blocks around it?","color":"#ECEFF5"}]}}]
                    execute if score death_orb.corrupt minecraft_but.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"Corrupting Aura","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should the Death Orb have a corrupting aura which degrades and infects the blocks around it?","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score death_orb.corrupt minecraft_but.config matches -2147483648..2147483647 unless score death_orb.corrupt minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","minecraft_but.core":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"rminecraft_but.coremmand","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"]","color":"#FF0000","clickEvent"minecraft_but.coretion":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":" [✖] ","color":"#FF0000"minecraft_but.coreckEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"Corrupting Aura","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should the Death Orb have a corrupting aura which degrades and infects the blocks around it?","color":"#ECEFF5"}]}}]
                    execute unless score death_orb.corrupt minecraft_but.config matches -2147483648..2147483647 if score death_orb.corrupt minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","minecraft_but.core":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"rminecraft_but.coremmand","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"]","color":"#FF0000","clickEvent"minecraft_but.coretion":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":" [✔] ","color":"#3ED011"minecraft_but.coreckEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/death_orb/corrupt/toggle"}},{"text":"Corrupting Aura","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should the Death Orb have a corrupting aura which degrades and infects the blocks around it?","color":"#ECEFF5"}]}}]