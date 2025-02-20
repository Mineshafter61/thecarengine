#$say $(uuid) $(item)
$execute if items entity @s weapon.mainhand * run data modify storage thescarengine:temp data.config.input.player_item.'$(uuid)' set value $(item)