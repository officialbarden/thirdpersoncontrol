scoreboard objectives add temp dummy

#> W
execute if predicate speclib:input/w unless predicate speclib:input/sprint run summon marker ^ ^ ^-0.1 {Tags:["motion.temp"]}
execute if predicate speclib:input/w if predicate speclib:input/sprint run summon marker ^ ^ ^-1.1 {Tags:["motion.temp"]}
execute if predicate speclib:input/w run data modify entity @n[tag=speclib.spectatee] Rotation[0] set from entity @s Rotation[0]

#> WA
execute if predicate speclib:input/w if predicate speclib:input/a unless predicate speclib:input/sprint run summon marker ^-0.1 ^ ^-0.1 {Tags:["motion.temp"]}
execute if predicate speclib:input/w if predicate speclib:input/a if predicate speclib:input/sprint run summon marker ^-1.1 ^ ^-1.1 {Tags:["motion.temp"]}

#> WD
execute if predicate speclib:input/w if predicate speclib:input/d unless predicate speclib:input/sprint run summon marker ^0.1 ^ ^-0.1 {Tags:["motion.temp"]}
execute if predicate speclib:input/w if predicate speclib:input/d if predicate speclib:input/sprint run summon marker ^1.1 ^ ^-1.1 {Tags:["motion.temp"]}


#> S
execute if predicate speclib:input/s unless predicate speclib:input/sprint run summon marker ^ ^ ^0.1 {Tags:["motion.temp"]}
execute if predicate speclib:input/s if predicate speclib:input/sprint run summon marker ^ ^ ^1.1 {Tags:["motion.temp"]}
execute if predicate speclib:input/s store result score rotation.x temp run data get entity @s Rotation[0]
execute if predicate speclib:input/s run scoreboard players add rotation.x temp 180
execute if predicate speclib:input/s store result entity @n[tag=speclib.spectatee] Rotation[0] float 1 run scoreboard players get rotation.x temp

#> SA
execute if predicate speclib:input/s if predicate speclib:input/a unless predicate speclib:input/sprint run summon marker ^-0.1 ^ ^0.1 {Tags:["motion.temp"]}
execute if predicate speclib:input/s if predicate speclib:input/a if predicate speclib:input/sprint run summon marker ^-1.1 ^ ^1.1 {Tags:["motion.temp"]}

#> SD
execute if predicate speclib:input/s if predicate speclib:input/d unless predicate speclib:input/sprint run summon marker ^0.1 ^ ^0.1 {Tags:["motion.temp"]}
execute if predicate speclib:input/s if predicate speclib:input/d if predicate speclib:input/sprint run summon marker ^1.1 ^ ^1.1 {Tags:["motion.temp"]}



execute store result score player.x temp run data get entity @s Pos[0] 100
execute store result score player.y temp run data get entity @s Pos[1] 50
execute store result score player.z temp run data get entity @s Pos[2] 100
execute store result score vector.x temp run data get entity @n[tag=motion.temp] Pos[0] 100
execute store result score vector.y temp run data get entity @n[tag=motion.temp] Pos[1] 50
execute store result score vector.z temp run data get entity @n[tag=motion.temp] Pos[2] 100
scoreboard players operation player.x temp -= vector.x temp
scoreboard players operation player.y temp -= vector.y temp
scoreboard players operation player.z temp -= vector.z temp

execute store result entity @n[tag=speclib.spectatee] Motion[0] double 0.01 run scoreboard players get player.x temp
execute store result entity @n[tag=speclib.spectatee] Motion[1] double 0.01 run scoreboard players get player.y temp
execute store result entity @n[tag=speclib.spectatee] Motion[2] double 0.01 run scoreboard players get player.z temp

#> A
#execute if predicate speclib:input/a unless predicate speclib:input/sprint run summon marker ^-0.1 ^ ^ {Tags:["motion.temp"]}
#execute if predicate speclib:input/a if predicate speclib:input/sprint run summon marker ^-1.1 ^ ^ {Tags:["motion.temp"]}
#execute if predicate speclib:input/a store result score rotation.x temp run data get entity @s Rotation[0]
#execute if predicate speclib:input/a run scoreboard players remove rotation.x temp 90
#execute if predicate speclib:input/a store result entity @n[tag=speclib.spectatee] Rotation[0] float 1 run scoreboard players get rotation.x temp


#> D
#execute if predicate speclib:input/d unless predicate speclib:input/sprint run summon marker ^0.1 ^ ^ {Tags:["motion.temp"]}
#execute if predicate speclib:input/d if predicate speclib:input/sprint run summon marker ^1.1 ^ ^ {Tags:["motion.temp"]}
#execute if predicate speclib:input/d store result score rotation.x temp run data get entity @s Rotation[0]
#execute if predicate speclib:input/d run scoreboard players add rotation.x temp 90
#execute if predicate speclib:input/d store result entity @n[tag=speclib.spectatee] Rotation[0] float 1 run scoreboard players get rotation.x temp


#execute store result score player.x temp run data get entity @s Pos[0] 100
#execute store result score player.y temp run data get entity @s Pos[1] 50
#execute store result score player.z temp run data get entity @s Pos[2] 100
#execute store result score vector.x temp run data get entity @n[tag=motion.temp] Pos[0] 100
#execute store result score vector.y temp run data get entity @n[tag=motion.temp] Pos[1] 50
#execute store result score vector.z temp run data get entity @n[tag=motion.temp] Pos[2] 100
#scoreboard players operation player.x temp -= vector.x temp
#scoreboard players operation player.y temp -= vector.y temp
#scoreboard players operation player.z temp -= vector.z temp#

#execute store result entity @n[tag=speclib.spectatee] Motion[0] double 0.01 run scoreboard players get player.x temp
#execute store result entity @n[tag=speclib.spectatee] Motion[1] double 0.01 run scoreboard players get player.y temp
#execute store result entity @n[tag=speclib.spectatee] Motion[2] double 0.01 run scoreboard players get player.z temp



#> jump
execute if predicate speclib:input/jump run data modify entity @n[tag=speclib.spectatee] Motion[1] set value 0.4d
execute if predicate speclib:input/sneak run data modify entity @n[tag=speclib.spectatee] Motion[1] set value -0.4d


kill @e[tag=motion.temp]