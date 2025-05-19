#> throwhard:_/player/egg/trigger
#--------------------
# _/tick
#--------------------
scoreboard players set *x _throwhard 0
execute if score @s _throwhard.egg matches 1.. store success score *x _throwhard run scoreboard players remove @s _throwhard.egg 1
execute if score @s _throwhard.blue_egg matches 1.. unless score *x _throwhard matches 1 store success score *x _throwhard run scoreboard players remove @s _throwhard.blue_egg 1
execute if score @s _throwhard.brown_egg matches 1.. unless score *x _throwhard matches 1 store success score *x _throwhard run scoreboard players remove @s _throwhard.brown_egg 1

$execute store success score *x _throwhard run tag @n[type=egg, tag=!_throwhard.thrown, nbt={Owner:$(UUID)}] add _throwhard.throwing
execute if score *x _throwhard matches 0 run return 0

data modify storage throwhardlib:in calculate.force set from storage throwhard:config throw.egg.force
execute if data storage throwhard:config throw.egg{add:true} run data modify storage throwhardlib:in calculate.add append from entity @n[type=egg,tag=_throwhard.throwing] Motion
function throwhardlib:self/calculate

execute as @n[type=egg, tag=_throwhard.throwing] at @s run function throwhard:_/player/egg/apply

execute if score @s _throwhard.egg matches 1.. run function throwhard:_/player/egg/trigger