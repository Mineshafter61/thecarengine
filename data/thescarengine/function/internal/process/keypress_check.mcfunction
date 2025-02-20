execute at @s store result entity @s Pos[0] double 0.001 run data get entity @p Motion[0] 50000
execute at @s store result entity @s Pos[2] double 0.001 run data get entity @p Motion[2] 50000
execute at @s facing 0.0 ~ 0.0 run tp @s ~ 0 ~ ~180 ~

#if one of key is pressed
execute unless entity @s[x=0,y=0,z=0,distance=..0.00000001] run function thescarengine:internal/process/keypressed
execute if entity @s[x=0,y=0,z=0,distance=..0.00000001] run function thescarengine:internal/process/reset_key
kill @s

