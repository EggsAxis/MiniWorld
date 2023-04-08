scoreboard players set @a delete_miniworld 0
scoreboard players enable @a delete_miniworld

tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Are you sure you want to delete MiniWorld Datapack? This will remove all placed miniatures and holograms.","color":"gold"},"\n",{"text":"[Delete Miniworld]","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/function ehd:entity_utils/delete/delete"}}]