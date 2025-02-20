advancement revoke @s only thescarengine:car_item_used





execute unless score @s datapack.temp.thecarengine.car_item.place.cooldown matches -2147483648..2147483647 run function thescarengine:internal/car_item/place/main

scoreboard players set @s datapack.temp.thecarengine.car_item.place.cooldown 2
#function thescarengine:internal/car_item/place/main

execute unless score .internal.car_item.iscooldowntick datapack.temp.thecarengine.main matches 0 run schedule function thescarengine:internal/car_item/place/cooldowntick 1t
scoreboard players set .internal.car_item.iscooldowntick datapack.temp.thecarengine.main 1


