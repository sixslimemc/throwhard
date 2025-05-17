#> throwhard:_/player/item/trigger
#--------------------
# _/tick
#--------------------
scoreboard players remove @s _throwhard.item 1

$execute store success score *x _throwhard run tag @n[type=item, tag=!_throwhard.thrown, nbt={Thrower:$(UUID)}] add _throwhard.throwing
execute if score *x _throwhard matches 0 run return 0

data modify storage throwhardlib:in calculate.force set from storage throwhard:config throw.item.force
execute if data storage throwhard:config throw.item{add:true} run data modify storage throwhardlib:in calculate.add append from entity @n[type=item,tag=_throwhard.throwing] Motion
function throwhardlib:self/calculate

execute as @n[type=item, tag=_throwhard.throwing] at @s run function throwhard:_/player/item/apply

execute if score @s _throwhard.item matches 1.. run function throwhard:_/player/item/trigger