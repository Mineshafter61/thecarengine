#this function called by /trigger



#get data from player's item
data modify storage thescarengine:temp data.internal.car_item.used_data set from entity @s SelectedItem
#let inr = (interaction rage * 2)
execute store result score .internal.car_item.place.player.reach datapack.temp.thecarengine.main run attribute @s minecraft:block_interaction_range get 5
#inr += 2
scoreboard players add .internal.car_item.place.player.reach datapack.temp.thecarengine.main 2

#start raycast

execute as @s at @s anchored eyes run summon marker ^ ^ ^ {Tags:["datapack.thescarengine.place.ray"]}
data modify entity @n[tag=datapack.thescarengine.place.ray] Rotation set from entity @s Rotation
execute as @n[tag=datapack.thescarengine.place.ray] at @s store result score .internal.car_item.place.hit_type datapack.temp.thecarengine.main run function thescarengine:internal/car_item/place/raycast/main

#binary correction
execute as @n[tag=datapack.thescarengine.place.ray] at @s run function thescarengine:internal/car_item/place/raycast/correction

#if too far, stop.
execute if score .internal.car_item.place.hit_type datapack.temp.thecarengine.main matches 0 run return run kill @e[tag=datapack.thescarengine.place.ray]

#summon car at marker
scoreboard players set .internal.car_item.place.dont_remove_tag datapack.temp.thecarengine.main 1
#execute as @n[tag=datapack.thescarengine.place.ray] at @s run function tce:summon/chestler-pickup


#continue

scoreboard players set .internal.summoncarwithnbt datapack.temp.thecarengine.main 1
data modify storage thescarengine:temp data.summoncarwithnbt set from storage thescarengine:temp data.internal.car_item.used_data.components.'minecraft:custom_data'.car_item.car_data

data modify storage thescarengine:temp data.summoncarwithnbt.placed_item set from storage thescarengine:temp data.internal.car_item.used_data

data modify storage thescarengine:temp data.summoncarwithnbt.placed_item.components.'minecraft:custom_data'.car_item.car_data set value {}

execute as @n[tag=datapack.thescarengine.place.ray] at @s run function thescarengine:summon/internal/summondynamic with storage thescarengine:temp data.summoncarwithnbt





#get lowest collision
scoreboard players set .internal.car_item.place.lowest_y datapack.temp.thecarengine.main 0
#store y pos to score
execute as @e[tag=datapack.thescarengine.car.parts.summoned,type=item_display,tag=datapack.thescarengine.car.parts.collision] store result score @s datapack.temp.thecarengine.car.parts.pos_y run data get entity @s Pos[1] 10000
#get lowest y collision
scoreboard players operation .internal.car_item.place.lowest_y datapack.temp.thecarengine.main < @e[tag=datapack.thescarengine.car.parts.summoned,type=item_display,tag=datapack.thescarengine.car.parts.collision] datapack.temp.thecarengine.car.parts.pos_y

execute if score .internal.car_item.place.lowest_y datapack.temp.thecarengine.main matches 0 run scoreboard players operation .internal.car_item.place.lowest_y datapack.temp.thecarengine.main = @n[tag=datapack.thescarengine.car.parts.summoned,type=item_display,tag=datapack.thescarengine.car.parts.collision] datapack.temp.thecarengine.car.parts.pos_y

#get marker height
execute store result score .internal.car_item.place.marker_y datapack.temp.thecarengine.main run data get entity @n[tag=datapack.thescarengine.place.ray] Pos[1] 10000

#kill marker
kill @n[tag=datapack.thescarengine.place.ray]

#get offset
scoreboard players operation .internal.car_item.place.marker_y datapack.temp.thecarengine.main -= .internal.car_item.place.lowest_y datapack.temp.thecarengine.main

#move car up
execute as @e[tag=datapack.thescarengine.car.parts.summoned,type=item_display,x=0] run function thescarengine:internal/car_item/place/movecarup

#collision check
scoreboard players set .internal.car_item.place.collide datapack.temp.thecarengine.main 0
execute as @e[tag=datapack.thescarengine.car.parts.summoned,type=item_display,x=0] at @s unless block ~ ~ ~ #thescarengine:no_collision run scoreboard players set .internal.car_item.place.collide datapack.temp.thecarengine.main 1

#kill car is clip
execute if score .internal.car_item.place.collide datapack.temp.thecarengine.main matches 1 as @e[tag=datapack.thescarengine.car.parts.summoned,type=item_display,x=0] run function thescarengine:internal/car_item/place/killcar

# car collide
execute if score .internal.car_item.place.collide datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/car_item/place/clip
# car collide
execute if score .internal.car_item.place.collide datapack.temp.thecarengine.main matches 0 run function thescarengine:internal/car_item/place/noclip





#remove tags

scoreboard players set .internal.car_item.place.dont_remove_tag datapack.temp.thecarengine.main 0
tag @e[tag=datapack.thescarengine.car.parts.summoned,type=item_display,x=0] remove datapack.thescarengine.car.parts.summoned
