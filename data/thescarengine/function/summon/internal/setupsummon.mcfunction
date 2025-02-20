#kill entity without id

execute as @e[tag=datapack.thescarengine.car.parts] unless score @s datapack.temp.thecarengine.car.id matches -2147483648..2147483647 unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} run function thescarengine:summon/internal/killnoid


#do summon thing
execute unless data storage thescarengine:temp {ON:1} run function thescarengine:messages/car_summon_fails_disable
execute unless data storage thescarengine:temp {ON:1} run return -1

execute unless score .internal.car_item.notsummonshowgive datapack.temp.thecarengine.main matches 1 run function thescarengine:messages/car_summon
scoreboard players add .gobal_id datapack.temp.thecarengine.main 1
execute if entity @s store result score .API_spawn.dir datapack.temp.thecarengine.main run data get entity @s Rotation[0] 10000
execute store result storage thescarengine:temp data.temp.macroinput1.ID int 1 run scoreboard players get .gobal_id datapack.temp.thecarengine.main
