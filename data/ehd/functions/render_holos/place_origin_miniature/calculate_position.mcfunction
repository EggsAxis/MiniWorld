scoreboard players operation .dx ehd_holo = .sizeX ehd_pos
scoreboard players operation .dy ehd_holo = .sizeY ehd_pos
scoreboard players operation .dz ehd_holo = .sizeZ ehd_pos

## Making lengths absolute
scoreboard players set .-1 ehd_temp -1
execute if score .dx ehd_holo matches ..-1 run scoreboard players operation .dx ehd_holo *= .-1 ehd_temp
execute if score .dy ehd_holo matches ..-1 run scoreboard players operation .dy ehd_holo *= .-1 ehd_temp
execute if score .dz ehd_holo matches ..-1 run scoreboard players operation .dz ehd_holo *= .-1 ehd_temp

## Multiply y by two (doesnt need to be centered)
scoreboard players set .2 ehd_temp 2
scoreboard players operation .dy ehd_holo *= .2 ehd_temp


## Summon origin entity
kill @e[type=marker,tag=render_origin]
summon marker ~ ~ ~ {Tags:["render_origin"]}


## Tp origin to right location
## x
scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_raycast
execute if score .sizeX ehd_pos matches ..-1 as @e[type=marker,tag=render_origin,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] rotated ~ ~ run function ehd:render_holos/place_origin_miniature/x_subray
execute if score .sizeX ehd_pos matches 1.. as @e[type=marker,tag=render_origin,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] rotated ~180 ~ run function ehd:render_holos/place_origin_miniature/x_subray
## y
scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_raycast
execute if score .sizeY ehd_pos matches ..-1 as @e[type=marker,tag=render_origin,limit=1] at @s rotated 0 -90 run function ehd:render_holos/place_origin_miniature/y_subray

## z
scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_raycast
execute if score .sizeZ ehd_pos matches ..-1 as @e[type=marker,tag=render_origin,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] rotated ~90 ~ run function ehd:render_holos/place_origin_miniature/z_subray
execute if score .sizeZ ehd_pos matches 1.. as @e[type=marker,tag=render_origin,limit=1] at @s rotated as @e[type=marker,tag=dirHolder,tag=drawing,limit=1] rotated ~270 ~ run function ehd:render_holos/place_origin_miniature/z_subray