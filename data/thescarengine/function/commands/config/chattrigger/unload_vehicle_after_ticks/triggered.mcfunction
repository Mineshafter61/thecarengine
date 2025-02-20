#data modify storage thescarengine:temp p.rules.unload_vehicle_after_ticks set from storage thescarengine:temp data.config.input.content.pages[0].raw

scoreboard players set .internal.config.temp1.is_success datapack.temp.thecarengine.main 0
function thescarengine:commands/config/chattrigger/unload_vehicle_after_ticks/parse with storage thescarengine:temp data.config.input.content.pages[0]



execute if score .internal.config.temp1.is_success datapack.temp.thecarengine.main matches 1 store result storage thescarengine:temp p.rules.unload_vehicle_after_ticks int 1 run scoreboard players get .rule.unload_vehicle_after_ticks datapack.temp.thecarengine.main

function thescarengine:commands/config/refreshconfig
execute if score .internal.config.temp1.is_success datapack.temp.thecarengine.main matches 0 run tellraw @s [{"text": "\u00a7cInvaild positive int: '"},{"storage": "thescarengine:temp","nbt": "data.config.input.content.pages[0].raw","color": "red"},{"text": "'","color": "red"}]
tag @s remove datapack.thescarengine.commands.config.set.unload_vehicle_after_ticks