scoreboard players remove .y ehd_raycast 1


## Move y_looper in hologram
scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_size
execute as @e[type=marker,tag=holo_looper,tag=y_looper,limit=1] at @s positioned ^ ^ ^0.03125 run function ehd:render_holos/loop_area_miniature/tping_looper



### Start ray in z direction 

## Summon z_looper

kill @e[type=marker,tag=holo_looper,tag=z_looper]
execute as @e[type=marker,tag=holo_looper,tag=y_looper,limit=1] at @s run summon marker ~ ~ ~ {Tags:["holo_looper","z_looper"]}

execute if score .sizeZ ehd_pos matches 1.. as @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] run tp @s ~ ~ ~ ~90 ~
execute if score .sizeZ ehd_pos matches ..0 as @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] run tp @s ~ ~ ~ ~270 ~

## Teleport backwards to compensate for first raycast 
scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_size
execute as @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] at @s rotated ~180 ~ positioned ^ ^ ^0.03125 run function ehd:render_holos/loop_area_miniature/tping_looper



## Init loop
scoreboard players operation .z ehd_raycast = .z_val ehd_raycast
scoreboard players add .z ehd_raycast 1

execute if score .sizeZ ehd_pos matches 1.. rotated 0 0 run function ehd:render_holos/loop_area_miniature/ray_z
execute if score .sizeZ ehd_pos matches ..0 rotated 180 0 run function ehd:render_holos/loop_area_miniature/ray_z


execute unless score .y ehd_raycast matches ..0 positioned ^ ^ ^1 run function ehd:render_holos/loop_area_miniature/ray_y