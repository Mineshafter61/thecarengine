#this function ran by w/this

#car_accel = max((friction + (max_vel - current_vel)) / forward_accel.div),forward_accel.max)
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.min_vel 10000



scoreboard players operation .current_math0 datapack.temp.thecarengine.main -= @s datapack.temp.thecarengine.car.speed

execute store result score .current_math1 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.backward_accel.div


scoreboard players operation .current_math0 datapack.temp.thecarengine.main /= .current_math1 datapack.temp.thecarengine.main


execute store result score .current_math1 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.friction -10000

scoreboard players remove .current_math0 datapack.temp.thecarengine.main 1

scoreboard players operation .current_math0 datapack.temp.thecarengine.main += .current_math1 datapack.temp.thecarengine.main

#scoreboard players operation .current_accel datapack.temp.thecarengine.main *= .-1 datapack.temp.thecarengine.const

scoreboard players operation .current_accel datapack.temp.thecarengine.main = .current_math0 datapack.temp.thecarengine.main



#tellraw @a {"score":{"name":".current_accel","objective":"datapack.temp.thecarengine.main"}}
