data modify storage tpc:temp cache.vector_offset.y set value 0.0d
$execute store result storage tpc:temp cache.vector_offset.y double 0.1 run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.gravity 1
function tpc:private/control/move/gravity2 with storage tpc:temp cache.vector_offset