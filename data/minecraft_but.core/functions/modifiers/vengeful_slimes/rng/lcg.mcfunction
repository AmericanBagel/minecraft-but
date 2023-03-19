# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation minecraft_but.vsLCG minecraft_but.vsMath *= minecraft_but.vsLCG minecraft_but.vsConst
scoreboard players add minecraft_but.vsLCG minecraft_but.vsMath 11928
scoreboard players operation minecraft_but.vsOut minecraft_but.vsMath = minecraft_but.vsLCG minecraft_but.vsMath