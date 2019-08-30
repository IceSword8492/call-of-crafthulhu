# プレイヤーの初期化
execute as @a[scores={init=0}] run scoreboard players set @s tutorial_level 0
execute as @a[scores={init=0}] run scoreboard players set @s mission.id 1
execute as @a[scores={init=0}] run scoreboard players set @s init 1