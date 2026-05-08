execute as @a[tag=tpc.controller] at @s run function tpc:private/control/move/tag
execute as @a[tag=tpc.controller] at @s run function tpc:private/control/1 with storage tpc:config config.camera
execute as @a[tag=tpc.spectator] at @s run function tpc:private/spectate/1
