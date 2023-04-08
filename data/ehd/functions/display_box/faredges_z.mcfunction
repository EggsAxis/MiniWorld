tag @s add faredgesDone

scoreboard players operation .x_ray ehd_box = .x ehd_box
scoreboard players operation .y_ray ehd_box = .y ehd_box

execute if score .sizeX ehd_pos matches 1.. rotated -90 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_x
execute if score .sizeX ehd_pos matches ..0 rotated 90 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_x

execute if score .sizeY ehd_pos matches 1.. rotated 0 -90 positioned ^ ^ ^.25 run function ehd:display_box/ray_y
execute if score .sizeY ehd_pos matches ..0 rotated 0 90 positioned ^ ^ ^.25 run function ehd:display_box/ray_y