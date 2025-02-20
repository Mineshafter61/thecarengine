#ran from keypress/a and /d


execute on vehicle run tag @s add datapack.thescarengine.car.parts.temp.player_riding

execute store result score .current_playerrot datapack.temp.thecarengine.main run data get entity @s Rotation[0] 10000
scoreboard players operation .current_playerrot datapack.temp.thecarengine.main -= .current_turn datapack.temp.thecarengine.main
execute store result entity 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 Rotation[0] float 0.0001 run scoreboard players get .current_playerrot datapack.temp.thecarengine.main
data modify entity 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 Rotation[1] set from entity @s Rotation[1]
ride @s dismount
execute at @s rotated as 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 run tp @s ~ ~ ~ ~ ~
execute at @s positioned ~-.5 ~-.5 ~-.5 run ride @s mount @n[tag=datapack.thescarengine.car.parts.temp.player_riding,dx=0,dy=0,dz=0,type=item_display]
execute on vehicle run tag @s remove datapack.thescarengine.car.parts.temp.player_riding







#tellraw @a {"score": {"name": ".current_turn","objective": "datapack.temp.thecarengine.main"}}

#.current_turn datapack.temp.thecarengine.main