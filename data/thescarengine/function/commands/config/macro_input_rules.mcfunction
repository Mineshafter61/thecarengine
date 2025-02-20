#$say $(id) $(display)




$tellraw @s [{"text":"$(display)","color":"#A6FDFD","hoverEvent":{"action":"show_text","contents":{"text":"$(info)"}}},{"storage":"thescarengine:temp","nbt":"p.rules.$(id)","color":"dark_aqua","underlined":true,"clickEvent":{"action":"run_command","value":"/function thescarengine:commands/config/chattrigger/$(id)/set"}}]







#$tellraw @s [{"text":"$(display)","color":"#A6FDFD"},{"text":"\u00a73\u00a7ntrue\u00a7r \u00a77false"}]