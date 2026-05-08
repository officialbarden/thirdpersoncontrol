tag @n[tag=tpc.spectated.entity,predicate=tpc:id/common] add tpc.controlled
tag @n[tag=tpc.spectated.entity,predicate=tpc:id/common] remove tpc.spectated.entity
tag @s remove tpc.spectator
tag @s add tpc.controller

execute store result storage tpc:temp camera.interpolation.x int 1 run data get entity @n[tag=tpc.controlled,predicate=tpc:id/common] Rotation[0]
execute store result storage tpc:temp camera.interpolation.y int 1 run data get entity @n[tag=tpc.controlled,predicate=tpc:id/common] Rotation[1]
data modify storage tpc:temp camera.interpolation.speed set value 75
execute as @s run function camera:interpolate with storage tpc:temp camera.interpolation

