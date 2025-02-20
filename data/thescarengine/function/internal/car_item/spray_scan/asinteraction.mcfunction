#ran by data\thescarengine\function\internal\car_item\spray_scan\main.mcfunction


#check if there's vehicel
execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{type:"minecraft:item_display"}}} run return run tellraw @a "\u00a74thescarengine > item > spay_can > fatal error > no vehicel"
#check data
execute on vehicle unless data entity @s item.components.minecraft:custom_data.dye_part run return run tellraw @a "\u00a74thescarengine > item > spay_can > fatal error > item.components.minecraft:custom_data.dye_part not found on vehicel"


#get id
execute on vehicle if entity @s[type=item_display] run scoreboard players operation .internal.item.spray_can.car_id datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.id
tellraw @a[tag=thescarengine.debugger] [{"text":"\u00a77colored car with id = "},{"score":{"name": ".internal.item.spray_can.car_id","objective" :"datapack.temp.thecarengine.main"}}]

#get to dye part
execute on vehicle if entity @s[type=item_display] run data modify storage thescarengine:temp data.internal.spray_item.target_dye_parts set from entity @s item.components.minecraft:custom_data.dye_part
tellraw @a[tag=thescarengine.debugger] [{"text":"\u00a77target dye parts = "},{"nbt":"data.internal.spray_item.target_dye_parts","storage": "thescarengine:temp"}]

#find driver node
execute store result storage thescarengine:temp data.internal.spray_item.macro.id int 1 run scoreboard players get .internal.item.spray_can.car_id datapack.temp.thecarengine.main
function thescarengine:internal/car_item/spray_scan/addtagdriverseat with storage thescarengine:temp data.internal.spray_item.macro

#copy data from car data to storage
data modify storage thescarengine:temp data.internal.spray_item.car_color_copy set from entity @n[tag=datapack.thescarengine.internal.item.spay_can.selected_driver,type=item_display,x=0] item.components.minecraft:custom_data.car_data.colored

# dye parts
execute if data storage thescarengine:temp data.internal.spray_item.target_dye_parts[0] run function thescarengine:internal/car_item/spray_scan/dyepartloop

#PUT IT BACK!! (copy data back to entity)
data modify entity @n[tag=datapack.thescarengine.internal.item.spay_can.selected_driver,type=item_display,x=0] item.components.minecraft:custom_data.car_data.colored set from storage thescarengine:temp data.internal.spray_item.car_color_copy

#remove tag
tag @e[tag=datapack.thescarengine.internal.item.spay_can.selected_driver,x=0,type=item_display] remove datapack.thescarengine.internal.item.spay_can.selected_driver

#update car color
scoreboard players operation .internal.car.color.update.car_id datapack.temp.thecarengine.main = .internal.item.spray_can.car_id datapack.temp.thecarengine.main
function thescarengine:internal/car/color/update_main



tell @a[tag=thescarengine.debugger] interacted
data remove entity @s interaction