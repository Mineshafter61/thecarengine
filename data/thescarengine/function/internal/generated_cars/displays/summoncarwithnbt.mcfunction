#ranby setupcar

#reset
scoreboard players set .internal.summoncarwithnbt datapack.temp.thecarengine.main 0

#modify data
data modify entity @n[tag=datapack.thescarengine.car.parts.driver_seat,type=item_display,tag=datapack.thescarengine.car.parts.summoned] item.components.'minecraft:custom_data'.car_data set from storage thescarengine:temp data.summoncarwithnbt