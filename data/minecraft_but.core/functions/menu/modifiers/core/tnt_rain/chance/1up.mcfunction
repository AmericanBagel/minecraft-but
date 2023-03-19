#> minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_rain/chance/1up
                    # Increase tnt_rain config score chance by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_rain/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add tnt_rain.chance minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.coreraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_rain/config
                