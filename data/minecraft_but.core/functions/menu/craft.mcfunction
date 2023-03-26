#> minecraft_but.core:menu/craft
# Knowledge book NBT crafting
recipe take @s minecraft_but.core:chaos_menu
advancement revoke @s only minecraft_but.core:craft_chaos_menu
function minecraft_but.core:menu/give_item
clear @s minecraft:knowledge_book