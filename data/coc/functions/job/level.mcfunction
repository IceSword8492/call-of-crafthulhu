# 現在の職業のレベルを反映

execute as @a[scores={job.no=0}] run scoreboard players set @s job.lvl 0
execute as @a[scores={job.no=1}] run scoreboard players operation @s job.lvl = @s job.fighter.lvl
execute as @a[scores={job.no=2}] run scoreboard players operation @s job.lvl = @s job.cultist.lvl
execute as @a[scores={job.no=3}] run scoreboard players operation @s job.lvl = @s job.sorcery.lvl
execute as @a[scores={job.no=4}] run scoreboard players operation @s job.lvl = @s job.doctor.lvl