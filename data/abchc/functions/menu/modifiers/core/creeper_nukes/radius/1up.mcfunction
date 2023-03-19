#> abchc:menu/modifiers/core/creeper_nukes/radius/1up
                    # Increase creeper_nukes config score radius by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/creeper_nukes/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add creeper_nukes.radius abch.config 1

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/creeper_nukes/config
                