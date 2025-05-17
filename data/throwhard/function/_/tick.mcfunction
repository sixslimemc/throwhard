#> throwhard:_/tick
#--------------------
# @tick
#--------------------
schedule function throwhard:_/tick 1t

execute if data storage throwhard:config throw.snowball{enable:true} as @a[scores={_throwhard.snowball=1..}] at @s run function throwhard:_/player/snowball/trigger with entity @s

execute if data storage throwhard:config throw.item{enable:true} as @a[scores={_throwhard.item=1..}] at @s run function throwhard:_/player/item/trigger with entity @s


execute if data storage throwhard:config throw.fishing_rod{enable:true} as @a[scores={_throwhard.fishing_rod=1..}] at @s run function throwhard:_/player/fishing_rod/trigger with entity @s