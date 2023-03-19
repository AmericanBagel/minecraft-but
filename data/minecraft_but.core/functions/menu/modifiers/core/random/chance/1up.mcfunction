#> minecraft_but.core:menu/modifiers/core/random/chance/1up
                    # Increase random config score chance by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/random/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add random.chance minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/random/config
                