execute if score @s speclib.id = @e[type=!player,tag=speclib.cam,sort=nearest,limit=1] speclib.id run scoreboard players reset @s speclib.id
summon item_display ~ ~ ~ {teleport_duration:7,Tags:["speclib.cam","speclib.cam.temp"]}

scoreboard players operation @s speclib.id = .global speclib.id
scoreboard players operation @e[tag=speclib.cam.temp] speclib.id = .global speclib.id