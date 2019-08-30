# 経験値からレベルを算出し、レベルが上がった際に経験値を0に戻す
execute as @a[scores={job.no=2}] run scoreboard players operation @s tmp.exp = @s job.cultist.lvl
execute as @a[scores={job.no=2}] run scoreboard players operation @s tmp.exp *= Integer 100
execute as @a[scores={job.no=2}] run execute if score @s job.cultist.exp >= @s tmp.exp run scoreboard players add @s job.cultist.lvl 1
execute as @a[scores={job.no=2}] run execute if score @s job.cultist.exp >= @s tmp.exp run scoreboard players set @s job.cultist.exp 0