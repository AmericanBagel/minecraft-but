execute as @a run scoreboard players add @s abch_ytpTimer 1
execute as @a at @s if score @s abch_ytpTimer matches 60..79 if predicate abchc:025pct run function abchc:modifiers/you_tp_where_you_look/start_raycast
execute as @a at @s if score @s abch_ytpTimer matches 80..99 if predicate abchc:035pct run function abchc:modifiers/you_tp_where_you_look/start_raycast
execute as @a at @s if score @s abch_ytpTimer matches 100..119 if predicate abchc:05pct run function abchc:modifiers/you_tp_where_you_look/start_raycast
execute as @a at @s if score @s abch_ytpTimer matches 120.. run function abchc:modifiers/you_tp_where_you_look/start_raycast