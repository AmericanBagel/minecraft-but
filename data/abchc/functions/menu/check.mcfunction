execute store result score @s abch.menu.item run clear @s #abchc:chest_menu{abch:{isMenu:1b}} 0
execute if score @s abch.menu.item matches 1.. run function abchc:menu/directory