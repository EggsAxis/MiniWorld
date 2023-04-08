scoreboard players remove .y ehd_raycast 1


## Move y_looper in hologram
execute if score .sizeY ehd_pos matches 1.. as @e[type=marker,tag=holo_looper,tag=y_looper,limit=1] at @s run tp @s ~ ~.08 ~
execute if score .sizeY ehd_pos matches ..0 as @e[type=marker,tag=holo_looper,tag=y_looper,limit=1] at @s run tp @s ~ ~-.08 ~


### Start ray in z direction 

## Summon z_looper
kill @e[type=marker,tag=holo_looper,tag=z_looper]
execute as @e[type=marker,tag=holo_looper,tag=y_looper,limit=1] at @s run summon marker ~ ~ ~ {Tags:["holo_looper","z_looper"]}

execute if score .sizeZ ehd_pos matches 1.. as @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] run tp @s ~ ~ ~ ~90 ~
execute if score .sizeZ ehd_pos matches ..0 as @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] run tp @s ~ ~ ~ ~270 ~

execute as @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] at @s run tp @s ^ ^ ^-0.08


## Init loop
scoreboard players operation .z ehd_raycast = .z_val ehd_raycast
scoreboard players add .z ehd_raycast 1

execute if score .sizeZ ehd_pos matches 1.. rotated 0 0 run function ehd:render_holos/loop_area_holo/ray_z
execute if score .sizeZ ehd_pos matches ..0 rotated 180 0 run function ehd:render_holos/loop_area_holo/ray_z


execute unless score .y ehd_raycast matches ..0 positioned ^ ^ ^1 run function ehd:render_holos/loop_area_holo/ray_y