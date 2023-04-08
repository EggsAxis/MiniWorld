tellraw @a [{"text":"Miniworld has successfully been loaded."}]

gamerule maxCommandChainLength 999999999

## scoreboards

scoreboard objectives add ehd_box dummy
scoreboard objectives add ehd_raycast dummy
scoreboard objectives add ehd_holo dummy
scoreboard objectives add ehd_holoID dummy
scoreboard objectives add ehd_size dummy
scoreboard objectives add ehd_temp dummy

scoreboard objectives add ehd_pos dummy
scoreboard objectives add ehd_sizeX dummy
scoreboard objectives add ehd_sizeY dummy
scoreboard objectives add ehd_sizeZ dummy


scoreboard objectives add place_hologram trigger
scoreboard objectives add place_miniature trigger
scoreboard objectives add remove_entity trigger
scoreboard objectives add switch_entity trigger
scoreboard objectives add edit_entity trigger
scoreboard objectives add rotate_entity trigger
scoreboard objectives add teleport_entity trigger
scoreboard objectives add rebuild_miniature trigger
scoreboard objectives add edit_tool trigger
scoreboard objectives add size_miniature trigger
scoreboard objectives add delete_miniworld trigger

## enable trigger scoreboards
scoreboard players enable @a place_hologram
scoreboard players enable @a place_miniature
scoreboard players enable @a remove_entity
scoreboard players enable @a switch_entity
scoreboard players enable @a edit_entity
scoreboard players enable @a teleport_entity
scoreboard players enable @a rotate_entity
scoreboard players enable @a rebuild_miniature
scoreboard players enable @a edit_tool
scoreboard players enable @a size_miniature
scoreboard players enable @a delete_miniworld

scoreboard players set @a rotate_entity -987
