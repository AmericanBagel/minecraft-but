#> minecraft_but.coreraft_but.core:modifiers/death_orb/visuals/directory
# Particles and sound effects for death orb
# @context orb
# @within minecraft_but.coreraft_but.core:modifiers/death_orb/actions
# @input
#   score @p[ tag=minecraft_but.death_orb.this ] minecraft_but.death_orb.distance
#       Distance between player linked to orb and the orb

#> Use different colors for the visuals based on distance
#
# Makes it look like the void is *reaching* for players, really cool I think
#
# Particles get darker and more blue the farther they are, getting lighter and red when closer
execute if score @s minecraft_but.death_orb.distance matches ..3 run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/visuals/3
execute if score @s minecraft_but.death_orb.distance matches 4..5 run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/visuals/5
execute if score @s minecraft_but.death_orb.distance matches 6..10 run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/visuals/10
execute if score @s minecraft_but.death_orb.distance matches 11..15 run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/visuals/15
execute if score @s minecraft_but.death_orb.distance matches 16..20 run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/visuals/20
execute if score @s minecraft_but.death_orb.distance matches 21..30 run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/visuals/30
execute if score @s minecraft_but.death_orb.distance matches 31..50 run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/visuals/50
execute if score @s minecraft_but.death_orb.distance matches 51.. run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/visuals/51

#> Sound Effects
execute at @s if predicate minecraft_but.coreraft_but.core:1pct run playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 3 0.4
execute at @s if predicate minecraft_but.coreraft_but.core:1pct run playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 2.75 0.5
execute at @s if predicate minecraft_but.coreraft_but.core:1pct run playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 2.5 0.75
execute at @s if predicate minecraft_but.coreraft_but.core:1pct run playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 2.5 .2