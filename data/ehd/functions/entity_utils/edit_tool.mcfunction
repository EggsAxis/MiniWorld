scoreboard players set @a edit_tool 0
scoreboard players enable @a edit_tool

## Give item
give @s lightning_rod{Wand:1b,Enchantments:[{}],display:{Name:'{"text":"Edit Tool","color":"green","italic":"false"}'}}

## Message
tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Gave you an Edit Tool.","color":"gold"}]