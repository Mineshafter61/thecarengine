
$execute unless entity @n[tag=datapack.thescarengine.car.parts,type=item_display,distance=..$(kill_near_distance)] run return run function thescarengine:messages/kill_near_fail

scoreboard players operation .current_kill_near datapack.temp.thecarengine.main = @n[tag=datapack.thescarengine.car.parts,type=item_display,distance=..10] datapack.temp.thecarengine.car.id
function thescarengine:messages/kill_near_success
execute as @e[tag=datapack.thescarengine.car.parts,type=item_display] if score @s datapack.temp.thecarengine.car.id = .current_kill_near datapack.temp.thecarengine.main on passengers run kill @s[type=!player]
execute as @e[tag=datapack.thescarengine.car.parts,type=item_display] if score @s datapack.temp.thecarengine.car.id = .current_kill_near datapack.temp.thecarengine.main run kill @s[type=!player]