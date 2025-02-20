#ran by main/

# teleport ray forward
execute at @s run tp @s ^ ^ ^.2

# stop if block 
execute at @s unless block ~ ~ ~ air run return 1 

# call itself
scoreboard players remove .internal.car_item.place.player.reach datapack.temp.thecarengine.main 1
execute if score .internal.car_item.place.player.reach datapack.temp.thecarengine.main matches 1.. run return run function thescarengine:internal/car_item/place/raycast/main
return 0