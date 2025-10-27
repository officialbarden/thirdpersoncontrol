scoreboard objectives add tpc.camanim dummy
scoreboard objectives add tpc.idle.timer dummy


execute as @a[tag=tpc.camanim.interpolate] at @s run function camera:private/interpolate/1 with storage tpc:temp camera.interpolate
execute as @a[tag=tpc.camanim.interpolate] run scoreboard players remove @s tpc.camanim 1
execute as @a[tag=tpc.camanim.interpolate,scores={tpc.camanim=..0}] run function camera:private/stop
scoreboard players reset @a[tag=!tpc.camanim.interpolate] tpc.camanim

execute as @a[tag=tpc.spectator] at @s run function camera:private/idle/1
