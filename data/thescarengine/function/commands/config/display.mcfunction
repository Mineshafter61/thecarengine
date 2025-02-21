tellraw @s ["",{"text":"---------------[","color":"gray"},{"text":" T","color":"#01BABA"},{"text":"C","color":"#54DCDC"},{"text":"E ","color":"#A6FDFD"},{"text":"]---------------","color":"gray"},{"text":""}]

data modify storage thescarengine:temp data.config.in.booltype set value {id:"drop_car_item_to_inventory",display:"  dropCarItemToInventory    ",info:"If true, vehicle item from Relocator will be put in player's inventory."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.booltype set value {id:"allow_relocator_while_riding",display:"  allowRelocatorWhileRiding    ",info:"If true, the Relocator can be used even if a player is riding the vehicle."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.booltype set value {id:"tce_disable_confirmation",display:"  tceDisableConfirmation       ",info:"If true, the /function tce:off command will require confirmation before executing."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

#data modify storage thescarengine:temp data.config.in.booltype set value {id:"use_dynamic_collision_check",display:"  useDynamicCollisionCheck    ",info:"This setting cannot be changed and will be removed in a future update."}
#function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.booltype set value {id:"player_rotate_with_vehicle",display:"  playerRotateWithVehicle      ",info:"[experimental, buggy, laggy] If true, player's rotation will rotate with the vehicle."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.booltype set value {id:"collision_collide_collision",display:"  collisionCollideCollision       ",info:"[experimental, buggy, laggy] If true, collision acts like soild block to other collision."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.input set value {id:"kill_near_distance",display:"  killNearDistance                ",info:"Distance of /function tce:kill/near (blocks)"}
function thescarengine:commands/config/macro_input_rules with storage thescarengine:temp data.config.in.input

data modify storage thescarengine:temp data.config.in.input set value {id:"unload_vehicle_after_ticks",display:"  unloadVehicleAfterTicks      ",info:"Amount of ticks before vehicle unload after no inputs"}
function thescarengine:commands/config/macro_input_rules with storage thescarengine:temp data.config.in.input

data modify storage thescarengine:temp data.config.in.input set value {id:"snap_vehicle_rotation_range",display:"  snapVehicleRotationRange   ",info:"A positive range in degrees, defaulting to 0. Recommended not to exceed 45. When set, the vehicle will attempt to snap its rotation to the nearest right angle (0°, 90°, 180°, or 270°)."}
function thescarengine:commands/config/macro_input_rules with storage thescarengine:temp data.config.in.input


tellraw @s [{"text":""},{"text":"------------------------------------","color":"gray"}]
