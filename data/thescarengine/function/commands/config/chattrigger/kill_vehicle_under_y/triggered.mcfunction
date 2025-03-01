#data modify storage thescarengine:temp p.rules.unload_vehicle_after_ticks set from storage thescarengine:temp data.config.input.content.pages[0].raw

#scoreboard players set .internal.config.temp1.is_success datapack.temp.thecarengine.main 0
#function thescarengine:commands/config/chattrigger/unload_vehicle_after_ticks/parse with storage thescarengine:temp data.config.input.content.pages[0]


tag @s remove datapack.thescarengine.commands.config.set.kill_vehicle_under_y

scoreboard players set .internal.config.temp1.is_success datapack.temp.thecarengine.main 0
function thescarengine:commands/config/chattrigger/kill_vehicle_under_y/check with storage thescarengine:temp data.config.input.content.pages[0]
function thescarengine:commands/config/refreshconfig
execute if score .internal.config.temp1.is_success datapack.temp.thecarengine.main matches 0 run tellraw @s [{"text": "\u00a7cInvaild int: '"},{"storage": "thescarengine:temp","nbt": "data.config.input.content.pages[0].raw","color": "red"},{"text": "'","color": "red"}]