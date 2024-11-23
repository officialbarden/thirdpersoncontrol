#particle happy_villager ~ ~ ~
summon creeper ~ ~ ~ {Health:0f}

data remove storage minecraft:temp motion_vec
data modify storage temp motion_vec set value {x:0d,y:0d,z:0d}
data modify storage temp motion_vec set from entity @s Pos
execute as @a[tag=motion.player.temp] at @s at @n[tag=speclib.spectatee] rotated as @s run tp @n[tag=speclib.spectatee] ~ ~ ~ ~ ~

execute as @a[tag=motion.player.temp] at @s if predicate speclib:input/w at @n[tag=speclib.spectatee] rotated as @s run tp @n[tag=speclib.spectatee] ~ ~ ~ ~ ~
execute as @a[tag=motion.player.temp] at @s if predicate speclib:input/a at @n[tag=speclib.spectatee] rotated as @s rotated ~-90 ~ run tp @n[tag=speclib.spectatee] ~ ~ ~ ~ ~
execute as @a[tag=motion.player.temp] at @s if predicate speclib:input/s at @n[tag=speclib.spectatee] rotated as @s rotated ~-180 ~ run tp @n[tag=speclib.spectatee] ~ ~ ~ ~ ~
execute as @a[tag=motion.player.temp] at @s if predicate speclib:input/d at @n[tag=speclib.spectatee] rotated as @s rotated ~-270 ~ run tp @n[tag=speclib.spectatee] ~ ~ ~ ~ ~

execute at @a[tag=motion.player.temp] run data modify entity @n[tag=speclib.spectatee,type=#speclib:can_fly] Motion set from storage temp motion_vec

data modify storage temp motion_vec[1] set value 0d
execute at @a[tag=motion.player.temp] run data modify entity @n[tag=speclib.spectatee,type=!#speclib:can_fly,predicate=speclib:entity/on_ground] Motion set from storage temp motion_vec

#> jump
execute as @a[tag=motion.player.temp] at @s if predicate speclib:input/jump if entity @n[type=#speclib:can_fly,tag=speclib.spectatee] run data modify entity @n[tag=speclib.spectatee] Motion[1] set value 0.4d
execute as @a[tag=motion.player.temp] at @s if predicate speclib:input/jump as @n[type=!#speclib:can_fly,tag=speclib.spectatee,predicate=speclib:entity/on_ground] at @s run function speclib:private/entity_jump/jump

#> sneak
execute as @a[tag=motion.player.temp] at @s if predicate speclib:input/sneak if entity @n[type=#speclib:can_fly,tag=speclib.spectatee] run data modify entity @n[tag=speclib.spectatee] Motion[1] set value -0.4d
#execute as @n[tag=speclib.spectatee] at @s run particle flame ^ ^ ^-2 0 0.2 0 0 10 force @a

tag @a remove motion.player.temp
kill @s