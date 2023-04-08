scoreboard players remove .z ehd_raycast 1


## Move z_looper in hologram
execute as @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] at @s run tp @s ^ ^ ^.08


## In edit mode

execute as @s[tag=editing] if entity @e[type=marker,tag=ehd_entity,tag=ehd_hologram,tag=drawing] run function ehd:render_holos/particles/edit_particles


## Particles and block_displays

execute if entity @e[type=marker,tag=ehd_entity,tag=ehd_hologram,tag=drawing] unless block ~ ~ ~ air unless block ~ ~ ~ grass run function ehd:render_holos/particles/block_particles/particles
execute if entity @e[type=marker,tag=ehd_entity,tag=ehd_miniature,tag=drawing] unless block ~ ~ ~ air run function ehd:render_holos/block_displays/check_block


execute unless score .z ehd_raycast matches ..0 positioned ^ ^ ^1 run function ehd:render_holos/loop_area_holo/ray_z