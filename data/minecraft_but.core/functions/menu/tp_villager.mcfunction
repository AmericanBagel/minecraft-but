#> minecraft_but.coreraft_but.core:menu/tp_villager
# TP villager in front of linked player
#
# @within minecraft_but.coreraft_but.core:menu/find_page
# @context as player at villager
execute at @p rotated as @p anchored eyes positioned ^ ^ ^ anchored feet run tp @s ^ ^-1 ^1
