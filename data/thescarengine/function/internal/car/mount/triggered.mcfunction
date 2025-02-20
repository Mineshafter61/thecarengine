advancement revoke @s only thescarengine:interact_interaction

#execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_sneaking":true}}} run return 0
execute if data entity @s SelectedItem.components.'minecraft:custom_data'.thescarengine run return 0

ride @s dismount

execute as @e[tag=datapack.thescarengine.car.parts.ride_interaction] if data entity @s interaction on vehicle run scoreboard players set @s datapack.temp.thecarengine.ride_link 1



execute as @e[tag=datapack.thescarengine.car.parts.ride_interaction] if data entity @s interaction on vehicle if entity @s[tag=datapack.thescarengine.car.parts.driver_seat] run scoreboard players set @s datapack.temp.thecarengine.car.loaded 100

ride @s mount @n[scores={datapack.temp.thecarengine.ride_link=1}]
execute as @e[tag=datapack.thescarengine.car.parts.ride_interaction,type=interaction] run data remove entity @s interaction
scoreboard players reset * datapack.temp.thecarengine.ride_link 


