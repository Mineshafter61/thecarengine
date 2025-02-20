#ran from main
data modify entity @s Rotation set from entity @p[tag=datapack.temp.thecarengine.item.grabber.using] Rotation
execute store result score .internal.item.grabber.hit datapack.temp.thecarengine.main run function thescarengine:internal/car_item/grabber/cast
#text fails
execute if score .internal.item.grabber.hit datapack.temp.thecarengine.main matches 0 as @p[tag=datapack.temp.thecarengine.item.grabber.using] run return run function thescarengine:messages/grabber_too_far

