#> abchc:minute
#
# Run functions every minute
#
# @within abchc:main
# @context root

#> Run functions every minute
execute if score random_effect abch.toggle matches 1 run function abchc:modifiers/random_effect/minute