#> minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_nukes/radius/1up
                    # Increase creeper_nukes config score radius by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_nukes/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add creeper_nukes.radius minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.coreraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_nukes/config
                