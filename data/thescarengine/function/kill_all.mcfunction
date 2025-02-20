execute store result score .info_pivotcount datapack.temp.thecarengine.main if entity @e[tag=datapack.thescarengine.car.parts.pivot]

function thescarengine:messages/kill_all

execute as @e[tag=datapack.thescarengine.car.parts] on passengers run kill @s[type=!player]
kill @e[tag=datapack.thescarengine.car.parts]

