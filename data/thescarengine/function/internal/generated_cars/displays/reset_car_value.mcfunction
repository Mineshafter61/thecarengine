scoreboard players set @s datapack.temp.thecarengine.car.speed 0
scoreboard players set @s datapack.temp.thecarengine.car.wheel_rot 0
scoreboard players set @s datapack.temp.thecarengine.car.wheel_pitch 0
scoreboard players set @s datapack.temp.thecarengine.car.yv 0
scoreboard players set @s datapack.temp.thecarengine.car.gear 0
scoreboard players set @s datapack.temp.thecarengine.car.gear_timer 0
scoreboard players set @s datapack.temp.thecarengine.car.loaded 100
scoreboard players set @s datapack.temp.thecarengine.car.isspeedwheel 0


scoreboard players set @s datapack.temp.thecarengine.car.dir 0
#execute store result score @s datapack.temp.thecarengine.car.dir run data get entity @p[distance=..0.1] Rotation[0] 10000
scoreboard players operation @s datapack.temp.thecarengine.car.dir = .API_spawn.dir datapack.temp.thecarengine.main
function thescarengine:internal/generated_cars/bones/update

