# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation abch.vsLCG abch.vsMath *= abch.vsLCG abch.vsConst
scoreboard players add abch.vsLCG abch.vsMath 11928
scoreboard players operation abch.vsOut abch.vsMath = abch.vsLCG abch.vsMath