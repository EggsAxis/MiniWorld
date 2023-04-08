
## Set x range
scoreboard players set .-1 ehd_temp -1
scoreboard players operation .x_val ehd_raycast = .sizeX ehd_pos
execute if score .x_val ehd_raycast matches ..-1 run scoreboard players operation .x_val ehd_raycast *= .-1 ehd_temp



## Set y range
scoreboard players set .-1 ehd_temp -1
scoreboard players operation .y_val ehd_raycast = .sizeY ehd_pos
execute if score .y_val ehd_raycast matches ..-1 run scoreboard players operation .y_val ehd_raycast *= .-1 ehd_temp

## Set z range
scoreboard players set .-1 ehd_temp -1
scoreboard players operation .z_val ehd_raycast = .sizeZ ehd_pos
execute if score .z_val ehd_raycast matches ..-1 run scoreboard players operation .z_val ehd_raycast *= .-1 ehd_temp


### Summon x_looper

kill @e[type=marker,tag=holo_looper]

execute as @e[type=marker,tag=render_origin,limit=1] at @s run summon marker ~ ~ ~ {Tags:["holo_looper","x_looper"]}

execute if score .sizeX ehd_pos matches 1.. as @e[type=marker,tag=holo_looper,tag=x_looper,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] run tp @s ~ ~ ~ ~ ~
execute if score .sizeX ehd_pos matches ..0 as @e[type=marker,tag=holo_looper,tag=x_looper,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] run tp @s ~ ~ ~ ~180 ~

## Teleport backwards to compensate for first raycast 
scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_size
execute as @e[type=marker,tag=holo_looper,tag=x_looper,limit=1] at @s rotated ~180 ~ positioned ^ ^ ^0.03125 run function ehd:render_holos/loop_area_miniature/tping_looper

## Start ray in x direction 

scoreboard players operation .x ehd_raycast = .x_val ehd_raycast
scoreboard players add .x ehd_raycast 1

execute if score .sizeX ehd_pos matches 1.. rotated -90 0 run function ehd:render_holos/loop_area_miniature/ray_x
execute if score .sizeX ehd_pos matches ..0 rotated 90 0 run function ehd:render_holos/loop_area_miniature/ray_x


kill @e[type=marker,tag=holo_looper]
