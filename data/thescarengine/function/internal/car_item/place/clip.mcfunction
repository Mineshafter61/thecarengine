#place fails
execute if score .internal.car_item.place.collide datapack.temp.thecarengine.main matches 1 run function thescarengine:messages/car_placement_fails
#revert id
execute if score .internal.car_item.place.collide datapack.temp.thecarengine.main matches 1 run scoreboard players remove .gobal_id datapack.temp.thecarengine.main 1
