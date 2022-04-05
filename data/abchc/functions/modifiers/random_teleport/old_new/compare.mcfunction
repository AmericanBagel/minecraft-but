#> abchc:modifiers/random_teleport/tp/compare
# Compare distances between down and up to determine
# where to teleport

#> If ground was found both up and down,
# if distance down was shorter than up, tp down
execute if score $down_grounded abch.random_teleport matches 1.. if score $up_grounded abch.random_teleport matches 1.. if score $down_distance abch.random_teleport < $up_distance abch.random_teleport run function abchc:modifiers/random_teleport/tp/tp_down
# if distance up was shorter than down, tp up
execute if score $down_grounded abch.random_teleport matches 1.. if score $up_grounded abch.random_teleport matches 1.. if score $down_distance abch.random_teleport < $up_distance abch.random_teleport run function abchc:modifiers/random_teleport/tp/tp_up

#> If ground was found just down, tp down
execute if score $down_grounded abch.random_teleport matches 1.. unless score $up_grounded abch.random_teleport matches 1.. run function abchc:modifiers/random_teleport/tp/tp_down

#> If ground was found just up, tp up
execute if score $up_grounded abch.random_teleport matches 1.. unless score $down_grounded abch.random_teleport matches 1.. run function abchc:modifiers/random_teleport/tp/tp_up

#> If no ground was found, restart everything unless we've restarted more than 5 times
execute unless score $tries abch.random_teleport matches 5.. unless score $down_grounded abch.random_teleport matches 1.. unless score $up_grounded abch.random_teleport matches 1.. at @e[ tag=abch.random_teleport.marker ] run function abchc:modifiers/random_teleport/tp/restart

#> If we've restarted more than 5 times to no avail, just clean up and quit
execute if score $tries abch.random_teleport matches 5.. unless score $down_grounded abch.random_teleport matches 1.. unless score $up_grounded abch.random_teleport matches 1.. run function abchc:modifiers/random_teleport/tp/clean_up


# AmericanBagel -- king of making simple things overcomplicated!
# it's late rn forgive me for the spaghetti code
# i'll probably come back to this in a year and completely cringe at it but oh well lol