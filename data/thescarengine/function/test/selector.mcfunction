scoreboard objectives add test dummy
scoreboard players remove loop test 1
#execute as @e[team=datapack.thescarengine.temp.car.id.1231230020,tag=select] run setblock -8 0 -16 air
execute if score loop test matches 1.. run function thescarengine:test/selector
