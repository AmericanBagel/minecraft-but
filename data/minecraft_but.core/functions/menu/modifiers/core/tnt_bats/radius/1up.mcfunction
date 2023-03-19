#> minecraft_but.core:menu/modifiers/core/tnt_bats/radius/1up
                    # Increase tnt_bats config score radius by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/tnt_bats/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add tnt_bats.radius minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/tnt_bats/config
                