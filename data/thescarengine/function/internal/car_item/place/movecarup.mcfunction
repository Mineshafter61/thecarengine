execute store result score @s datapack.temp.thecarengine.car.parts.pos_y run data get entity @s Pos[1] 10000
scoreboard players operation @s datapack.temp.thecarengine.car.parts.pos_y += .internal.car_item.place.marker_y datapack.temp.thecarengine.main
scoreboard players add @s datapack.temp.thecarengine.car.parts.pos_y 600
#tellraw @a {"score":{"name":"@s","objective":"datapack.temp.thecarengine.car.parts.pos_y"}}
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.parts.pos_y