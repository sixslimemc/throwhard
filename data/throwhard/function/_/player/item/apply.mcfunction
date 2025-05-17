#> throwhard:_/player/item/apply
#--------------------
# ./trigger
#--------------------

data modify entity @s Motion set from storage throwhardlib:out calculate.result
tag @s remove _throwhard.throwing
tag @s add _throwhard.thrown

# RETURN : if not fast_pickup
execute unless data storage throwhard:config throw.item{fast_pickup:true} run return 1

data modify storage six:in magnitude.vector set from storage throwhardlib:out calculate.result
function six:vector/magnitude

scoreboard players set *x _throwhard 20
execute store result score *y _throwhard run data get storage six:out magnitude.result 15
scoreboard players operation *x _throwhard -= *y _throwhard
execute if score *x _throwhard matches ..2 run scoreboard players set *x _throwhard 3

execute store result entity @s PickupDelay short 1 run scoreboard players get *x _throwhard
