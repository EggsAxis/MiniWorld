execute if block ~ ~ ~ birch_pressure_plate[powered="true"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:birch_pressure_plate", Properties:{powered:"true"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
execute if block ~ ~ ~ birch_pressure_plate[powered="false"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:birch_pressure_plate", Properties:{powered:"false"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
