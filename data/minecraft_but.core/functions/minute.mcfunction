#> minecraft_but.core:minute
#
# Run functions every minute
#
# @within minecraft_but.core:main
# @context root

#> Run functions every minute
execute if score random_effect minecraft_but.toggle matches 1 run function minecraft_but.core:modifiers/random_effect/minute