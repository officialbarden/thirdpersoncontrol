tp ~ ~ ~
data remove storage tpc:temp TEMP.MOTION.POS
data modify storage tpc:temp TEMP.MOTION.POS set from entity @s Pos

function tpc:private/control/move/vector/multiply_speed
function tpc:private/control/move/apply_motion

kill @s
