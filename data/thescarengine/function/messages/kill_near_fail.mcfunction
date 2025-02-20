#this shows up when player use tce:kill/near with no car near by

tellraw @s ["",{"text":"[","color":"gray"},{"text":"T","color":"#01BABA"},{"text":"C","color":"#54DCDC"},{"text":"E","color":"#93FFFF"},{"text":"] ","color":"gray"},{"text":"No vehicles nearby (","color":"red"},{"nbt":"p.rules.kill_near_distance","storage": "thescarengine:temp","color": "red"},{"text":")","color": "red"}]