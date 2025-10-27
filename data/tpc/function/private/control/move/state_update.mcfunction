#> State Scores:
# run scoreboard players set @s tpc.state = 1     Walking.
# run scoreboard players set @s tpc.state = 2     Sprinting.
# run scoreboard players set @s tpc.state = 3     Jumped.
# run scoreboard players set @s tpc.state = 4     In_Air.
# run scoreboard players set @s tpc.state = 5     Landed.
# run scoreboard players set @s tpc.state = 6     Walk + Crouching.
# run scoreboard players set @s tpc.state = 7     Sprint + Crouching.
# run scoreboard players set @s tpc.state = 8     Idle.



execute as @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.walking,tag=!tpc.state.crouching] run return run scoreboard players set @s tpc.state 1
execute as @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.walking,tag=tpc.state.crouching] run return run scoreboard players set @s tpc.state 6
execute as @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.sprinting,tag=!tpc.state.crouching] run return run scoreboard players set @s tpc.state 2
execute as @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.sprinting,tag=tpc.state.crouching] run return run scoreboard players set @s tpc.state 7
execute as @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.jumped] run return run scoreboard players set @s tpc.state 3
execute as @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.in-air] run return run scoreboard players set @s tpc.state 4
execute as @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.landed] run return run scoreboard players set @s tpc.state 5
execute as @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.idle] run return run scoreboard players set @s tpc.state 8
