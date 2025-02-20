execute store result score @s datapack.temp.thecarengine.car.parts.pos_y run data get entity @s Pos[1] 10000
#subtrack g from dv
scoreboard players add @s datapack.temp.thecarengine.car.parts.pos_y 10000
#merge data back
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.parts.pos_y