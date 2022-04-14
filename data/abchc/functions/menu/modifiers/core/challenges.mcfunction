#> abchc:menu/modifiers/core/challenges
# List "Challenges" type modifiers
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> Update page score
scoreboard players set @s abch.menu.page 12

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append

#> Header

# If there are no expansion loaded, clicking top bar sends player back to main menu.
# Doing this gets rid of that unnecessary step between directory and page 1 here.
execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Challenges","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

# If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
# which has links to the different expansion packs' modifiers pages.
execute if score $total abch.expansion matches 1.. run execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Modifiers

#> Modifiers
# [✔] [⚙] (Modifier Name)

## You have to live underwater (mermaid)
# Leaving water kills you. 
execute unless score mermaid abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/config"}},{"text":"You have to live underwater","bold":false,"color":"#ffff00","hoverEvent": {"action":"show_text","contents":[{"text":"Leaving water kills you."}]}}]
execute if score mermaid abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/config"}},{"text":"You have to live underwater","bold":false,"color":"#ffff00","hoverEvent": {"action":"show_text","contents":[{"text":"Leaving water kills you."}]}}]

## You can't touch water (toxic_water)
# If you touch water, you die. 
execute unless score toxic_water abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/toxic_water/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/toxic_water/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/toxic_water/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/toxic_water/config"}},{"text":"You can't touch water","bold":false,"color":"#fef600","hoverEvent": {"action":"show_text","contents":[{"text":"If you touch water, you die."}]}}]
execute if score toxic_water abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/toxic_water/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/toxic_water/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/toxic_water/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/toxic_water/config"}},{"text":"You can't touch water","bold":false,"color":"#fef600","hoverEvent": {"action":"show_text","contents":[{"text":"If you touch water, you die."}]}}]

## You can't touch grass (botanophobia)
# Sorry, Twitter users and gamers. This one isn't for you. 
execute unless score botanophobia abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/botanophobia/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/botanophobia/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/botanophobia/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/botanophobia/config"}},{"text":"You can't touch grass","bold":false,"color":"#feed00","hoverEvent": {"action":"show_text","contents":[{"text":"Sorry, Twitter users and gamers. This one isn't for you."}]}}]
execute if score botanophobia abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/botanophobia/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/botanophobia/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/botanophobia/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/botanophobia/config"}},{"text":"You can't touch grass","bold":false,"color":"#feed00","hoverEvent": {"action":"show_text","contents":[{"text":"Sorry, Twitter users and gamers. This one isn't for you."}]}}]

## Taking damage blinds you (blinding_damage)
# According to recent research, fatal anemia can, among other symptoms, cause blindness! 
execute unless score blinding_damage abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/blinding_damage/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/blinding_damage/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/blinding_damage/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/blinding_damage/config"}},{"text":"Taking damage blinds you","bold":false,"color":"#fee500","hoverEvent": {"action":"show_text","contents":[{"text":"According to recent research, fatal anemia can, among other symptoms, cause blindness!"}]}}]
execute if score blinding_damage abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/blinding_damage/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/blinding_damage/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/blinding_damage/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/blinding_damage/config"}},{"text":"Taking damage blinds you","bold":false,"color":"#fee500","hoverEvent": {"action":"show_text","contents":[{"text":"According to recent research, fatal anemia can, among other symptoms, cause blindness!"}]}}]

## You randomly drop items (lazy_inventory)
# As you walk, you have a chance to drop items. 
execute unless score lazy_inventory abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lazy_inventory/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lazy_inventory/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lazy_inventory/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lazy_inventory/config"}},{"text":"You randomly drop items","bold":false,"color":"#fedc00","hoverEvent": {"action":"show_text","contents":[{"text":"As you walk, you have a chance to drop items."}]}}]
execute if score lazy_inventory abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lazy_inventory/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lazy_inventory/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lazy_inventory/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/lazy_inventory/config"}},{"text":"You randomly drop items","bold":false,"color":"#fedc00","hoverEvent": {"action":"show_text","contents":[{"text":"As you walk, you have a chance to drop items."}]}}]

## You have no inventory (limited_inventory)
# All your inventory slots are locked. However, every 2 levels of XP you unlock one slot. 
execute unless score limited_inventory abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/config"}},{"text":"You have no inventory","bold":false,"color":"#fed400","hoverEvent": {"action":"show_text","contents":[{"text":"All your inventory slots are locked. However, every 2 levels of XP you unlock one slot."}]}}]
execute if score limited_inventory abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/config"}},{"text":"You have no inventory","bold":false,"color":"#fed400","hoverEvent": {"action":"show_text","contents":[{"text":"All your inventory slots are locked. However, every 2 levels of XP you unlock one slot."}]}}]

## You can only go one direction (look_straight)
# Who needs two axes when you already have one? 
execute unless score look_straight abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/config"}},{"text":"You can only go one direction","bold":false,"color":"#fdcb00","hoverEvent": {"action":"show_text","contents":[{"text":"Who needs two axes when you already have one?"}]}}]
execute if score look_straight abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/config"}},{"text":"You can only go one direction","bold":false,"color":"#fdcb00","hoverEvent": {"action":"show_text","contents":[{"text":"Who needs two axes when you already have one?"}]}}]

## Fall damage kills you (deadly_falls)
# Pro tip: get a water bucket. 
execute unless score deadly_falls abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_falls/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_falls/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_falls/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_falls/config"}},{"text":"Fall damage kills you","bold":false,"color":"#fdc300","hoverEvent": {"action":"show_text","contents":[{"text":"Pro tip: get a water bucket."}]}}]
execute if score deadly_falls abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_falls/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_falls/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_falls/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_falls/config"}},{"text":"Fall damage kills you","bold":false,"color":"#fdc300","hoverEvent": {"action":"show_text","contents":[{"text":"Pro tip: get a water bucket."}]}}]

## You can't stop moving (keep_moving)
# Keep moving, buddy. Or else. Crafting something? Be quick there, pal. You don't want to stay still for too long, mi amigo. 
execute unless score keep_moving abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/keep_moving/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/keep_moving/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/keep_moving/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/keep_moving/config"}},{"text":"You can't stop moving","bold":false,"color":"#fdba00","hoverEvent": {"action":"show_text","contents":[{"text":"Keep moving, buddy. Or else. Crafting something? Be quick there, pal. You don't want to stay still for too long, mi amigo."}]}}]
execute if score keep_moving abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/keep_moving/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/keep_moving/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/keep_moving/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/keep_moving/config"}},{"text":"You can't stop moving","bold":false,"color":"#fdba00","hoverEvent": {"action":"show_text","contents":[{"text":"Keep moving, buddy. Or else. Crafting something? Be quick there, pal. You don't want to stay still for too long, mi amigo."}]}}]

## There's no gravity (no_gravity)
# There's no gravity! Get creative with trying to move up and down! Pro tip: boats are a great way to get around. Just hop in one and flyyyyyy!  
execute unless score no_gravity abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_gravity/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_gravity/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_gravity/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_gravity/config"}},{"text":"There's no gravity","bold":false,"color":"#fdb200","hoverEvent": {"action":"show_text","contents":[{"text":"There's no gravity! Get creative with trying to move up and down! Pro tip: boats are a great way to get around. Just hop in one and flyyyyyy! "}]}}]
execute if score no_gravity abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_gravity/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_gravity/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_gravity/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_gravity/config"}},{"text":"There's no gravity","bold":false,"color":"#fdb200","hoverEvent": {"action":"show_text","contents":[{"text":"There's no gravity! Get creative with trying to move up and down! Pro tip: boats are a great way to get around. Just hop in one and flyyyyyy! "}]}}]

## Gravity is reversed (reverse_gravity)
# Basically Australia. How do they even stay on earth? Anti-gravity fields? 
execute unless score reverse_gravity abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/reverse_gravity/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/reverse_gravity/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/reverse_gravity/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/reverse_gravity/config"}},{"text":"Gravity is reversed","bold":false,"color":"#fda900","hoverEvent": {"action":"show_text","contents":[{"text":"Basically Australia. How do they even stay on earth? Anti-gravity fields?"}]}}]
execute if score reverse_gravity abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/reverse_gravity/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/reverse_gravity/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/reverse_gravity/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/reverse_gravity/config"}},{"text":"Gravity is reversed","bold":false,"color":"#fda900","hoverEvent": {"action":"show_text","contents":[{"text":"Basically Australia. How do they even stay on earth? Anti-gravity fields?"}]}}]

## You always crawl (crawling)
# If you've got four limbs, you'd better use them! 
execute unless score crawling abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/crawling/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/crawling/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/crawling/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/crawling/config"}},{"text":"You always crawl","bold":false,"color":"#fca100","hoverEvent": {"action":"show_text","contents":[{"text":"If you've got four limbs, you'd better use them!"}]}}]
execute if score crawling abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/crawling/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/crawling/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/crawling/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/crawling/config"}},{"text":"You always crawl","bold":false,"color":"#fca100","hoverEvent": {"action":"show_text","contents":[{"text":"If you've got four limbs, you'd better use them!"}]}}]

## You can't eat meat (herbivore)
# Due to a rapid spread of a new strain of \"Alien Animal Disease\", meat has been illegalized in all 14 systems of the Galactic Union. 
execute unless score herbivore abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/herbivore/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/herbivore/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/herbivore/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/herbivore/config"}},{"text":"You can't eat meat","bold":false,"color":"#fc9800","hoverEvent": {"action":"show_text","contents":[{"text":"Due to a rapid spread of a new strain of \"Alien Animal Disease\", meat has been illegalized in all 14 systems of the Galactic Union."}]}}]
execute if score herbivore abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/herbivore/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/herbivore/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/herbivore/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/herbivore/config"}},{"text":"You can't eat meat","bold":false,"color":"#fc9800","hoverEvent": {"action":"show_text","contents":[{"text":"Due to a rapid spread of a new strain of \"Alien Animal Disease\", meat has been illegalized in all 14 systems of the Galactic Union."}]}}]

## You can only eat meat (carnivore)
# Greetings, alie--I mean fellow humans! It is with great joy that we announce that meat is good! Eat it! Eat it all! That Alien Animal Disease thing? That was just a conspiracy theory. Now eat it! Eat all the meat! You won't become an glorbazoid. We promise. 
execute unless score carnivore abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/carnivore/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/carnivore/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/carnivore/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/carnivore/config"}},{"text":"You can only eat meat","bold":false,"color":"#fc9000","hoverEvent": {"action":"show_text","contents":[{"text":"Greetings, alie--I mean fellow humans! It is with great joy that we announce that meat is good! Eat it! Eat it all! That Alien Animal Disease thing? That was just a conspiracy theory. Now eat it! Eat all the meat! You won't become an glorbazoid. We promise."}]}}]
execute if score carnivore abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/carnivore/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/carnivore/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/carnivore/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/carnivore/config"}},{"text":"You can only eat meat","bold":false,"color":"#fc9000","hoverEvent": {"action":"show_text","contents":[{"text":"Greetings, alie--I mean fellow humans! It is with great joy that we announce that meat is good! Eat it! Eat it all! That Alien Animal Disease thing? That was just a conspiracy theory. Now eat it! Eat all the meat! You won't become an glorbazoid. We promise."}]}}]

## Colors kill you (deadly_colors)
# According to Prof. H. D. Magnomore, recent solar flares have increased the radioactivity of highly energetic colors. Magnomore advises people to limit their exposures to lethal colors. 
execute unless score deadly_colors abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_colors/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_colors/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_colors/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_colors/config"}},{"text":"Colors kill you","bold":false,"color":"#fc8700","hoverEvent": {"action":"show_text","contents":[{"text":"According to Prof. H. D. Magnomore, recent solar flares have increased the radioactivity of highly energetic colors. Magnomore advises people to limit their exposures to lethal colors."}]}}]
execute if score deadly_colors abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_colors/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_colors/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_colors/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/deadly_colors/config"}},{"text":"Colors kill you","bold":false,"color":"#fc8700","hoverEvent": {"action":"show_text","contents":[{"text":"According to Prof. H. D. Magnomore, recent solar flares have increased the radioactivity of highly energetic colors. Magnomore advises people to limit their exposures to lethal colors."}]}}]


# !? You can't jump (no_jump)
# !? You can't sneak (no_sneak)
# !? You can't walk (no_walk)
# !? You can't sprint (schlatt_mode)
# !? You can't kill anything (pacifists)