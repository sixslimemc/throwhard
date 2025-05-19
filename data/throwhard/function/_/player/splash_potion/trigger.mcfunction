#> throwhard:_/player/splash_potion/trigger
#--------------------
# _/tick
#--------------------
scoreboard players remove @s _throwhard.splash_potion 1

$execute store success score *x _throwhard run tag @n[type=splash_potion, tag=!_throwhard.thrown, nbt={Owner:$(UUID)}] add _throwhard.throwing
execute if score *x _throwhard matches 0 run return 0

data modify storage throwhardlib:in calculate.force set from storage throwhard:config throw.splash_potion.force
execute if data storage throwhard:config throw.splash_potion{add:true} run data modify storage throwhardlib:in calculate.add append from entity @n[type=splash_potion,tag=_throwhard.throwing] Motion
function throwhardlib:self/calculate

execute as @n[type=splash_potion, tag=_throwhard.throwing] at @s run function throwhard:_/player/splash_potion/apply

execute if score @s _throwhard.splash_potion matches 1.. run function throwhard:_/player/splash_potion/trigger