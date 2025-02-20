#REACTED



execute store result score .current_playerrot datapack.temp.thecarengine.main run data get entity @s Rotation[0] 10000
scoreboard players operation .current_playerrot datapack.temp.thecarengine.main -= .current_turn datapack.temp.thecarengine.main
execute store result entity 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 Rotation[0] float 0.0001 run scoreboard players get .current_playerrot datapack.temp.thecarengine.main
data modify entity 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 Rotation[1] set from entity @s Rotation[1]
ride @s dismount
execute at @s rotated as 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 run tp @s ~ ~ ~ ~ ~