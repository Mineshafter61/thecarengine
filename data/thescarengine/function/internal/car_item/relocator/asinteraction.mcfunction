#ran by interacted_interaction
#execute as @a[tag=datapack.temp.thecarengine.item.relocator.using] run say inter

execute on vehicle run scoreboard players operation .internal.item.relocator.car_id datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.id

#test
#return 0

scoreboard players set .internal.item.relocator.car_riding datapack.temp.thecarengine.main 0
execute if score .rule.allow_relocator_while_riding datapack.temp.thecarengine.main matches 0 as @e[tag=datapack.thescarengine.car.parts,x=0,type=item_display] if score @s datapack.temp.thecarengine.car.id = .internal.item.relocator.car_id datapack.temp.thecarengine.main on passengers if entity @s[type=player] run scoreboard players set .internal.item.relocator.car_riding datapack.temp.thecarengine.main 1
execute if score .internal.item.relocator.car_riding datapack.temp.thecarengine.main matches 1 as @p[tag=datapack.temp.thecarengine.item.relocator.using] run return run function thescarengine:messages/item_relocator_fail_riding


#get placed_item from the car
data modify storage thescarengine:temp data.item.relocator.car_data set value {}
execute as @e[tag=datapack.thescarengine.car.parts.driver_seat,x=0,type=item_display] if score @s datapack.temp.thecarengine.car.id = .internal.item.relocator.car_id datapack.temp.thecarengine.main run data modify storage thescarengine:temp data.item.relocator.car_data set from entity @s item
#copy item_data to storage
data modify storage thescarengine:temp data.item.relocator.item_data set from storage thescarengine:temp data.item.relocator.car_data.components.'minecraft:custom_data'.car_data.placed_item

data modify storage thescarengine:temp data.item.relocator.item_data.components.'minecraft:custom_data'.car_item.car_data set from storage thescarengine:temp data.item.relocator.car_data.components.'minecraft:custom_data'.car_data

data remove storage thescarengine:temp data.item.relocator.item_data.components.'minecraft:custom_data'.car_item.car_data.placed_item



#item color
execute if data storage thescarengine:temp data.item.relocator.item_data.components.'minecraft:custom_data'.car_item.car_data.item_color summon item_display run function thescarengine:internal/car_item/relocator/color_item with storage thescarengine:temp data.item.relocator.item_data.components.'minecraft:custom_data'.car_item.car_data






#place item to player slot stuff
execute if score .rule.drop_car_item_to_inventory datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/car_item/relocator/add_item_inv
execute if score .rule.drop_car_item_to_inventory datapack.temp.thecarengine.main matches 0 on vehicle at @s run function thescarengine:internal/car_item/relocator/summon_item


#kill car
execute as @e[tag=datapack.thescarengine.car.parts,type=item_display] if score @s datapack.temp.thecarengine.car.id = .internal.item.relocator.car_id datapack.temp.thecarengine.main run function thescarengine:internal/car_item/relocator/killthiscar