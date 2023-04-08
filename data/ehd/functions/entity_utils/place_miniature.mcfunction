
tag @e[type=marker,tag=editing] remove editing

## Summon new miniature
execute if score @s place_miniature matches 1 run summon marker ~ ~ ~ {Tags:["ehd_entity","ehd_miniature","on","editing","rebuild","justPlaced"]}
execute if score @s place_miniature matches 2.. align xz positioned ~.5 ~ ~.5 run summon marker ~ ~ ~ {Tags:["ehd_entity","ehd_miniature","on","editing","rebuild","justPlaced"]}


## Summon new box entities

execute align xyz positioned ~.5 ~1.5 ~.5 run summon marker ~ ~ ~ {Tags:["vertexHolder","pos1","justPlaced","editing"]}
execute align xyz positioned ~.5 ~1.5 ~.5 run summon marker ~ ~ ~ {Tags:["vertexHolder","pos2","justPlaced","editing"]}


## Summon new dirHolder entities (HOLDS X AXIS)

summon marker ~ ~ ~ {Tags:["dirHolder","editing","justPlaced"]}


## Set initial size

scoreboard players set @e[type=marker,tag=ehd_entity,tag=justPlaced] ehd_size 2


## Set right holoID values

scoreboard players add .id ehd_holoID 1
scoreboard players operation @e[type=marker,tag=ehd_entity,tag=justPlaced] ehd_holoID = .id ehd_holoID
scoreboard players operation @e[type=marker,tag=vertexHolder,limit=2,tag=justPlaced] ehd_holoID = .id ehd_holoID
scoreboard players operation @e[type=marker,tag=dirHolder,tag=justPlaced,limit=1] ehd_holoID = .id ehd_holoID

## Set right size values

scoreboard players set @e[type=marker,tag=vertexHolder,tag=justPlaced,limit=2] ehd_sizeX 0
scoreboard players set @e[type=marker,tag=vertexHolder,tag=justPlaced,limit=2] ehd_sizeY 0
scoreboard players set @e[type=marker,tag=vertexHolder,tag=justPlaced,limit=2] ehd_sizeZ 0


## Message
execute if score @s place_miniature matches 1 run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Placed a new miniature.","color":"gold"}]
execute if score @s place_miniature matches 2 run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Placed a new miniature. (Aligned)","color":"gold"}]


## Give tool (as its in edit mode)

give @s[nbt=!{Inventory:[{id:"minecraft:lightning_rod",tag:{Wand:1b}}]}] lightning_rod{Wand:1b,Enchantments:[{}],display:{Name:'{"text":"Edit Tool","color":"green","italic":"false"}'}}



tag @e[type=marker,tag=justPlaced] remove justPlaced
scoreboard players set @a place_miniature 0
scoreboard players enable @a place_miniature