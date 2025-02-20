#check if any key pressed
#execute summon marker run function thescarengine:internal/process/keypress_check


execute store result entity 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 Pos[0] double 0.001 run data get entity @s Motion[0] 50000
execute store result entity 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 Pos[2] double 0.001 run data get entity @s Motion[2] 50000


execute as 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 at @s facing 0.0 ~ 0.0 run tp @s ~ 0 ~ ~180 ~

scoreboard players set .current_keypressed datapack.temp.thecarengine.main 0

execute as 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 unless entity @s[x=0,y=0,z=0,distance=..0.00000001] run scoreboard players set .current_keypressed datapack.temp.thecarengine.main 1

execute if score .current_keypressed datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/process/keypressed