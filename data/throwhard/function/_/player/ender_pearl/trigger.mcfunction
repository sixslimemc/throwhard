#> throwhard:_/player/ender_pearl/trigger
#--------------------
# _/tick
#--------------------
scoreboard players remove @s _throwhard.ender_pearl 1

$execute store success score *x _throwhard run tag @n[type=ender_pearl, tag=!_throwhard.thrown, nbt={Owner:$(UUID)}] add _throwhard.throwing
execute if score *x _throwhard matches 0 run return 0

data modify storage throwhardlib:in calculate.force set from storage throwhard:config throw.ender_pearl.force
execute if data storage throwhard:config throw.ender_pearl{add:true} run data modify storage throwhardlib:in calculate.add append from entity @n[type=ender_pearl,tag=_throwhard.throwing] Motion
function throwhardlib:self/calculate

execute as @n[type=ender_pearl, tag=_throwhard.throwing] at @s run function throwhard:_/player/ender_pearl/apply

execute if score @s _throwhard.ender_pearl matches 1.. run function throwhard:_/player/ender_pearl/trigger