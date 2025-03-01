tellraw @a[tag=tce.debug] [{"text":"dp > tce > gravity > killed out of world > ","color": "gray"},{"score": {"name": "@s","objective": "datapack.temp.thecarengine.car.id"}}]

execute as @e[tag=datapack.thescarengine.car.parts.selected] on passengers run kill @s[type=!player]
kill @e[tag=datapack.thescarengine.car.parts.selected]