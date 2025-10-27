execute store result storage tpc:temp camera.interpolate.x int 1 run random value -360..360
execute store result storage tpc:temp camera.interpolate.y int 1 run data get entity @s Rotation[1]
execute store result storage tpc:temp camera.interpolate.speed int 1 run random value 100..120
function camera:interpolate with storage tpc:temp camera.interpolate
