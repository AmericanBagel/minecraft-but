#> abchc:menu/modifiers/core/lightning_storm/config
# Config menu for lightning_storm made with
# ../src/index.js
#
# @within abchc:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"Lightning is everywhere","color":"undefined","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.lightning_storm.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.lightning_storm.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.lightning_storm.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add abch.lightning_storm.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]                    

#> Lightning spawn rate
                    # How much or often should lightning spawn?
                    # ID: times
                    # Type: range
                    execute unless score lightning_storm.times abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/reset"}},{"text":" Lightning spawn rate: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How much or often should lightning spawn?","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/1down"}},{"score":{"name":"lightning_storm.times","objective":"abch.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/5up"}}]
                                
                    execute if score lightning_storm.times abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/reset"}},{"text":" Lightning spawn rate: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How much or often should lightning spawn?","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/1down"}},{"score":{"name":"lightning_storm.times","objective":"abch.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lightning_storm/times/5up"}}]