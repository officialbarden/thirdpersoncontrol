scoreboard players operation #temp tpc.id = @s tpc.id
#> controller to spectator
execute as @s[tag=tpc.controller] run return run function camera:private/toggle/spectator
#> spectator to controller
execute as @s[tag=tpc.spectator] run return run function camera:private/toggle/controller
