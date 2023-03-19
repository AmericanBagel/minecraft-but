#> minecraft_but.coreraft_but.core:menu/modifiers/directory
# Modifiers page
# @user
# @within minecraft_but.coreraft_but.core:modifiers/menu/**

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> minecraft_but.coreraft_but.core:menu/main
# Main chat page triggered by a player
# @user
# @within minecraft_but.coreraft_but.core:modifiers/menu/**

#> Update page score
scoreboard players set @s minecraft_but.menu.page 10

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.coreraft_but.core:menu/actions/enable_feedback 1t append

#> Top Bar
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.coreraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Modifiers","color":"#CF2020","clickEvent":{"action":"run_command","valueminecraft_but.coreunction minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Turn off all modifiers
tellraw @s [{"text":"[Turn off all modifiers]","color":"#DD3333","clickEvent":{"action":"run_command","value":"/function minecraft_but.coreraft_but.core:menu/modifiers/disable_all"}}]

#> Core Modifiers
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Core modifiers","color":"#17B7CD"},{"text":" page which has information about this data pack and how to use it.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.coreraft_but.core:menu/modifiers/core/categories"}},{"text":"Information","color":"#17B7CD","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Core modifiers","color":"#17B7CD"},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","valueminecraft_but.coreunction minecraft_but.core:menu/modifiers/core/categories"}}]

#> Expansion Packs
execute if score $1 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex1","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex1:menu/modifiers"}}
execute if score $2 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex2","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex2:menu/modifiers"}}
execute if score $3 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex3","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex3:menu/modifiers"}}
execute if score $4 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex4","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex4:menu/modifiers"}}
execute if score $5 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex5","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex5:menu/modifiers"}}
execute if score $6 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex6","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex6:menu/modifiers"}}
execute if score $7 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex7","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex7:menu/modifiers"}}
execute if score $8 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex8","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex8:menu/modifiers"}}
execute if score $9 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex9","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex9:menu/modifiers"}}
execute if score $10 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex10","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex10:menu/modifiers"}}
execute if score $11 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex11","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex11:menu/modifiers"}}
execute if score $12 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex12","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex12:menu/modifiers"}}
execute if score $13 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex13","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex13:menu/modifiers"}}
execute if score $14 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex14","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex14:menu/modifiers"}}
execute if score $15 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex15","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex15:menu/modifiers"}}
execute if score $16 minecraft_but.expansion matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"minecraft_but.ex16","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.ex16:menu/modifiers"}}