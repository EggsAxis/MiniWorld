scoreboard players remove .dz ehd_holo 1

execute if score .dz ehd_holo matches ..0 run tp @s ~ ~ ~

execute unless score .dz ehd_holo matches ..0 positioned ^ ^ ^.04 run function ehd:render_holos/place_origin_holo/zray