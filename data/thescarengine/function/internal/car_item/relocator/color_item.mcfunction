#ran from asinteraction
data modify entity @s item set from storage thescarengine:temp data.item.relocator.item_data

data modify storage thescarengine:temp data.color.macro2.part.color set value -1

$data modify storage thescarengine:temp data.color.macro2.part.color set from storage thescarengine:temp data.item.relocator.item_data.components.'minecraft:custom_data'.car_item.car_data.colored[{part:$(item_color)}].color

$execute unless data storage thescarengine:temp data.item.relocator.item_data.components.'minecraft:custom_data'.car_item.car_data.colored[{part:$(item_color)}].color run tellraw @p[tag=datapack.temp.thecarengine.item.relocator.using] "\u00a74edatapack > thecarengine > not found part '$(item_color)'"


function thescarengine:internal/car/color/passengers

data modify storage thescarengine:temp data.item.relocator.item_data set from entity @s item

kill @s