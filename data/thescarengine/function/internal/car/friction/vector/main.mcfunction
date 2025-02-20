

execute store result entity 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 Rotation[0] float 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.dir
tp 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 0.0 0.0 0.0

execute store result storage thescarengine:temp data.forward_vec.speed double 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.speed

function thescarengine:internal/car/friction/vector/teleforward with storage thescarengine:temp data.forward_vec
data modify storage thescarengine:temp data.vector.entity_pos set from entity 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 Pos





#try move X
execute store result storage thescarengine:temp data.macro.vec.X double 0.001 run data get storage thescarengine:temp data.vector.entity_pos[0] 1000
execute store result score .current_vecX datapack.temp.thecarengine.main run data get storage thescarengine:temp data.vector.entity_pos[0] 1000
#data modify storage thescarengine:temp data.macro.vec.X set string storage thescarengine:temp data.macro.vec.X 0 -1

#get step size and steps
scoreboard players operation .current_vecXsteps datapack.temp.thecarengine.main = .current_vecX datapack.temp.thecarengine.main
execute if score .current_vecXsteps datapack.temp.thecarengine.main matches ..-1 run scoreboard players operation .current_vecXsteps datapack.temp.thecarengine.main *= .-1 datapack.temp.thecarengine.const
scoreboard players operation .current_vecXsteps datapack.temp.thecarengine.main /= .1000 datapack.temp.thecarengine.const
scoreboard players add .current_vecXsteps datapack.temp.thecarengine.main 1
scoreboard players operation .current_vecXstepSize datapack.temp.thecarengine.main = .current_vecX datapack.temp.thecarengine.main
scoreboard players operation .current_vecXstepSize datapack.temp.thecarengine.main /= .current_vecXsteps datapack.temp.thecarengine.main

execute store result storage thescarengine:temp data.macro.vec.X double 0.001 run scoreboard players get .current_vecXstepSize datapack.temp.thecarengine.main

#ran steps
function thescarengine:internal/car/friction/vector/steps_x








#function thescarengine:internal/car/friction/vector/macro_x with storage thescarengine:temp data.macro.vec

#scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 1
#execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~1 ~ #thescarengine:no_collision run scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 0
#scoreboard players set .current_stepup datapack.temp.thecarengine.main 1
#execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~ ~ #thescarengine:no_collision run scoreboard players set .current_stepup datapack.temp.thecarengine.main 0


#scoreboard players set .current_collideX datapack.temp.thecarengine.main 0
#execute if score .current_stepupallow datapack.temp.thecarengine.main matches 0 if score .current_stepup datapack.temp.thecarengine.main matches 0 run function thescarengine:internal/car/friction/vector/revert_x










#try move Z
execute store result storage thescarengine:temp data.macro.vec.Z double 0.001 run data get storage thescarengine:temp data.vector.entity_pos[2] 1000
execute store result score .current_vecZ datapack.temp.thecarengine.main run data get storage thescarengine:temp data.vector.entity_pos[2] 1000
#data modify storage thescarengine:temp data.macro.vec.Z set string storage thescarengine:temp data.macro.vec.Z 0 -1

scoreboard players operation .current_vecZsteps datapack.temp.thecarengine.main = .current_vecZ datapack.temp.thecarengine.main
execute if score .current_vecZsteps datapack.temp.thecarengine.main matches ..-1 run scoreboard players operation .current_vecZsteps datapack.temp.thecarengine.main *= .-1 datapack.temp.thecarengine.const
scoreboard players operation .current_vecZsteps datapack.temp.thecarengine.main /= .1000 datapack.temp.thecarengine.const
scoreboard players add .current_vecZsteps datapack.temp.thecarengine.main 1
scoreboard players operation .current_vecZstepSize datapack.temp.thecarengine.main = .current_vecZ datapack.temp.thecarengine.main
scoreboard players operation .current_vecZstepSize datapack.temp.thecarengine.main /= .current_vecZsteps datapack.temp.thecarengine.main




execute store result storage thescarengine:temp data.macro.vec.Z double 0.001 run scoreboard players get .current_vecZstepSize datapack.temp.thecarengine.main

#ran steps
function thescarengine:internal/car/friction/vector/steps_z
















#function thescarengine:internal/car/friction/vector/macro_z with storage thescarengine:temp data.macro.vec

#scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 1
#execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~1 ~ #thescarengine:no_collision run scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 0
#scoreboard players set .current_stepup datapack.temp.thecarengine.main 1
#execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~ ~ #thescarengine:no_collision run scoreboard players set .current_stepup datapack.temp.thecarengine.main 0

#scoreboard players set .current_collideZ datapack.temp.thecarengine.main 0
#execute if score .current_stepupallow datapack.temp.thecarengine.main matches 0 if score .current_stepup datapack.temp.thecarengine.main matches 0 run function thescarengine:internal/car/friction/vector/revert_z






#stuck in conner
execute if score .current_collideX datapack.temp.thecarengine.main matches 1 if score .current_collideZ datapack.temp.thecarengine.main matches 1 run scoreboard players set @s datapack.temp.thecarengine.car.speed 0
execute if score .current_collideX datapack.temp.thecarengine.main matches 1 if score .current_collideZ datapack.temp.thecarengine.main matches 0 run function thescarengine:internal/car/friction/vector/slide_x
execute if score .current_collideX datapack.temp.thecarengine.main matches 0 if score .current_collideZ datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/car/friction/vector/slide_z


scoreboard players set .current_stepup datapack.temp.thecarengine.main 0
execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~ ~ #thescarengine:no_collision run scoreboard players set .current_stepup datapack.temp.thecarengine.main 1
execute if score .current_stepup datapack.temp.thecarengine.main matches 1 as @e[tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] run function thescarengine:internal/car/friction/vector/stepup1b

