
tag @s add drawing


## MINIATURE: Kill all block_displays that belong to the miniature
execute as @s[tag=rebuild] as @e[type=block_display,tag=ehd_miniature_block,distance=..5] if score @s ehd_holoID = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_holoID run kill @s


## Pick right vertexHolder and dirHolders to render

execute as @e[type=marker,tag=vertexHolder] if score @s ehd_holoID = @e[type=marker,tag=ehd_entity,tag=drawing,limit=1] ehd_holoID run tag @s add drawing
execute as @e[type=marker,tag=dirHolder] if score @s ehd_holoID = @e[type=marker,tag=ehd_entity,tag=drawing,limit=1] ehd_holoID run tag @s add drawing


## Set right size values

scoreboard players operation .sizeX ehd_pos = @e[type=marker,tag=vertexHolder,tag=drawing,tag=pos1,limit=1] ehd_sizeX
scoreboard players operation .sizeY ehd_pos = @e[type=marker,tag=vertexHolder,tag=drawing,tag=pos1,limit=1] ehd_sizeY
scoreboard players operation .sizeZ ehd_pos = @e[type=marker,tag=vertexHolder,tag=drawing,tag=pos1,limit=1] ehd_sizeZ


## Place origin (place from the hologram is drawn in hologram)

execute if entity @e[type=marker,tag=ehd_hologram,tag=drawing] run function ehd:render_holos/place_origin_holo/calculate_position
execute if entity @e[type=marker,tag=ehd_miniature,tag=drawing] run function ehd:render_holos/place_origin_miniature/calculate_position

## Loop through entire selected area

execute as @e[type=marker,tag=vertexHolder,tag=pos1,tag=drawing,limit=1] at @s if entity @e[type=marker,tag=ehd_hologram,tag=drawing] run function ehd:render_holos/loop_area_holo/loop_area
execute as @e[type=marker,tag=vertexHolder,tag=pos1,tag=drawing,limit=1] at @s if entity @e[type=marker,tag=ehd_miniature,tag=drawing] run function ehd:render_holos/loop_area_miniature/loop_area



#### MINIATURE: Adjust spawned block_displays

## Rotation
scoreboard players set .90m ehd_temp 9000000
execute store result score .rot ehd_temp run data get entity @e[type=marker,tag=dirHolder,tag=drawing,limit=1] Rotation[0] 100000
scoreboard players operation .rot ehd_temp += .90m ehd_temp
execute as @s[tag=rebuild] as @e[type=block_display,tag=ehd_miniature_block,tag=just_placed] store result entity @s Rotation[0] float 0.00001 run scoreboard players get .rot ehd_temp

## Size
scoreboard players set .3125 ehd_temp 3125
scoreboard players operation .size ehd_temp = @e[type=marker,tag=ehd_miniature,tag=drawing,limit=1] ehd_size
scoreboard players operation .size ehd_temp *= .3125 ehd_temp
execute as @e[type=block_display,tag=ehd_miniature_block,tag=just_placed] store result entity @s transformation.scale[0] float 0.00001 run scoreboard players get .size ehd_temp
execute as @e[type=block_display,tag=ehd_miniature_block,tag=just_placed] store result entity @s transformation.scale[1] float 0.00001 run scoreboard players get .size ehd_temp
execute as @e[type=block_display,tag=ehd_miniature_block,tag=just_placed] store result entity @s transformation.scale[2] float 0.00001 run scoreboard players get .size ehd_temp

## Rest
execute as @s[tag=rebuild] as @e[type=block_display,tag=ehd_miniature_block,tag=just_placed] run data modify entity @s view_range set value 1.0f
execute as @s[tag=rebuild] as @e[type=block_display,tag=ehd_miniature_block,tag=just_placed] at @s run scoreboard players operation @s ehd_holoID = @e[type=marker,tag=ehd_entity,tag=ehd_miniature,tag=drawing,limit=1] ehd_holoID
execute as @s[tag=rebuild] as @e[type=block_display,tag=ehd_miniature_block,tag=just_placed] run tag @s remove just_placed



## Remove tags and kill render_origins

tag @s[tag=rebuild] remove rebuild
tag @e[type=marker] remove drawing
kill @e[type=marker,tag=render_origin]