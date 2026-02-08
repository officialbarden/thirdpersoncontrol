# Ran from: function tpc:private/control/move/tag



#> Jump Check
execute as @s[predicate=tpc:input/jump] as @n[tag=tpc.controlled,predicate=tpc:id/common,predicate=tpc:on_ground] run return run tag @s add tpc.state.jumped

#> Crouch Check
execute as @s[predicate=tpc:input/sneak] as @n[tag=tpc.controlled,predicate=tpc:id/common] run return run tag @s add tpc.state.crouching
execute as @s[predicate=!tpc:input/sneak] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.crouching

#> In Air Check:
execute as @n[tag=tpc.controlled,predicate=tpc:id/common,predicate=!tpc:on_ground] run return run tag @s add tpc.state.in_air
execute as @n[tag=tpc.controlled,predicate=tpc:id/common,predicate=!tpc:on_ground] run tag @s remove tpc.state.jumped

#> Walking Check
execute as @s[predicate=!tpc:input/w, predicate=!tpc:input/a, predicate=!tpc:input/s, predicate=!tpc:input/d] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.walking

execute as @s[predicate=tpc:input/w,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run return run tag @s add tpc.state.walking
execute as @s[predicate=tpc:input/a,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run return run tag @s add tpc.state.walking
execute as @s[predicate=tpc:input/s,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run return run tag @s add tpc.state.walking
execute as @s[predicate=tpc:input/d,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run return run tag @s add tpc.state.walking

#> Remove Landed State if Moving.
execute as @s[predicate=tpc:input/w] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.landed
execute as @s[predicate=tpc:input/a] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.landed
execute as @s[predicate=tpc:input/s] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.landed
execute as @s[predicate=tpc:input/d] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.landed

#> Sprinting Check
execute as @s[predicate=tpc:input/w,predicate=tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run return run tag @s add tpc.state.sprinting
execute as @s[predicate=tpc:input/a,predicate=tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run return run tag @s add tpc.state.sprinting
execute as @s[predicate=tpc:input/s,predicate=tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run return run tag @s add tpc.state.sprinting
execute as @s[predicate=tpc:input/d,predicate=tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run return run tag @s add tpc.state.sprinting
execute as @s[predicate=!tpc:input/w,predicate=!tpc:input/a,predicate=!tpc:input/s,predicate=!tpc:input/d,predicate=!tpc:input/sprint] as @n[tag=tpc.controlled,predicate=tpc:id/common] run tag @s remove tpc.state.sprinting

#> Landed Check
execute as @n[predicate=tpc:on_ground,tag=tpc.state.in_air] run tag @s add tpc.state.landed
execute as @n[predicate=tpc:on_ground,tag=tpc.state.in_air] run tag @s remove tpc.state.in_air

#> Idle Check
execute as @s[predicate=!tpc:bool/wasd_check] as @n[tag=tpc.controlled,predicate=tpc:id/common,tag=!tpc.state.landed] run return run tag @s add tpc.state.idle
