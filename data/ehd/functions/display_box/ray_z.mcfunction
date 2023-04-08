scoreboard players remove .z_ray ehd_box 1

particle mycelium ~ ~ ~ .01 .01 .01 0 1 normal

execute as @s[tag=box_drawer1,tag=!faredgesDone] if score .z_ray ehd_box matches 0 run function ehd:display_box/faredges_z

execute unless score .z_ray ehd_box matches ..0 positioned ^ ^ ^.25 run function ehd:display_box/ray_z