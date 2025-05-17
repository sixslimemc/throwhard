#> throwhard:_/player/fishing_rod/trigger
#--------------------
# _/tick
#--------------------
scoreboard players remove @s _throwhard.fishing_rod 1

tag @s add _throwhard.thrower
scoreboard players reset *found _throwhard
execute as @n[type=fishing_bobber, tag=!_throwhard.checked] at @s run function throwhard:_/player/fishing_rod/find
tag @s remove _throwhard.thrower
execute unless score *found _throwhard matches 1 run return 0

data modify storage throwhardlib:in calculate.force set from storage throwhard:config throw.fishing_rod.force
execute if data storage throwhard:config throw.fishing_rod{add:true} run data modify storage throwhardlib:in calculate.add append from entity @n[type=fishing_bobber,tag=_throwhard.throwing] Motion
function throwhardlib:self/calculate

execute as @n[type=fishing_bobber, tag=_throwhard.throwing] at @s run function throwhard:_/player/fishing_rod/apply

execute if score @s _throwhard.fishing_rod matches 1.. run function throwhard:_/player/fishing_rod/trigger