#this 

scoreboard players remove @a[scores={datapack.temp.thecarengine.car_item.place.cooldown=1..}] datapack.temp.thecarengine.car_item.place.cooldown 1
execute as @a[scores={datapack.temp.thecarengine.car_item.place.cooldown=0}] run scoreboard players reset @s datapack.temp.thecarengine.car_item.place.cooldown

execute if entity @a[scores={datapack.temp.thecarengine.car_item.place.cooldown=1..}] run schedule function thescarengine:internal/car_item/place/cooldowntick 1t