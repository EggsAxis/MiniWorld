scoreboard players remove .x ehd_raycast 1


## Move x_looper in hologram
scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_size
execute as @e[type=marker,tag=holo_looper,tag=x_looper,limit=1] at @s positioned ^ ^ ^0.03125 run function ehd:render_holos/loop_area_miniature/tping_looper



### Start ray in y direction 

## Summon y_looper

kill @e[type=marker,tag=holo_looper,tag=y_looper]

execute if score .sizeY ehd_pos matches 1.. as @e[type=marker,tag=holo_looper,tag=x_looper,limit=1] at @s run summon marker ~ ~ ~ {Tags:["holo_looper","y_looper"],Rotation:[0.0f,-90.0f]}
execute if score .sizeY ehd_pos matches ..0 as @e[type=marker,tag=holo_looper,tag=x_looper,limit=1] at @s run summon marker ~ ~ ~ {Tags:["holo_looper","y_looper"],Rotation:[0.0f,90.0f]}

## Teleport backwards to compensate for first raycast 
scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_size
execute as @e[type=marker,tag=holo_looper,tag=y_looper,limit=1] at @s rotated ~ ~180 positioned ^ ^ ^0.03125 run function ehd:render_holos/loop_area_miniature/tping_looper

## Init loop
scoreboard players operation .y ehd_raycast = .y_val ehd_raycast
scoreboard players add .y ehd_raycast 1
execute if score .sizeY ehd_pos matches 1.. rotated 0 -90 run function ehd:render_holos/loop_area_miniature/ray_y
execute if score .sizeY ehd_pos matches ..0 rotated 0 90 run function ehd:render_holos/loop_area_miniature/ray_y



execute unless score .x ehd_raycast matches ..0 positioned ^ ^ ^1 run function ehd:render_holos/loop_area_miniature/ray_x