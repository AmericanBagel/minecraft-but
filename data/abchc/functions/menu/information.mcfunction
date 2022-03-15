#> abchc:menu/information
# Menu page with basic information about the pack
# and a link to the PMC page
# @user
# @within abchc:modifiers/menu/**

#> Click sound
function abchc:menu/actions/click

#> Update page score
scoreboard players set @s abch.menu.page 2

#> Top Bar
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Information","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Info
# Add PMC/PlanetMinecraft link!
#tellraw @s [{"text":"Minecraft, but it's absolute chaos "}]


#,"clickEvent":{"action":"run_command","value":"/function abchc:menu/"}

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
# abch.toggle@$total modifiers active
# Difficulty: ← Easy / ☮Normal / ☯Hard ☠ →