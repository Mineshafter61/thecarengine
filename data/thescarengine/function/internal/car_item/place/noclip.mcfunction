
#playsound
execute if score .internal.car_item.place.collide datapack.temp.thecarengine.main matches 0 as @e[tag=datapack.thescarengine.car.parts.summoned,type=item_display,x=0,tag=datapack.thescarengine.car.parts.pivot] run playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ 0.5 1

#remove item from player hands
item replace entity @s weapon.mainhand with air
