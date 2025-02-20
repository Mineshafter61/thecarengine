#run from asinteraction


data modify entity @s item set from storage thescarengine:temp data.item.relocator.item_data
$item replace entity @p[tag=datapack.temp.thecarengine.item.relocator.using] container.$(item_slot) from entity @s container.0
kill @s