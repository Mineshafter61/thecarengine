
give @p[tag=datapack.temp.thecarengine.item.relocator.using] stone[custom_data={thescarengine:"internal.relocator.slot.temp"}]

data modify storage thescarengine:temp data.item.relocator.macro2.item_slot set value -1b
execute store success score .internal.item.relocator.emptyinven datapack.temp.thecarengine.main run data modify storage thescarengine:temp data.item.relocator.macro2.item_slot set from entity @p Inventory[{components:{'minecraft:custom_data':{thescarengine:"internal.relocator.slot.temp"}}}].Slot
execute if score .internal.item.relocator.emptyinven datapack.temp.thecarengine.main matches 1 summon item_display run function thescarengine:internal/car_item/relocator/placeiteminslotmacro with storage thescarengine:temp data.item.relocator.macro2


execute if score .internal.item.relocator.emptyinven datapack.temp.thecarengine.main matches 0 as @e[nbt={Item:{components:{'minecraft:custom_data':{thescarengine:"internal.relocator.slot.temp"}}}},x=0,type=item] run data modify entity @s Item set from storage thescarengine:temp data.item.relocator.item_data
