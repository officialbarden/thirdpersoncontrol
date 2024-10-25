execute as @e[tag=speclib.cam,sort=nearest,limit=1] if score @s speclib.id = @e[tag=speclib.root,sort=nearest,limit=1] speclib.id run scoreboard players reset @s speclib.id

execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["speclib.root","speclib.root.temp"]}
scoreboard players operation @s speclib.id = .global speclib.id
scoreboard players operation @e[tag=speclib.root.temp] speclib.id = @e[tag=speclib.cam.temp] speclib.id

