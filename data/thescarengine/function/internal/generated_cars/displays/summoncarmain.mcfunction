

#say internal summon
scoreboard players add .gobal_id datapack.temp.thecarengine.main 1
tellraw @a[tag=tce.debug] [{"text": "dp > tce > setupsummon > id: ","color": "gray"},{"score": {"name": ".gobal_id","objective": "datapack.temp.thecarengine.main"}}]

function thescarengine:summon/internal/setupsummon
$function thescarengine:cars/$(car_summon_name)/display with storage thescarengine:temp data.temp.macroinput1
