scoreboard players remove .dy ehd_holo 1

execute if score .dy ehd_holo matches ..0 run tp @s ~ ~ ~

execute unless score .dy ehd_holo matches ..0 positioned ^ ^ ^.04 run function ehd:render_holos/place_origin_holo/yray