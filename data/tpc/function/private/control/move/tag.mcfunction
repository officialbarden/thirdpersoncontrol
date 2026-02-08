execute unless predicate tpc:bool/wasd_check run return fail
scoreboard players operation #temp tpc.id = @s tpc.id

#> State Scores:
# run scoreboard players set @s tpc.state = 1     Walking.
# run scoreboard players set @s tpc.state = 2     Sprinting.
# run scoreboard players set @s tpc.state = 3     Jumped.
# run scoreboard players set @s tpc.state = 4     In_Air.
# run scoreboard players set @s tpc.state = 5     Landed.
# run scoreboard players set @s tpc.state = 6     Walk + Crouching.
# run scoreboard players set @s tpc.state = 7     Sprint + Crouching.
# run scoreboard players set @s tpc.state = 8     Idle.

#> Tag updating
function tpc:private/control/move/tag_update

#> Score Storing:
function tpc:private/control/move/state_update


#> Debug
execute if entity @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.walking,tag=tpc.state.crouching] run return run title @s[tag=tpc.debug] actionbar "State: Walking + Crouching"
execute if entity @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.sprinting,tag=tpc.state.crouching] run return run title @s[tag=tpc.debug] actionbar "State: Sprinting + Crouching"
execute if entity @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.walking] run return run title @s[tag=tpc.debug] actionbar "State: Walking"
execute if entity @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.sprinting] run return run title @s[tag=tpc.debug] actionbar "State: Sprinting"
execute if entity @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.jumped] run return run title @s[tag=tpc.debug] actionbar "State: Jumped"
execute if entity @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.in_air] run return run title @s[tag=tpc.debug] actionbar "State: In Air"
execute if entity @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.landed] run return run title @s[tag=tpc.debug] actionbar "State: Landed"
execute if entity @n[predicate=tpc:id/common,tag=tpc.controlled,tag=tpc.state.idle] run return run title @s[tag=tpc.debug] actionbar "State: Idle"


