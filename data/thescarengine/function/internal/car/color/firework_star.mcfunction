#run by data\thescarengine\function\internal\car\color\passengers.mcfunction
#firework star case

data modify storage thescarengine:temp data.color.temp.mergefireworkstar set value {components:{'minecraft:firework_explosion':{colors:[I;0],shape:"small_ball"}}}

data modify storage thescarengine:temp data.color.temp.mergefireworkstar.components."minecraft:firework_explosion".colors[0] set from storage thescarengine:temp data.color.macro2.part.color

data modify entity @s item merge from storage thescarengine:temp data.color.temp.mergefireworkstar
