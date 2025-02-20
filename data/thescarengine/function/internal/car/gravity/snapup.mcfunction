#by main
#driver

#as @e[tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0,tag=datapack.thescarengine.car.parts.collision] run say a 
scoreboard players operation .current_dv datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.yv
function thescarengine:internal/car/gravity/snaploop
scoreboard players set @s datapack.temp.thecarengine.car.yv 0