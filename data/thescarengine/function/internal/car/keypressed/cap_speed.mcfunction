#get max speed
execute store result score .current_max_vel datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.max_vel 10000
#get min speed
execute store result score .current_min_vel datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.min_vel 10000

#cap forward speed
execute if score @s datapack.temp.thecarengine.car.speed > .current_max_vel datapack.temp.thecarengine.main run scoreboard players operation @s datapack.temp.thecarengine.car.speed = .current_max_vel datapack.temp.thecarengine.main
#cap backward speed
execute if score @s datapack.temp.thecarengine.car.speed < .current_min_vel datapack.temp.thecarengine.main run scoreboard players operation @s datapack.temp.thecarengine.car.speed = .current_min_vel datapack.temp.thecarengine.main