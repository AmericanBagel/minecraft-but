execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.ytpwyl.blacklist, tag=!creative, tag=!spectator ] run scoreboard players add @s minecraft_but.ytpwyl.timer 1
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.ytpwyl.blacklist, tag=!creative, tag=!spectator ] at @s if score @s minecraft_but.ytpwyl.timer matches 60..79 if predicate minecraft_but.core:025pct run function minecraft_but.core:modifiers/you_tp_where_you_look/start_raycast
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.ytpwyl.blacklist, tag=!creative, tag=!spectator ] at @s if score @s minecraft_but.ytpwyl.timer matches 80..99 if predicate minecraft_but.core:035pct run function minecraft_but.core:modifiers/you_tp_where_you_look/start_raycast
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.ytpwyl.blacklist, tag=!creative, tag=!spectator ] at @s if score @s minecraft_but.ytpwyl.timer matches 100..119 if predicate minecraft_but.core:005pct run function minecraft_but.core:modifiers/you_tp_where_you_look/start_raycast
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.ytpwyl.blacklist, tag=!creative, tag=!spectator ] at @s if score @s minecraft_but.ytpwyl.timer matches 120.. run function minecraft_but.core:modifiers/you_tp_where_you_look/start_raycast