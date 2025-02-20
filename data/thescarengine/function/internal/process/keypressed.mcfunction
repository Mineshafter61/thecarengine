#this function ran by keypress_check, and only then one of key is held.


#get marker dir
execute as 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 store result score @s datapack.temp.thecarengine.keypress.dir run data get entity @s Rotation[0]
#get player dir
execute store result score @s datapack.temp.thecarengine.keypress.dir run data get entity @s Rotation[0]




scoreboard players operation 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 datapack.temp.thecarengine.keypress.dir -= @s datapack.temp.thecarengine.keypress.dir
scoreboard players operation 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 datapack.temp.thecarengine.keypress.dir %= .360 datapack.temp.thecarengine.const



#key D
execute store result score .keyD datapack.temp.thecarengine.main if score 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 datapack.temp.thecarengine.keypress.dir matches 23..157
#key S
execute store result score .keyS datapack.temp.thecarengine.main if score 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 datapack.temp.thecarengine.keypress.dir matches 112..248
#key A
execute store result score .keyA datapack.temp.thecarengine.main if score 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 datapack.temp.thecarengine.keypress.dir matches 203..337
#key W
scoreboard players set .keyW datapack.temp.thecarengine.main 0
execute if score 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 datapack.temp.thecarengine.keypress.dir matches 293..360 run scoreboard players set .keyW datapack.temp.thecarengine.main 1
execute if score 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 datapack.temp.thecarengine.keypress.dir matches 0..67 run scoreboard players set .keyW datapack.temp.thecarengine.main 1