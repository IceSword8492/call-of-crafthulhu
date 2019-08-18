# プレイヤーの状態を表示

execute as @a[x_rotation=-90..-85,tag=!showStatus] run tellraw @s ["",{"text":"-----------------------------------------------------\nName:    ","color":"gold"},{"selector":"@s","color":"gold"}]

execute as @a[x_rotation=-90..-85,tag=!showStatus] run execute if entity @s[scores={job.no=0}] run tellraw @s [{"text":"Job:     無職", "color": "gold"}]
execute as @a[x_rotation=-90..-85,tag=!showStatus] run execute if entity @s[scores={job.no=1}] run tellraw @s [{"text":"Job:     格闘家\nLevel:     ","color":"gold"}, {"score": {"name": "@s", "objective": "job.fighter.lvl"}, "color": "gold"}]
execute as @a[x_rotation=-90..-85,tag=!showStatus] run execute if entity @s[scores={job.no=2}] run tellraw @s [{"text":"Job:     カルティスト\nLevel:     ","color":"gold"}, {"score": {"name": "@s", "objective": "job.cultist.lvl"}, "color": "gold"}]
execute as @a[x_rotation=-90..-85,tag=!showStatus] run execute if entity @s[scores={job.no=3}] run tellraw @s [{"text":"Job:     呪術師\nLevel:     ","color":"gold"}, {"score": {"name": "@s", "objective": "job.sorcery.lvl"}, "color": "gold"}]
execute as @a[x_rotation=-90..-85,tag=!showStatus] run execute if entity @s[scores={job.no=4}] run tellraw @s [{"text":"Job:     医者\nLevel:     ","color":"gold"}, {"score": {"name": "@s", "objective": "job.doctor.lvl"}, "color": "gold"}]

execute as @a[x_rotation=-90..-85,tag=!showStatus] run tellraw @s ["",{"text":"-----------------------------------------------------", "color":"gold"}]


execute as @a[x_rotation=-90..-85,tag=!showStatus] run tag @s add showStatus
tag @a[x_rotation=-85..] remove showStatus
