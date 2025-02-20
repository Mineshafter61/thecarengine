#$say $(id) $(display)



$execute if data storage thescarengine:temp {p:{rules:{$(id):0}}} run tellraw @s [{"text":"$(display)","color":"#A6FDFD","hoverEvent":{"action":"show_text","contents":{"text":"$(info)"}}},{"text":"true","color":"gray","clickEvent":{"action":"run_command","value":"/function thescarengine:commands/config/chattrigger/$(id)/1"}},{"text":" "},{"text":"false","color":"dark_aqua","underlined":true}]

$execute if data storage thescarengine:temp {p:{rules:{$(id):1}}} run tellraw @s [{"text":"$(display)","color":"#A6FDFD","hoverEvent":{"action":"show_text","contents":{"text":"$(info)"}}},{"text":"true","color":"dark_aqua","underlined":true},{"text":" "},{"text":"false","color":"gray","clickEvent":{"action":"run_command","value":"/function thescarengine:commands/config/chattrigger/$(id)/0"}}]








#$tellraw @s [{"text":"$(display)","color":"#A6FDFD"},{"text":"\u00a73\u00a7ntrue\u00a7r \u00a77false"}]