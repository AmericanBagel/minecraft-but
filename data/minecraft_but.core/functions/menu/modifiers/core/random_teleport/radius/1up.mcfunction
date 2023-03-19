#> minecraft_but.core:menu/modifiers/core/random_teleport/radius/1up
                    # Increase random_teleport config score radius by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/random_teleport/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add random_teleport.radius minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/random_teleport/config
                