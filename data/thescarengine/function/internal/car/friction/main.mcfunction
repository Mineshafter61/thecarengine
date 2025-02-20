#get f
execute if score @s datapack.temp.thecarengine.car.speed matches 1.. store result score .current_f datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.friction 10000
execute if score @s datapack.temp.thecarengine.car.speed matches ..-1 store result score .current_f datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.friction -10000

#apply f to car
scoreboard players operation @s datapack.temp.thecarengine.car.speed -= .current_f datapack.temp.thecarengine.main

#stop jumping
scoreboard players operation .current_f_left datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.speed
scoreboard players operation .current_f_left datapack.temp.thecarengine.main /= .current_f datapack.temp.thecarengine.main
execute if score .current_f_left datapack.temp.thecarengine.main matches ..0 run scoreboard players set @s datapack.temp.thecarengine.car.speed 0
#execute if score @s datapack.temp.thecarengine.car.speed = .current_f datapack.temp.thecarengine.main run scoreboard players set @s datapack.temp.thecarengine.car.speed 0

function thescarengine:internal/car/friction/wheel_rot

execute unless score @s datapack.temp.thecarengine.car.speed matches 0 unless score @s datapack.temp.thecarengine.car.speed = .current_f datapack.temp.thecarengine.main run function thescarengine:internal/car/friction/vector/main