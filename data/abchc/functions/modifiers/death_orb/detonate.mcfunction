#> abchc:modifiers/death_orb/detonate
#
# Detonate death orb, killing player and creating flashy effects
#
# @context orb
# @within abchc:modifiers/death_orb/actions

tag @e[ type=#abchc:living_base,distance=..2] add abch.death_orb.detonated

#playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 0.5
#playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 2 1.5
playsound block.end_portal.spawn hostile @a ~ ~ ~ 2.5 .25
particle portal ~ ~ ~ 0.5 0.5 0.5 1 100 normal
particle reverse_portal ~ ~ ~ 0.3 0.3 0.3 2 100 normal
particle flash ~ ~ ~ 0.3 0.3 0.3 1 1000 normal


execute at @s run particle minecraft:dust_color_transition 1 0 1 4 0.2 0 0.4 ~ ~ ~ 0.35 0.35 0.35 0.01 3 force
# Blueish purple particles which fade to a reddish blue black
execute at @s run particle minecraft:dust_color_transition .5 0 1 4 0.1 0 0.5 ~ ~ ~ 0.35 0.35 0.35 0.01 3 force

# Spawn portal particles *in front* of the orb so the particles don't collapse in too far behind the orb
execute at @s facing entity @p[ tag=abch.death_orb.this] eyes run particle portal ^ ^ ^1 0 0 0 1 15 force

execute at @s facing entity @p[ tag=abch.death_orb.this] eyes run particle reverse_portal ^ ^ ^ 0 0 0 .35 15 force


execute if entity @e[tag=abch.death_orb.detonated,type=player] if score gamerule.showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if entity @e[tag=abch.death_orb.detonated,type=player] run tag @e[tag=abch.death_orb.detonated,type=player] add abch.death_orb.death
#execute if score gamerule.showDeathMessages abch.config matches 1 run tellraw @a ["",{"selector":"@p"}," tasted the eternal void"]
#execute if score gamerule.showDeathMessages abch.config matches 1 run gamerule showDeathMessages true

execute if entity @e[tag=abch.death_orb.detonated,type=player] run stopsound @a * entity.generic.hurt

kill @e[tag=abch.death_orb.detonated]
execute if entity @e[tag=abch.death_orb.detonated,type=player] run kill @s
tag @e remove abch.death_orb.detonated