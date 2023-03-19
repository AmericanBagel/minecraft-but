#> minecraft_but.coreraft_but.core:menu/modifiers/core/lightning_storm/times/1up
                    # Increase lightning_storm config score times by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.coreraft_but.core:menu/modifiers/core/lightning_storm/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add lightning_storm.times minecraft_but.config 1

                    #> If number outside range, reset score
                    # If below minimum, set to max
                    execute if score lightning_storm.times minecraft_but.config < #lightning_storm.times_min minecraft_but.default run scoreboard players operation lightning_storm.times minecraft_but.config = #lightning_storm.times_max minecraft_but.default
                    # If above maximum, set to min
                    execute if score lightning_storm.times minecraft_but.config > #lightning_storm.times_max minecraft_but.default run scoreboard players operation lightning_storm.times minecraft_but.config = #lightning_storm.times_min minecraft_but.default

                    #> Click sound
                    function minecraft_but.coreraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.coreraft_but.core:menu/modifiers/core/lightning_storm/config
                