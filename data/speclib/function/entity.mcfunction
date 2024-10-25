# $(tag)
tag @s add speclib.spectating
scoreboard players reset @s speclib.id
tag @e[sort=nearest,limit=1,distance=..3] remove speclib.spectatee
$tag @e[tag=$(tag),distance=..3] remove speclib.spectatee
$tag @e[sort=random,tag=$(tag),limit=1] add speclib.spectatee

kill @e[type=item_display,sort=nearest,distance=..2,tag=speclib.cam]
kill @e[type=marker,sort=nearest,distance=..2,tag=speclib.root]

function speclib:private/spawn_cam
$execute as @e[limit=1,tag=$(tag),tag=speclib.spectatee] at @s run function speclib:private/spawn_root
scoreboard players add .global speclib.id 1
tag @s add speclib.spectating
