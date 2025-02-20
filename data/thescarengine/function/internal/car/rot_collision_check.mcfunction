scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 1
execute at @s unless block ~ ~1 ~ #thescarengine:no_collision run scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 0
scoreboard players set .current_stepup datapack.temp.thecarengine.main 1
execute at @s unless block ~ ~ ~ #thescarengine:no_collision run scoreboard players set .current_stepup datapack.temp.thecarengine.main 0
