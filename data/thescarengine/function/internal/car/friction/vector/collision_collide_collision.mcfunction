tag @s add self
execute align xyz if entity @e[tag=datapack.thescarengine.car.parts.collision,tag=!self,dx=0,dy=0,dz=0,type=item_display] run scoreboard players set .current_collidecollision datapack.temp.thecarengine.main 1
tag @s remove self