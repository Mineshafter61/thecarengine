$data modify entity @s item set from storage thescarengine:temp data.config.input.player_item.'$(uuid)'
$execute if data storage thescarengine:temp data.config.input.player_item.'$(uuid)' run item replace entity @p[tag=self] container.$(slot) from entity @s container.0
$data remove storage thescarengine:temp data.config.input.player_item.'$(uuid)'
kill @s