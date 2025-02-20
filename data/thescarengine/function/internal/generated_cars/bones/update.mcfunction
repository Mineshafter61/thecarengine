#$tag @e[tag=datapack.thescarengine.car.parts,x=0,scores={datapack.temp.thecarengine.car.id=$(ID)}] add datapack.thescarengine.car.parts.selected
#$tag @e[tag=datapack.thescarengine.car.parts,x=0,scores={datapack.temp.thecarengine.car.id=$(ID)}] add datapack.thescarengine.car.parts.selected.forceupdate
#$execute as @e[scores={datapack.temp.thecarengine.car.id=$(ID)},tag=datapack.thescarengine.car.parts.pivot,type=item_display] at @s run function thescarengine:internal/generated_cars/bones/pivot with entity @n[tag=datapack.thescarengine.car.parts.driver_seat,type=item_display,scores={datapack.temp.thecarengine.car.id=$(ID)}] item.components.'minecraft:custom_data'.car_data
#tag @e[tag=datapack.thescarengine.car.parts.selected.forceupdate,tag=datapack.thescarengine.car.parts.selected,x=0,type=item_display] remove datapack.thescarengine.car.parts.selected
#tag @e remove datapack.thescarengine.car.parts.selected.forceupdate
tag @e[tag=datapack.thescarengine.car.parts.summoned,type=item_display] add datapack.thescarengine.car.parts.selected



execute store result entity @n[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.pivot,type=item_display,x=0] Rotation[0] float 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.dir

data modify storage thescarengine:temp data.current_car set from entity @s item.components.'minecraft:custom_data'.car_data

#move car to new pos
execute as @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.pivot,type=item_display,limit=1,x=0] at @s run function thescarengine:internal/generated_cars/bones/pivot with storage thescarengine:temp data.current_car

tag @e remove datapack.thescarengine.car.parts.selected