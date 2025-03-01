




scoreboard players operation .current_wheelrot datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.speed
#mul
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.wheel_rot.mul
scoreboard players operation .current_wheelrot datapack.temp.thecarengine.main *= .current_math0 datapack.temp.thecarengine.main
#div
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.wheel_rot.div
scoreboard players operation .current_wheelrot datapack.temp.thecarengine.main /= .current_math0 datapack.temp.thecarengine.main

scoreboard players operation @s datapack.temp.thecarengine.car.wheel_rot += .current_wheelrot datapack.temp.thecarengine.main
#360 warp around
scoreboard players operation @s datapack.temp.thecarengine.car.wheel_rot %= .3600000 datapack.temp.thecarengine.const


#1.0.1
scoreboard players operation @s datapack.temp.thecarengine.car.wheel_pitch += .current_wheelrot datapack.temp.thecarengine.main
execute store result score .current_flipwheel datapack.temp.thecarengine.main unless score @s datapack.temp.thecarengine.car.wheel_pitch matches -900000..900000
execute unless score @s datapack.temp.thecarengine.car.wheel_pitch matches -900000.. run scoreboard players add @s datapack.temp.thecarengine.car.wheel_pitch 1800000
execute unless score @s datapack.temp.thecarengine.car.wheel_pitch matches ..900000 run scoreboard players remove @s datapack.temp.thecarengine.car.wheel_pitch 1800000
execute store result storage thescarengine:temp data.wheel_rot float 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.wheel_pitch
#function thescarengine:internal/car/friction/wheel_rotflip





execute as @e[tag=datapack.thescarengine.car.parts.wheel,tag=datapack.thescarengine.car.parts.selected,x=0,type=item_display] run function thescarengine:internal/car/friction/wheel_rotflip
#execute if score .current_flipwheel datapack.temp.thecarengine.main matches 1 as @p run function thescarengine:internal/car/friction/subtick_start