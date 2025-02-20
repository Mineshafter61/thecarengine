execute store result score .current_slide datapack.temp.thecarengine.main run data get storage thescarengine:temp data.vector.entity_pos[0] 1000

scoreboard players operation .current_math0 datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.speed

scoreboard players operation .current_math0 datapack.temp.thecarengine.main /= .current_slide datapack.temp.thecarengine.main

execute if score .current_math0 datapack.temp.thecarengine.main matches ..-1 run scoreboard players operation .current_slide datapack.temp.thecarengine.main *= .-1 datapack.temp.thecarengine.const


scoreboard players operation @s datapack.temp.thecarengine.car.speed -= .current_slide datapack.temp.thecarengine.main