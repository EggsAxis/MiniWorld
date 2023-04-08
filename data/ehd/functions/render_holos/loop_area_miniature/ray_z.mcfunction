scoreboard players remove .z ehd_raycast 1


## Move z_looper in hologram
scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_size
execute as @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] at @s positioned ^ ^ ^0.03125 run function ehd:render_holos/loop_area_miniature/tping_looper




## Summon block_displays

execute if entity @e[type=marker,tag=ehd_entity,tag=ehd_miniature,tag=drawing] unless block ~ ~ ~ air run function ehd:render_holos/block_displays/check_block


execute unless score .z ehd_raycast matches ..0 positioned ^ ^ ^1 run function ehd:render_holos/loop_area_miniature/ray_z