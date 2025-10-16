#when player use tce:off

tellraw @s ["",{"text":"[","color":"gray"},{"text":"T","color":"#01BABA"},{"text":"C","color":"#54DCDC"},{"text":"E","color":"#93FFFF"},{"text":"] ","color":"gray"},{"text":"ARE YOU SURE? DISABLING TCE WILL KILL ALL CARS, THOSE WHICH ARE UNLOADED WILL BE BROKEN ","color":"dark_red"},{"text":"[click here to confirm]","color": "gray","click_event": {"action": "run_command","command": "/function thescarengine:disable"}}]
