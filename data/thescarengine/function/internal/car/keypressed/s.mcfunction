#this function is called by load_entity_selected


#change action bar color
data modify storage thescarengine:temp data.actionbar[3].color set value "#55ff55"

scoreboard players set @s datapack.temp.thecarengine.car.gear -2
execute if score @s datapack.temp.thecarengine.car.speed matches 1.. run scoreboard players set @s datapack.temp.thecarengine.car.gear 1

# use backward accel if car already moving backward
execute if score @s datapack.temp.thecarengine.car.speed matches ..0 store result score .current_accel datapack.temp.thecarengine.main run function thescarengine:internal/car/keypressed/accel/backward
# use backward brake brake if car are moving forward
execute if score @s datapack.temp.thecarengine.car.speed matches 1.. store result score .current_accel datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.forward_brake -10000
#save old speed
scoreboard players operation .current_speed_old datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.speed
# add speed to main vector
scoreboard players operation @s datapack.temp.thecarengine.car.speed += .current_accel datapack.temp.thecarengine.main
#gear check
scoreboard players operation .current_speed_old datapack.temp.thecarengine.main /= @s datapack.temp.thecarengine.car.speed
execute if score .current_speed_old datapack.temp.thecarengine.main matches ..-1 run scoreboard players set @s datapack.temp.thecarengine.car.speed 0
#gear switch delay
execute if score .current_speed_old datapack.temp.thecarengine.main matches ..-1 unless score @s datapack.temp.thecarengine.car.gear matches ..-1 run scoreboard players set @s datapack.temp.thecarengine.car.gear_timer 10
# cap speed
function thescarengine:internal/car/keypressed/cap_speed