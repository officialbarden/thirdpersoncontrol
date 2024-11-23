data modify entity @s Motion set from storage temp motion_vec
data modify entity @s Motion[1] set value 0.5d
tag @s add speclib.jump.cooldown
scoreboard players set @s speclib.jump.timer 10
tag @p remove speclib.entity.control