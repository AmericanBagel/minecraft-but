#> minecraft_but.core:uninstall
# Menu page for uninstalling the pack
# @user
# @within minecraft_but.core:**

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update page score
scoreboard players set @s minecraft_but.menu.page 3

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back
schedule function minecraft_but.core:menu/actions/enable_feedback 1t append

#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Uninstall","color":"#ff0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> 
tellraw @p [{"text":"Are you sure you want to uninstall this data pack? This will ","color":"#ECEFF5"},{"text":"irrevocably ","color":"#ff0000"},{"text":"remove your configurations to the data pack.","color":"#ECEFF5"},"\n\n",{"text":"If you have renamed the data pack's folder, you must use ","color":"#00AAFF"},{"text":"/datapack disable","italic":true,"underlined":true,"color":"#AAAAAA","insertion":"/datapack disable \"file/","clickEvent":{"action":"copy_to_clipboard","value":"/datapack disable \"file/"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to copy the command into your clipboard. ","color":"#ECEFF5"},{"text":"Do not run it yet. Run the command ","color":"#FF0000"},{"text":"after ","italic":true,"color":"#FF0000"},{"text":"clicking the \"","color":"#FF0000"},{"text":"Yes","bold":true,"color":"dark_red"},{"text":"\" button.","color":"#FF0000"}]}},{"text":" to completely uninstall the data pack.","color":"#00AAFF"},"\n\n                                ",{"text":"No","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[]}}," | ",{"text":"Yes","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:complete_uninstall"},"hoverEvent":{"action":"show_text","contents":[]}},"\n\n\n\n\n"]