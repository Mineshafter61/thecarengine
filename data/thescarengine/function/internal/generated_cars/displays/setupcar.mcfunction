



#oh weell
tag @e[tag=datapack.thescarengine.car.parts.summoned] add datapack.thescarengine.car.parts

#add summoned car to stuff
execute as @e[type=item_display,distance=..0.001] unless score @s datapack.temp.thecarengine.car.id matches -2147483648..2147483647 if predicate { "condition": "minecraft:inverted", "term": { "condition": "minecraft:entity_properties", "entity": "this", "predicate": { "vehicle": {} } } } run function thescarengine:internal/generated_cars/displays/addpartspawn

#settings
execute as @n[tag=datapack.thescarengine.car.parts.driver_seat,x=0,type=item_display,tag=datapack.thescarengine.car.parts.summoned] run function thescarengine:internal/generated_cars/displays/set_defsettings with storage thescarengine:temp data.summon

#modify if the car is custom nbted
execute if score .internal.summoncarwithnbt datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/generated_cars/displays/summoncarwithnbt



#teleort duration
execute as @e[tag=datapack.thescarengine.car.parts.summoned] on passengers run data merge entity @s {teleport_duration:1}
#link id
scoreboard players operation @e[tag=datapack.thescarengine.car.parts.summoned] datapack.temp.thecarengine.car.id = .gobal_id datapack.temp.thecarengine.main
#set scores
execute as @e[tag=datapack.thescarengine.car.parts.summoned,tag=datapack.thescarengine.car.parts.driver_seat] if entity @s[type=!player] run function thescarengine:internal/generated_cars/displays/reset_car_value

#update model
#execute store result storage thescarengine:temp data.temp.macroinput2.ID int 1 run scoreboard players get @n[tag=datapack.thescarengine.car.parts.summoned] datapack.temp.thecarengine.car.id
#function thescarengine:internal/generated_cars/bones/update with storage thescarengine:temp data.temp.macroinput2


#update car color
scoreboard players operation .internal.car.color.update.car_id datapack.temp.thecarengine.main = .gobal_id datapack.temp.thecarengine.main
function thescarengine:internal/car/color/update_main


#this is used in summon with item
execute if score .internal.car_item.place.dont_remove_tag datapack.temp.thecarengine.main matches 1 run return 0



tag @e[tag=datapack.thescarengine.car.parts.summoned,type=item_display] remove datapack.thescarengine.car.parts.summoned