
#if datapack is disblae, and trying to get item, error
execute unless data storage thescarengine:temp {ON:1} run return run function thescarengine:messages/cmd_give_car_fails_disable


tag @s add datapack.temp.thecarengine.item.relocator.using
scoreboard players set .internal.car_item.place.dont_remove_tag datapack.temp.thecarengine.main 1

scoreboard players set .internal.car_item.notsummonshowgive datapack.temp.thecarengine.main 1
$execute at @s run function thescarengine:cars/$(car_summon_name)/summon
scoreboard players set .internal.car_item.notsummonshowgive datapack.temp.thecarengine.main 0

scoreboard players set .internal.car_item.place.dont_remove_tag datapack.temp.thecarengine.main 0

#id thing
scoreboard players operation .internal.item.relocator.car_id datapack.temp.thecarengine.main = .gobal_id datapack.temp.thecarengine.main
scoreboard players remove .gobal_id datapack.temp.thecarengine.main 1



execute at @s run summon interaction ~ ~ ~ {Tags:["datapack.thescarengine.item.car_item.give.interaction_temp"]}
#save gamerule
scoreboard players operation internal.car_item.give.rule.drop_car_item_to_inventory.og datapack.temp.thecarengine.main = .rule.drop_car_item_to_inventory datapack.temp.thecarengine.main
scoreboard players set .rule.drop_car_item_to_inventory datapack.temp.thecarengine.main 1
execute as @e[tag=datapack.thescarengine.item.car_item.give.interaction_temp,x=0,type=interaction] run function thescarengine:internal/car_item/relocator/asinteraction
scoreboard players operation .rule.drop_car_item_to_inventory datapack.temp.thecarengine.main = internal.car_item.give.rule.drop_car_item_to_inventory.og datapack.temp.thecarengine.main
kill @e[tag=datapack.thescarengine.item.car_item.give.interaction_temp,x=0,type=minecraft:interaction,limit=1]

tag @s remove datapack.temp.thecarengine.item.relocator.using
