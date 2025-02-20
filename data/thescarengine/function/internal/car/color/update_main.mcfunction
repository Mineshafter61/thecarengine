#this is api command for updaing car with the id
#scoreboard players set .internal.car.color.update.car_id datapack.temp.thecarengine.main 2

#say color updated

#ran by data\thescarengine\function\internal\car_item\spray_scan\asinteraction.mcfunction

# store car id to storage
execute store result storage thescarengine:temp data.color.macro1.id int 1 run scoreboard players get .internal.car.color.update.car_id datapack.temp.thecarengine.main
function thescarengine:internal/car/color/addtagtodriverseat with storage thescarengine:temp data.color.macro1


data modify storage thescarengine:temp data.color.updateparts set value []
#get color
data modify storage thescarengine:temp data.color.updateparts set from entity @n[tag=datapack.thescarengine.car.color.update.selected,tag=datapack.thescarengine.car.parts.driver_seat,x=0,type=item_display] item.components.'minecraft:custom_data'.car_data.colored

#update each part
execute if data storage thescarengine:temp data.color.updateparts[0] run function thescarengine:internal/car/color/updatecolorloop

#remove tags
tag @e[tag=datapack.thescarengine.car.color.update.selected,x=0,type=item_display] remove datapack.thescarengine.car.color.update.selected