scoreboard players remove .dx ehd_holo 1

execute if score .dx ehd_holo matches ..0 run tp @s ~ ~ ~

execute unless score .dx ehd_holo matches ..0 positioned ^ ^ ^.04 run function ehd:render_holos/place_origin_holo/xray