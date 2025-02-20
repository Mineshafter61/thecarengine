function thescarengine:internal/car/friction/vector/macro_z with storage thescarengine:temp data.macro.vec

scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 1
execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~1 ~ #thescarengine:no_collision run scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 0
scoreboard players set .current_stepup datapack.temp.thecarengine.main 1
execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~ ~ #thescarengine:no_collision run scoreboard players set .current_stepup datapack.temp.thecarengine.main 0


scoreboard players set .current_collideZ datapack.temp.thecarengine.main 0
execute if score .current_stepupallow datapack.temp.thecarengine.main matches 0 if score .current_stepup datapack.temp.thecarengine.main matches 0 run return run function thescarengine:internal/car/friction/vector/revert_z

#rule thing
#scoreboard players set .current_collidecollision datapack.temp.thecarengine.main 0
#execute if score .rule.collision_collide_collision datapack.temp.thecarengine.main matches 1 as @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] at @s run function thescarengine:internal/car/friction/vector/collision_collide_collision
#execute if score .current_collidecollision datapack.temp.thecarengine.main matches 1 run return run function thescarengine:internal/car/friction/vector/revert_z


scoreboard players remove .current_vecZsteps datapack.temp.thecarengine.main 1
execute if score .current_vecZsteps datapack.temp.thecarengine.main matches 1.. run function thescarengine:internal/car/friction/vector/steps_z