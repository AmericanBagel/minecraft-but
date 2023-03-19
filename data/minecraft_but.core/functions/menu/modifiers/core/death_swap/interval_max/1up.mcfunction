#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/interval_max/1up
                    # Increase death_swap config score interval_max by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add death_swap.interval_max minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.coreraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/config
                