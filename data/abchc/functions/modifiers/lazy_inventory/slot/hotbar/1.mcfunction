#> abchc:modifiers/lazy_inventory/slot/hotbar/1
# @within abchc:

execute if score $slot abch.lazy_inventory matches -106 run item replace entity @s weapon.offhand with air
execute if score $slot abch.lazy_inventory matches 0 run item replace entity @s hotbar.0 with air
execute if score $slot abch.lazy_inventory matches 1 run item replace entity @s hotbar.1 with air
execute if score $slot abch.lazy_inventory matches 2 run item replace entity @s hotbar.2 with air
execute if score $slot abch.lazy_inventory matches 3 run item replace entity @s hotbar.3 with air