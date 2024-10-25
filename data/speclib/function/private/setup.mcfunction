function speclib:private/spawn_cam
execute as @e[tag=speclib.spectatee,sort=nearest,limit=1] at @s run function speclib:private/spawn_root
scoreboard players add .global speclib.id 1
tag @e remove speclib.cam.temp
tag @e remove speclib.root.temp