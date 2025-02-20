#called from main.mcfunction


#get current y
execute store result score @s datapack.temp.thecarengine.car.parts.pos_y run data get entity @s Pos[1] 10000
#subtrack g from dv
scoreboard players operation @s datapack.temp.thecarengine.car.parts.pos_y += .current_dv datapack.temp.thecarengine.main
#merge data back
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.parts.pos_y
#clear memory


execute as @s[tag=datapack.thescarengine.car.parts.collision] at @s unless block ~ ~-0.06 ~ #thescarengine:no_collision run scoreboard players set .current_collideY datapack.temp.thecarengine.main 1