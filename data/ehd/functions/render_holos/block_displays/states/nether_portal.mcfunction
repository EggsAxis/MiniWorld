execute if block ~ ~ ~ nether_portal[axis="x"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:nether_portal", Properties:{axis:"x"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
execute if block ~ ~ ~ nether_portal[axis="z"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:nether_portal", Properties:{axis:"z"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
