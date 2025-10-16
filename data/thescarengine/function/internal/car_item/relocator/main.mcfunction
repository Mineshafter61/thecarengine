#ran by triggered


#
#execute as @e[type=interaction,x=0] run scoreboard players reset @s datapack.temp.thecarengine.item.relocator.interaction
#execute as @e[type=interaction,x=0] if predicate {condition:minecraft:entity_properties,entity:this,predicate:{vehicle:{nbt:{Tags:["datapack.thescarengine.car.parts"]}}}} if data entity @s interaction store result score @s datapack.temp.thecarengine.item.relocator.interaction on target if predicate {condition:minecraft:entity_properties,entity:this,predicate:{type:minecraft:player,slots:{weapon.mainhand:{predicates:{minecraft:custom_data:{thescarengine:"relocator"}}}}}}

execute store result storage thescarengine:temp data.item.relocator.macro.gametime long 1 run time query gametime
data modify storage thescarengine:temp data.item.relocator.macro.playeruuid set from entity @s UUID
function thescarengine:internal/car_item/relocator/interacted_interaction with storage thescarengine:temp data.item.relocator.macro
data remove storage thescarengine:temp data.item.relocator
