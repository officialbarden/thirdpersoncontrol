#> SCOREBOARDS
    scoreboard objectives add tpc.id dummy
    scoreboard objectives add tpc.extras dummy
    scoreboard objectives add tpc.math dummy

#> INIT VALUES:
    scoreboard players add .global tpc.id 1


#> DEFAULT VALUES:
    # Smoothness of Camera Movement:
    data modify storage tpc:config config.camera.teleport_duration set value 2
    
    # Entity Camera Config List (NOTE: ALL Values are Scaled to 1/10th their value, so if you set the value to be, for eg: 10, then the value used will be 1.
    data modify storage tpc:entities entity_type set value [\
        {"name":"creeper","type":"normal",camera:{walk:{x:10,y:10,z:-10},run:{x:10,y:10,z:10}},movement:{walk:2,run:4,jump:7}},\
        {"name":"enderman","type":"tall",camera:{walk:{x:40,y:10,z:0},run:{x:44,y:10,z:10}},movement:{walk:1,run:6,jump:4}},\
        {"name":"warden","type":"huge",camera:{walk:{x:40,y:10,z:0},run:{x:44,y:10,z:10}},movement:{walk:1,run:4,jump:5}},\
        {"name":"ravager","type":"huge",camera:{walk:{x:20,y:20,z:0},run:{x:24,y:20,z:10}},movement:{walk:2,run:7,jump:5}},\
        {"name":"bee","type":"tiny",camera:{walk:{x:10,y:1,z:0},run:{x:14,y:1,z:10}},movement:{walk:2,run:7,jump:4}},\
        {"name":"allay","type":"tiny",camera:{walk:{x:10,y:10,z:0},run:{x:14,y:10,z:10}},movement:{walk:2,run:7,jump:4}},\
        {"name":"villager","type":"normal",camera:{walk:{x:10,y:10,z:0},run:{x:14,y:10,z:10}},movement:{walk:2,run:3,jump:4}},\
        {"name":"armor_stand","type":"normal",camera:{walk:{x:10,y:13,z:0},run:{x:12,y:13,z:0}},movement:{walk:1,run:3,jump:4}}\
    ]