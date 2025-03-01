
#change action bar color
data modify storage thescarengine:temp data.actionbar[4].color set value "#55ff55"

scoreboard players set @s datapack.temp.thecarengine.car.wheel_turning 1

#save old dir
scoreboard players operation .current_dir_old datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.dir


#copy
scoreboard players operation .current_turn datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.speed
#mul
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.turn.mul
scoreboard players operation .current_turn datapack.temp.thecarengine.main *= .current_math0 datapack.temp.thecarengine.main
#div
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.turn.div
scoreboard players operation .current_turn datapack.temp.thecarengine.main /= .current_math0 datapack.temp.thecarengine.main
#str
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.turn.str 10000
scoreboard players operation .current_turn datapack.temp.thecarengine.main += .current_math0 datapack.temp.thecarengine.main
#max
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.turn.max 10000
execute if score .current_turn datapack.temp.thecarengine.main > .current_math0 datapack.temp.thecarengine.main run scoreboard players operation .current_turn datapack.temp.thecarengine.main = .current_math0 datapack.temp.thecarengine.main


#change dir
scoreboard players operation @s datapack.temp.thecarengine.car.dir += .current_turn datapack.temp.thecarengine.main
scoreboard players operation @s datapack.temp.thecarengine.car.dir %= .3600000 datapack.temp.thecarengine.const

execute store result entity @n[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.pivot,type=item_display,x=0] Rotation[0] float 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.dir

#move car to new pos
execute as @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.pivot,type=item_display,limit=1,x=0] at @s run function thescarengine:internal/generated_cars/bones/pivot with storage thescarengine:temp data.current_car

#collision check
scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 1
execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~1 ~ #thescarengine:no_collision run scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 0
scoreboard players set .current_stepup datapack.temp.thecarengine.main 1
execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~ ~ #thescarengine:no_collision run scoreboard players set .current_stepup datapack.temp.thecarengine.main 0

#

execute if score .current_stepupallow datapack.temp.thecarengine.main matches 0 if score .current_stepup datapack.temp.thecarengine.main matches 0 run function thescarengine:internal/car/keypressed/revert_car_rot

#execute if score .rule.player_rotate_with_vehicle datapack.temp.thecarengine.main matches 1 unless score .current_turn datapack.temp.thecarengine.main matches 0 run function thescarengine:internal/car/rot_player/main
#tellraw @a {"score": {"name": ".current_turn","objective": "datapack.temp.thecarengine.main"}}
#scoreboard players operation .current_turn datapack.temp.thecarengine.main *= .-1 datapack.temp.thecarengine.const
#scoreboard players set .current_rotplayer datapack.temp.thecarengine.main 0
#if car rot, also rot player
#execute if score .current_rotplayer datapack.temp.thecarengine.main matches 1 on passengers run function thescarengine:internal/car/rot_player/rotmain
#execute if score .current_rotplayer datapack.temp.thecarengine.main matches 1 run ride @p mount @s

# turn wheels
scoreboard players set @s datapack.temp.thecarengine.car.wheel_turning 1
execute store result score .current_wheel_turn datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.wheel_turn 10000
scoreboard players operation .current_turn_wheel_dir datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.dir
scoreboard players operation .current_turn_wheel_dir datapack.temp.thecarengine.main += .current_wheel_turn datapack.temp.thecarengine.main
execute store result storage thescarengine:temp data.wheels_turn float 0.0001 run scoreboard players get .current_turn_wheel_dir datapack.temp.thecarengine.main
execute as @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.turn_wheel,type=item_display,x=0] on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.wheels_turn