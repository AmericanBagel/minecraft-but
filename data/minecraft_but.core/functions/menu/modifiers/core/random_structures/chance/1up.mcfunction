#> minecraft_but.core:menu/modifiers/core/random_structures/chance/1up
                    # Increase random_structures config score chance by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/random_structures/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add random_structures.chance minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/random_structures/config
                