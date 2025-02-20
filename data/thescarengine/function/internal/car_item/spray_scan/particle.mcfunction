#ran by data\thescarengine\function\internal\car_item\spray_scan\main.mcfunction

#get full color from spray can
execute store result score .internal.item.spray_can.rgb datapack.temp.thecarengine.main run data get storage thescarengine:temp data.internal.spray_item.used_data.components.'minecraft:dyed_color'.rgb

# RED = (C ÷ 65536) / 256
#this goes unused for sake of consistancy
#execute store result storage thescarengine:temp data.internal.spray_item.rgb.r float 0.000000059838388480392156862745098039215686274509803921568627450980392156862745098039215686274509803921568627450980392156862745098039215686274509803921568627450980392156862745 run scoreboard players get .internal.item.spray_can.rgb datapack.temp.thecarengine.main

# C 
scoreboard players operation .internal.item.spray_can.rgb.r datapack.temp.thecarengine.main = .internal.item.spray_can.rgb datapack.temp.thecarengine.main
# ÷ 65536
scoreboard players operation .internal.item.spray_can.rgb.r datapack.temp.thecarengine.main /= .65536 datapack.temp.thecarengine.const
# set to thing
execute store result storage thescarengine:temp data.internal.spray_item.rgb.r int 1 run scoreboard players get .internal.item.spray_can.rgb.r datapack.temp.thecarengine.main
# / 256
execute store result storage thescarengine:temp data.internal.spray_item.rgb.r float 0.00390625 run data get storage thescarengine:temp data.internal.spray_item.rgb.r 1



#GREEN = (C ÷ 256) % 256
# C 
scoreboard players operation .internal.item.spray_can.rgb.g datapack.temp.thecarengine.main = .internal.item.spray_can.rgb datapack.temp.thecarengine.main
# ÷ 256
scoreboard players operation .internal.item.spray_can.rgb.g datapack.temp.thecarengine.main /= .256 datapack.temp.thecarengine.const
# % 256
scoreboard players operation .internal.item.spray_can.rgb.g datapack.temp.thecarengine.main %= .256 datapack.temp.thecarengine.const
# set to thing
execute store result storage thescarengine:temp data.internal.spray_item.rgb.g int 1 run scoreboard players get .internal.item.spray_can.rgb.g datapack.temp.thecarengine.main
# / 256
execute store result storage thescarengine:temp data.internal.spray_item.rgb.g float 0.00390625 run data get storage thescarengine:temp data.internal.spray_item.rgb.g 1


#BLUE = C % 256
# C 
scoreboard players operation .internal.item.spray_can.rgb.b datapack.temp.thecarengine.main = .internal.item.spray_can.rgb datapack.temp.thecarengine.main
# % 256
scoreboard players operation .internal.item.spray_can.rgb.b datapack.temp.thecarengine.main %= .256 datapack.temp.thecarengine.const
# set to thing
execute store result storage thescarengine:temp data.internal.spray_item.rgb.b int 1 run scoreboard players get .internal.item.spray_can.rgb.b datapack.temp.thecarengine.main
# / 256
execute store result storage thescarengine:temp data.internal.spray_item.rgb.b float 0.00390625 run data get storage thescarengine:temp data.internal.spray_item.rgb.b 1



#convert floats into strings
data modify storage thescarengine:temp data.internal.spray_item.rgb.r set string storage thescarengine:temp data.internal.spray_item.rgb.r 0 -1
data modify storage thescarengine:temp data.internal.spray_item.rgb.g set string storage thescarengine:temp data.internal.spray_item.rgb.g 0 -1
data modify storage thescarengine:temp data.internal.spray_item.rgb.b set string storage thescarengine:temp data.internal.spray_item.rgb.b 0 -1

#run as macro
function thescarengine:internal/car_item/spray_scan/particle_macro with storage thescarengine:temp data.internal.spray_item.rgb

#play sounds
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 1.5

