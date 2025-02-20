execute store result storage thescarengine:temp data.macro.vec.X double -0.001 run data get storage thescarengine:temp data.vector.entity_pos[0] 1000
#data modify storage thescarengine:temp data.macro.vec.X set string storage thescarengine:temp data.macro.vec.X 0 -1

function thescarengine:internal/car/friction/vector/macro_x with storage thescarengine:temp data.macro.vec

scoreboard players set .current_collideX datapack.temp.thecarengine.main 1
#scoreboard players operation @s datapack.temp.thecarengine.car.speed += .current_vecX datapack.temp.thecarengine.main