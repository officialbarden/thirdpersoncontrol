#> State Scores:
# tpc.state = 1     Walking.
# tpc.state = 2     Sprinting.
# tpc.state = 3     Jumped.
# tpc.state = 4     In_Air.
# tpc.state = 5     Landed.
# tpc.state = 6     Walk + Crouching.
# tpc.state = 7     Sprint + Crouching.
# tpc.state = 8     Idle.


#> SCOREBOARDS
    scoreboard objectives add tpc.id dummy
    scoreboard objectives add tpc.extras dummy
    scoreboard objectives add tpc.math dummy
    scoreboard objectives add tpc.state dummy

#> INIT VALUES:
    scoreboard players add .global tpc.id 1


#> DEFAULT VALUES:
    # Smoothness of Camera Movement // higher the value, greater the smoothness:
    data modify storage tpc:config config.camera.teleport_duration set value 2
    # Gamemode of Player in Camera:
    data modify storage tpc:config config.camera.gamemode set value "spectator"
    
    
    # Entity Camera Config List (NOTE: ALL Values are Scaled to 1/10th their value, so if you set the value to be, for eg: 10, then the value used will be 1.
    #
    # // values description:
    #           camera.walk = camera offset while walking
    #           camera.run = camera offset while running
    #           movement:
    #                  - walk = walking speed (scaled 1/10th, the unit is blocks/ticks)
    #                  - run = sprint speed
    #                  - jump = jump strength
    #                  - gravity = gravity (currently redundant)

    data modify storage tpc:entities entity_type set value [\
        {"name":"armor_stand","type":"normal",camera:{walk:{x:13,y:14,z:-3},run:{x:15,y:14,z:-3}},movement:{walk:1,run:3,jump:10,gravity:5}}\
    ]