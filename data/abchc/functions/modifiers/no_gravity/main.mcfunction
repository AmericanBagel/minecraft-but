# No gravity
execute as @e[ type=!player, tag=!global.ignore, tag=!abch.no_gravity.blacklist, tag=!abch.blacklist ] at @s run data modify entity @s NoGravity set value 1b
effect give @e[ type=player, tag=!global.ignore, tag=!abch.no_gravity.blacklist, tag=!abch.blacklist ] slow_falling 1 255 true
effect give @e[ type=player, tag=!global.ignore, tag=!abch.no_gravity.blacklist, tag=!abch.blacklist ] levitation 1 255 true

# Lower players who sneak
execute if score no_gravity.travel abch.config matches 1 as @a[scores={abch.no_gravity.sneak=1..}] at @s if block ~ ~-.1 ~ #abchc:air run tp @s ~ ~-.1 ~

# Raise players who look up
execute if score no_gravity.travel abch.config matches 1 as @a[x_rotation=-90..-30] at @s if block ~ ~.1 ~ #abchc:air run tp @s ~ ~.1 ~