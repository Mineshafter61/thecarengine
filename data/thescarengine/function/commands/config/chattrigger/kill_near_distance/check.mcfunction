$execute if entity @s[distance=..$(raw)]
scoreboard players set .internal.config.temp1.is_success datapack.temp.thecarengine.main 1
data modify storage thescarengine:temp p.rules.kill_near_distance set from storage thescarengine:temp data.config.input.content.pages[0].raw