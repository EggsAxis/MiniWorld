## calculate dimensions of box

execute store result score .sizeX ehd_pos run data get entity @e[type=marker,tag=vertexHolder,tag=pos2,limit=1] Pos[0]
execute store result score .sizeY ehd_pos run data get entity @e[type=marker,tag=vertexHolder,tag=pos2,limit=1] Pos[1]
execute store result score .sizeZ ehd_pos run data get entity @e[type=marker,tag=vertexHolder,tag=pos2,limit=1] Pos[2]

scoreboard players operation .sizeX ehd_pos -= .x1 ehd_pos
scoreboard players operation .sizeY ehd_pos -= .y1 ehd_pos
scoreboard players operation .sizeZ ehd_pos -= .z1 ehd_pos
