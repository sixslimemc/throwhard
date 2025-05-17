#> throwhard:_/player/snowball/trigger
#--------------------
# _/tick
#--------------------
scoreboard players remove @s _throwhard.snowball 1

$execute store success score *x _throwhard run tag @n[type=snowball, tag=!_throwhard.thrown, nbt={Owner:$(UUID)}] add _throwhard.throwing
execute if score *x _throwhard matches 0 run return 0

data modify storage throwhardlib:in calculate.force set from storage throwhard:config throw.snowball.force
execute if data storage throwhard:config throw.snowball{add:true} run data modify storage throwhardlib:in calculate.add append from entity @n[type=snowball,tag=_throwhard.throwing] Motion
function throwhardlib:self/calculate

execute as @n[type=snowball, tag=_throwhard.throwing] at @s run function throwhard:_/player/snowball/apply

execute if score @s _throwhard.snowball matches 1.. run function throwhard:_/player/snowball/trigger