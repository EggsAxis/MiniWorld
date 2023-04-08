scoreboard players remove .sub ehd_raycast 1

execute if score .sub ehd_raycast matches ..0 run tp @s ~ ~ ~

execute unless score .sub ehd_raycast matches ..0 positioned ^ ^ ^0.03125 run function ehd:render_holos/loop_area_miniature/tping_looper