#check if any key pressed
#execute summon marker run function thescarengine:internal/process/keypress_check






function thescarengine:internal/process/reset_key

execute if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"type_specific": {"type": "minecraft:player","input": {"forward":true}}}} run scoreboard players set .keyW datapack.temp.thecarengine.main 1
execute if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"type_specific": {"type": "minecraft:player","input": {"backward":true}}}} run scoreboard players set .keyS datapack.temp.thecarengine.main 1
execute if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"type_specific": {"type": "minecraft:player","input": {"left":true}}}} run scoreboard players set .keyA datapack.temp.thecarengine.main 1
execute if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"type_specific": {"type": "minecraft:player","input": {"right":true}}}} run scoreboard players set .keyD datapack.temp.thecarengine.main 1
















