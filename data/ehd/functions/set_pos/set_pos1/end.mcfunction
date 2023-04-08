## Teleport
tp @s ~ ~ ~


## Get coordinates
execute store result score .x ehd_temp run data get entity @s Pos[0]
execute store result score .y ehd_temp run data get entity @s Pos[1]
execute store result score .z ehd_temp run data get entity @s Pos[2]

## Message

tellraw @p[nbt={SelectedItem:{id:"minecraft:lightning_rod",tag:{Wand:1b}}}] ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Set pos ","color":"gold"},{"text":"1","color":"#E8B764"},{"text":" to ","color":"gold"},{"score":{"name":".x","objective":"ehd_temp"},"color":"#E8B764"}," ",{"score":{"name":".y","objective":"ehd_temp"},"color":"#E8B764"}," ",{"score":{"name":".z","objective":"ehd_temp"},"color":"#E8B764"}]


## rebuild miniatures

tag @e[type=marker,tag=ehd_miniature,tag=editing] add rebuild


## Sound
playsound block.wood.place ambient @a[distance=..8] ~ ~ ~ 1 2

## Set sizes

execute store result score @s ehd_sizeX run data get entity @e[type=marker,tag=vertexHolder,tag=pos2,tag=editing,limit=1] Pos[0]
execute store result score @s ehd_sizeY run data get entity @e[type=marker,tag=vertexHolder,tag=pos2,tag=editing,limit=1] Pos[1]
execute store result score @s ehd_sizeZ run data get entity @e[type=marker,tag=vertexHolder,tag=pos2,tag=editing,limit=1] Pos[2]

scoreboard players operation @s ehd_sizeX -= .x ehd_temp
scoreboard players operation @s ehd_sizeY -= .y ehd_temp
scoreboard players operation @s ehd_sizeZ -= .z ehd_temp

