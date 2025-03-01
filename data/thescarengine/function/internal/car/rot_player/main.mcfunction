#ran from keypress/a and /d







scoreboard players operation .current_oldcarrot datapack.temp.thecarengine.main *= .-1 datapack.temp.thecarengine.const
execute store result storage thescarengine:temp data.rot_player.angle float 0.0001 run scoreboard players get .current_oldcarrot datapack.temp.thecarengine.main
function thescarengine:internal/car/rot_player/macro with storage thescarengine:temp data.rot_player





#tellraw @a {"score": {"name": ".current_turn","objective": "datapack.temp.thecarengine.main"}}

#.current_turn datapack.temp.thecarengine.main