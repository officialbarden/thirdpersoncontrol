scoreboard players operation #temp tpc.id = @s tpc.id
execute as @e[tag=tpc.spectated.entity,predicate=tpc:id/common] if score @a[limit=1,predicate=tpc:id/common,gamemode=spectator] tpc.anims.state matches 0 run scoreboard players add @s tpc.idle.timer 1

execute as @e[tag=tpc.spectated.entity,predicate=tpc:id/common] if score @s tpc.idle.timer matches 200 as @p[predicate=tpc:id/common] run function camera:interpolate_random
execute as @e[tag=tpc.spectated.entity,predicate=tpc:id/common] if score @s tpc.idle.timer matches 200.. run scoreboard players reset @s tpc.idle.timer
execute as @e[tag=tpc.spectated.entity,predicate=tpc:id/common] if score @s tpc.anims.state matches 1.. run scoreboard players reset @s tpc.idle.timer
