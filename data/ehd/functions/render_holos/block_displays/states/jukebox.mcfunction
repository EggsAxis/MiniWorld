execute if block ~ ~ ~ jukebox[has_record="true"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:jukebox", Properties:{has_record:"true"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
execute if block ~ ~ ~ jukebox[has_record="false"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:jukebox", Properties:{has_record:"false"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
