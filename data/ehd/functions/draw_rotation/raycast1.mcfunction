scoreboard players remove .ray ehd_raycast 1

particle dust 1 0 1 0.3 ~ ~ ~ 0 -1 0 1 0 normal

execute if score .ray ehd_raycast matches 0 rotated ~145 ~ run function ehd:draw_rotation/draw_arrow
execute if score .ray ehd_raycast matches 0 rotated ~-145 ~ run function ehd:draw_rotation/draw_arrow

execute unless score .ray ehd_raycast matches ..0 positioned ^ ^ ^.1 run function ehd:draw_rotation/raycast1