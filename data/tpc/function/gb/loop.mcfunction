execute as @a[tag=tpc.controller] at @s run function tpc:private/control/1
execute as @e[tag=tpc.controlled] at @s run function tpc:private/step/1
execute as @a[tag=tpc.spectator] at @s run function tpc:private/spectate/1
