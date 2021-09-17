# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation abch_vsLCG abch_vsMath *= abch_vsLCG abch_vsConst
scoreboard players add abch_vsLCG abch_vsMath 11928
scoreboard players operation abch_vsOut abch_vsMath = abch_vsLCG abch_vsMath