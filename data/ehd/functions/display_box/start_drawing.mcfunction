tag @s add toDraw


## Set right size value

scoreboard players operation .sizeX ehd_pos = @e[type=marker,tag=vertexHolder,tag=editing,tag=pos1,limit=1] ehd_sizeX
scoreboard players operation .sizeY ehd_pos = @e[type=marker,tag=vertexHolder,tag=editing,tag=pos1,limit=1] ehd_sizeY
scoreboard players operation .sizeZ ehd_pos = @e[type=marker,tag=vertexHolder,tag=editing,tag=pos1,limit=1] ehd_sizeZ



## Summon markers at vertices

execute as @e[type=marker,tag=vertexHolder,tag=editing,tag=pos1,limit=1] at @s run function ehd:display_box/move_to_vertex1
execute as @e[type=marker,tag=vertexHolder,tag=editing,tag=pos2,limit=1] at @s run function ehd:display_box/move_to_vertex2


####  Calculate absolute dimensions of box (in raycast steps: 0.25 block)

scoreboard players operation .x ehd_box = .sizeX ehd_pos
scoreboard players operation .y ehd_box = .sizeY ehd_pos
scoreboard players operation .z ehd_box = .sizeZ ehd_pos

## Making lengths absolute
scoreboard players set .-1 ehd_temp -1
execute if score .x ehd_box matches ..-1 run scoreboard players operation .x ehd_box *= .-1 ehd_temp
execute if score .y ehd_box matches ..-1 run scoreboard players operation .y ehd_box *= .-1 ehd_temp
execute if score .z ehd_box matches ..-1 run scoreboard players operation .z ehd_box *= .-1 ehd_temp

## Adding 1 (because we moved to a vertex)
scoreboard players add .x ehd_box 1
scoreboard players add .y ehd_box 1
scoreboard players add .z ehd_box 1

## Multiplying by 4 (raycast steps per block)
scoreboard players set .4 ehd_temp 4
scoreboard players operation .x ehd_box *= .4 ehd_temp
scoreboard players operation .y ehd_box *= .4 ehd_temp
scoreboard players operation .z ehd_box *= .4 ehd_temp


#### Start drawing from pos1

scoreboard players operation .x_ray ehd_box = .x ehd_box
tag @e[type=marker,tag=box_drawer1] remove faredgesDone
execute if score .sizeX ehd_pos matches 1.. as @e[type=marker,tag=box_drawer1,limit=1] at @s rotated -90 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_x
execute if score .sizeX ehd_pos matches ..0 as @e[type=marker,tag=box_drawer1,limit=1] at @s rotated 90 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_x

scoreboard players operation .y_ray ehd_box = .y ehd_box
tag @e[type=marker,tag=box_drawer1] remove faredgesDone
execute if score .sizeY ehd_pos matches 1.. as @e[type=marker,tag=box_drawer1,limit=1] at @s rotated 0 -90 positioned ^ ^ ^.25 run function ehd:display_box/ray_y
execute if score .sizeY ehd_pos matches ..0 as @e[type=marker,tag=box_drawer1,limit=1] at @s rotated 0 90 positioned ^ ^ ^.25 run function ehd:display_box/ray_y

scoreboard players operation .z_ray ehd_box = .z ehd_box
tag @e[type=marker,tag=box_drawer1] remove faredgesDone
execute if score .sizeZ ehd_pos matches 1.. as @e[type=marker,tag=box_drawer1,limit=1] at @s rotated 0 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_z
execute if score .sizeZ ehd_pos matches ..0 as @e[type=marker,tag=box_drawer1,limit=1] at @s rotated 180 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_z


#### Start drawing from pos2

scoreboard players operation .x_ray ehd_box = .x ehd_box
scoreboard players operation .y_ray ehd_box = .y ehd_box
scoreboard players operation .z_ray ehd_box = .z ehd_box

execute if score .sizeX ehd_pos matches 1.. as @e[type=marker,tag=box_drawer2,limit=1] at @s rotated 90 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_x
execute if score .sizeX ehd_pos matches ..0 as @e[type=marker,tag=box_drawer2,limit=1] at @s rotated -90 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_x

execute if score .sizeY ehd_pos matches 1.. as @e[type=marker,tag=box_drawer2,limit=1] at @s rotated 0 90 positioned ^ ^ ^.25 run function ehd:display_box/ray_y
execute if score .sizeY ehd_pos matches ..0 as @e[type=marker,tag=box_drawer2,limit=1] at @s rotated 0 -90 positioned ^ ^ ^.25 run function ehd:display_box/ray_y

execute if score .sizeZ ehd_pos matches 1.. as @e[type=marker,tag=box_drawer2,limit=1] at @s rotated 180 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_z
execute if score .sizeZ ehd_pos matches ..0 as @e[type=marker,tag=box_drawer2,limit=1] at @s rotated 0 0 positioned ^ ^ ^.25 run function ehd:display_box/ray_z
