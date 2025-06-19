#> State Scores:
# tpc.state = 1     Walking (tpc.state.walking)
# tpc.state = 2     Sprinting (tpc.state.sprinting)
# tpc.state = 3     Jumped (tpc.state.jumped)
# tpc.state = 4     In_Air (tpc.state.in_air)
# tpc.state = 5     Landed (tpc.state.landed)
# tpc.state = 6     Walk + Crouching (tpc.state.crouching + tpc.state.walking)
# tpc.state = 7     Sprint + Crouching (tpc.state.crouching + tpc.state.sprinting)
# tpc.state = 8     Idle (tpc.state.idle)


#> SCOREBOARDS
    scoreboard objectives add tpc.id dummy
    scoreboard objectives add tpc.extras dummy
    scoreboard objectives add tpc.math dummy
    scoreboard objectives add tpc.state dummy

#> INIT VALUES:
    scoreboard players add .global tpc.id 1


#> DEFAULT VALUES:
    # Smoothness of Camera Movement:
    data modify storage tpc:config config.camera.teleport_duration set value 2
    # Gamemode of Player in Camera:
    data modify storage tpc:config config.camera.gamemode set value "spectator"
    
    
    # Entity Camera Config List (NOTE: ALL Values are Scaled to 1/10th their value, so if you set the value to be, for eg: 10, then the value used will be 1.
    data modify storage tpc:entities entity_type set value [\
        {"name":"armor_stand","type":"normal",camera:{walk:{x:13,y:14,z:-3},run:{x:15,y:14,z:-3}},movement:{walk:1,run:3,jump:10,gravity:5}}\
    ]