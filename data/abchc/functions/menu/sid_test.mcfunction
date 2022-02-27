scoreboard players operation .search abch.menu.sid = @s abch.menu.sid
tag @s add this
execute as @e[ tag=abch.menu, predicate=abchc:menu/sid ] if score @s abch.menu.sid = .search abch.menu.sid run function abchc:menu/actions
tag @s remove this