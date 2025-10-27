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


#> Jump Check
execute as @s[predicate=tpc:input/jump] as @n[tag=tpc.controlled,predicate=tpc:id/common,predicate=tpc:on_ground] run tag @s add tpc.state.jumped

#> Crouch Check
execute as @s[predicate=tpc:input/sneak] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s add tpc.state.crouching
execute as @s[predicate=!tpc:input/sneak] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.crouching

#> In Air Check:
execute as @n[tag=tpc.controlled,predicate=tpc:id/common,predicate=!tpc:on_ground] run tag @s add tpc.state.in_air
execute as @n[tag=tpc.controlled,predicate=tpc:id/common,predicate=!tpc:on_ground] run tag @s remove tpc.state.jumped

#> Walking Check
execute as @s[predicate=!tpc:input/w] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.walking

execute as @s[predicate=tpc:input/w,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s add tpc.state.walking
execute as @s[predicate=tpc:input/a,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s add tpc.state.walking
execute as @s[predicate=tpc:input/s,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s add tpc.state.walking
execute as @s[predicate=tpc:input/d,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s add tpc.state.walking
#> Remove Landed State if Moving.
execute as @s[predicate=tpc:input/w] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.landed
execute as @s[predicate=tpc:input/a] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.landed
execute as @s[predicate=tpc:input/s] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.landed
execute as @s[predicate=tpc:input/d] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.landed

#> Sprinting Check
execute as @s[predicate=tpc:input/w,predicate=tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s add tpc.state.sprinting
execute as @s[predicate=tpc:input/a,predicate=tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s add tpc.state.sprinting
execute as @s[predicate=tpc:input/s,predicate=tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s add tpc.state.sprinting
execute as @s[predicate=tpc:input/d,predicate=tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s add tpc.state.sprinting
execute as @s[predicate=!tpc:input/w,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.sprinting
execute as @s[predicate=!tpc:input/a,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.sprinting
execute as @s[predicate=!tpc:input/s,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.sprinting
execute as @s[predicate=!tpc:input/d,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.sprinting

#> Landed Check
execute as @n[predicate=tpc:on_ground,tag=tpc.state.in_air] run tag @s add tpc.state.landed
execute as @n[predicate=tpc:on_ground,tag=tpc.state.in_air] run tag @s remove tpc.state.in_air

#> Idle Check
execute as @s[predicate=!tpc:input/w] as @n[tag=tpc.controlled,predicate=tpc:id/common,tag=!tpc.state.landed] run tag @s add tpc.state.idle
execute as @s[predicate=!tpc:input/a] as @n[tag=tpc.controlled,predicate=tpc:id/common,tag=!tpc.state.landed] run tag @s add tpc.state.idle
execute as @s[predicate=!tpc:input/s] as @n[tag=tpc.controlled,predicate=tpc:id/common,tag=!tpc.state.landed] run tag @s add tpc.state.idle
execute as @s[predicate=!tpc:input/d] as @n[tag=tpc.controlled,predicate=tpc:id/common,tag=!tpc.state.landed] run tag @s add tpc.state.idle

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


