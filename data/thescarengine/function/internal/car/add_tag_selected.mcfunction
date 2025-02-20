$tag @e[tag=datapack.thescarengine.car.parts,x=0,scores={datapack.temp.thecarengine.car.id=$(ID)}] add datapack.thescarengine.car.parts.selected

#execute store result score .current_id datapack.temp.thecarengine.main run data get storage thescarengine:temp data.temp.macroinput.ID
#execute as @e[tag=datapack.thescarengine.car.parts,x=0] if score @s datapack.temp.thecarengine.car.id = .current_id datapack.temp.thecarengine.main run tag @s add datapack.thescarengine.car.parts.selected