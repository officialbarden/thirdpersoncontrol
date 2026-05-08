$execute anchored eyes rotated as @e[tag=tpc.camanim.marker,limit=1,predicate=tpc:id/common] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^$(speed) facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~
execute anchored eyes positioned ^ ^ ^10 rotated as @e[tag=tpc.camanim.marker,predicate=tpc:id/common] positioned ^ ^ ^-10 if entity @s[dx=0.1] run function camera:private/stop
