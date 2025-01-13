function tpc:remove
gamemode spectator @s
title @s title "WASTED"
tellraw @a [{"selector": "@a[tag=tpc.feed.killer]"},{"text":" killed "},{"selector": "@s"},"."]
tag @a remove tpc.feed.killer