#> throwhard:_/tick
#--------------------
# @tick
#--------------------
schedule function throwhard:_/tick 1t

execute if data storage throwhard:config throw.snowball{enable:true} as @a[scores={_throwhard.snowball=1..}] at @s run function throwhard:_/player/snowball/trigger with entity @s

execute if data storage throwhard:config throw.item{enable:true} as @a[scores={_throwhard.item=1..}] at @s run function throwhard:_/player/item/trigger with entity @s

execute if data storage throwhard:config throw.fishing_rod{enable:true} as @a[scores={_throwhard.fishing_rod=1..}] at @s run function throwhard:_/player/fishing_rod/trigger with entity @s

execute if data storage throwhard:config throw.ender_pearl{enable:true} as @a[scores={_throwhard.ender_pearl=1..}] at @s run function throwhard:_/player/ender_pearl/trigger with entity @s

execute if data storage throwhard:config throw.splash_potion{enable:true} as @a[scores={_throwhard.splash_potion=1..}] at @s run function throwhard:_/player/splash_potion/trigger with entity @s

execute if data storage throwhard:config throw.lingering_potion{enable:true} as @a[scores={_throwhard.lingering_potion=1..}] at @s run function throwhard:_/player/lingering_potion/trigger with entity @s
