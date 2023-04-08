
## Message
tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"MiniWorld has been disabled and deleted from the world.","color":"gold"}]

## Remove scoreboards
scoreboard objectives remove ehd_box
scoreboard objectives remove ehd_raycast
scoreboard objectives remove ehd_holo
scoreboard objectives remove ehd_holoID
scoreboard objectives remove ehd_size
scoreboard objectives remove ehd_temp
scoreboard objectives remove ehd_pos
scoreboard objectives remove ehd_sizeX
scoreboard objectives remove ehd_sizeY
scoreboard objectives remove ehd_sizeZ
scoreboard objectives remove place_hologram
scoreboard objectives remove place_miniature
scoreboard objectives remove remove_entity
scoreboard objectives remove switch_entity
scoreboard objectives remove edit_entity
scoreboard objectives remove rotate_entity
scoreboard objectives remove teleport_entity
scoreboard objectives remove rebuild_miniature
scoreboard objectives remove edit_tool
scoreboard objectives remove size_miniature
scoreboard objectives remove delete_miniworld


## Remove holograms
kill @e[type=marker,tag=ehd_entity]
kill @e[type=block_display,tag=ehd_miniature_block]
kill @e[type=marker,tag=holo_looper]
kill @e[type=marker,tag=render_origin]
kill @e[type=marker,tag=dirHolder]


## Remove selections
kill @e[type=marker,tag=vertexHolder]


## Clear item from player
clear @a lightning_rod{Wand:1b,Enchantments:[{}],display:{Name:'{"text":"Edit Tool","color":"green","italic":"false"}'}}


## Disable datapack
datapack disable "file/MiniWorld"