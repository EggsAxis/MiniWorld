tag @s add faredgesDone

scoreboard players operation .x_ray ehd_box = .x ehd_box
scoreboard players operation .z_ray ehd_box = .z ehd_box

execute if score .sizeX ehd_pos matches 1.. rotated -90 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_x
execute if score .sizeX ehd_pos matches ..0 rotated 90 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_x

execute if score .sizeZ ehd_pos matches 1.. rotated 0 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_z
execute if score .sizeZ ehd_pos matches ..0 rotated 180 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_z