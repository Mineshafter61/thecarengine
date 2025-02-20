#ran from ray
execute at @s run tp @s ^ ^ ^1
execute at @s if entity @e[tag=datapack.thescarengine.car.parts,distance=..2] run return 1
scoreboard players remove .internal.item.grabber.distance datapack.temp.thecarengine.main 1
execute if score .internal.item.grabber.distance datapack.temp.thecarengine.main matches 1.. run return run function thescarengine:internal/car_item/grabber/cast
return 0
