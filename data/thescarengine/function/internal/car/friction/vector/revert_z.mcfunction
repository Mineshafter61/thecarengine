execute store result storage thescarengine:temp data.macro.vec.Z double -0.001 run data get storage thescarengine:temp data.vector.entity_pos[2] 1000
#data modify storage thescarengine:temp data.macro.vec.Z set string storage thescarengine:temp data.macro.vec.Z 0 -1

function thescarengine:internal/car/friction/vector/macro_z with storage thescarengine:temp data.macro.vec

scoreboard players set .current_collideZ datapack.temp.thecarengine.main 1
#scoreboard players operation @s datapack.temp.thecarengine.car.speed += .current_vecZ datapack.temp.thecarengine.main