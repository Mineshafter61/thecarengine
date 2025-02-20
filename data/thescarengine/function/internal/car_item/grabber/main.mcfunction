#ran from trigger

#how far can player grap vehicle
scoreboard players set .internal.item.grabber.distance datapack.temp.thecarengine.main 50




execute at @s anchored eyes positioned ^ ^ ^ summon item_display run function thescarengine:internal/car_item/grabber/ray
