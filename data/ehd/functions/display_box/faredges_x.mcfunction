tag @s add faredgesDone

scoreboard players operation .y_ray ehd_box = .y ehd_box
scoreboard players operation .z_ray ehd_box = .z ehd_box

execute if score .sizeY ehd_pos matches 1.. rotated 0 -90 positioned ^ ^ ^.25 run function ehd:display_box/ray_y
execute if score .sizeY ehd_pos matches ..0 rotated 0 90 positioned ^ ^ ^.25 run function ehd:display_box/ray_y

execute if score .sizeZ ehd_pos matches 1.. rotated 0 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_z
execute if score .sizeZ ehd_pos matches ..0 rotated 180 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_z