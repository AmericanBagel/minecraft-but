#> minecraft_but.core:menu/information
# Menu page with basic information about the pack
# and a link to the PMC page
# @user
# @within minecraft_but.core:modifiers/menu/**

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update page score
scoreboard players set @s minecraft_but.menu.page 2

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Top Bar
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Information","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Info
# Information body
tellraw @s [{"text":"The ","color":"#ECEFF5"},{"text":"Minecraft, ","color":"#6BD716"},{"text":"but","bold":true,"color":"#6BD716"},{"text":" Megapack","bold":true,"color":"#CF2020"},{"text":" aims to solve the largest problem among all ","color":"#ECEFF5"},{"text":"Minecraft, ","color":"#6BD716"},{"text":"but ","bold":true,"color":"#6BD716"},{"text":"datapacks: it's a pain to use them. For each ","color":"#ECEFF5"},{"text":"Minecraft, ","color":"#6BD716"},{"text":"but","bold":true,"color":"#6BD716"},{"text":" datapack you want to use, you have to remember another configuration method, deal with incompatibilities, and type ","color":"#ECEFF5"},{"text":"/datapack enable/disable \"file/...\"","underlined":true,"color":"#A8A8A8"},{"text":" a whole lot.\nI always liked the idea of ","color":"#ECEFF5"},{"text":"Minecraft, ","color":"#6BD716"},{"text":"but","bold":true,"color":"#6BD716"},{"text":" packs, but they were a pain to use, so I made my own. I had decided to destroy the ","color":"#ECEFF5"},{"text":"Minecraft, ","color":"#6BD716"},{"text":"but","bold":true,"color":"#6BD716"},{"text":" datapack genre and render it useless. So I worked for over a year on this datapack.","color":"#ECEFF5"}]
tellraw @s [{"text":"The UI shouldn't be too hard to figure out, but if you really are having problems with it, look at ","color":"#ECEFF5"},{"text":"the PlanetMinecraft page","underlined":true,"color":"#ECEFF5","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-packs/5537948"}},{"text":" or ","color":"#ECEFF5"},{"text":"the GitHub page","color":"#ECEFF5","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/AmericanBagel/minecraft-but"}},{"text":".\nIf you have any suggestions, leave a comment on "},{"text":" PlanetMinecraft","underlined":true,"color":"#ECEFF5","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-packs/5537948"}},{"text":" or an Issue on "},{"text":"GitHub","color":"#ECEFF5","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/AmericanBagel/minecraft-but"}},{"text":".","color":"#ECEFF5"},{"text":" Enjoy!","bold":true}]

#> Set sendCommandFeedback back
schedule function minecraft_but.core:menu/actions/enable_feedback 1t append


#,"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/"}

# ---------------------------------------------
# Minecraft, but - a data pack by AmericanBagel
# ---------------------------------------------
# [✔] ENABLED / [✖] DISABLED
#
#  |→ Information 
#  |→ Modifiers 
#  |→ Credits
# (if player is admin)
#  |→ Admin Panel
#
# (if modifiers are active)
# minecraft_but.toggle@$total modifiers active
# Difficulty: ← Easy / ☮Normal / ☯Hard ☠ →