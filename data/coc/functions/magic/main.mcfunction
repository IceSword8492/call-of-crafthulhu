# 魔法基本処理


# 魔法発動用アイテムを所持しているか判定

scoreboard players set @a hasClickItem 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}}] hasClickItem 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] hasClickItem 2
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:cyan_dye"}}] hasClickItem 3
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}}] hasClickItem 4
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:gray_dye"}}] hasClickItem 5


# 右クリック判定

execute as @a[scores={hasVillager=0,hasClickItem=1..}] at @s run summon minecraft:villager ~ ~-2 ~ {Team:"noCollision",CustomName:"\"ClickMan\"",Silent:1b,NoAI:1b,VillagerData:{profession:"nitwit"},Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:100000000,ShowParticles:0b}],Invulnerable:1}
execute at @e[type=minecraft:villager,name=ClickMan] run scoreboard players set @p hasVillager 1
execute as @a[scores={hasClickItem=1..}] at @s run tp @e[type=minecraft:villager,name=ClickMan,limit=1,sort=nearest] @s
execute as @a[scores={hasClickItem=0}] at @s run tp @e[type=minecraft:villager,name=ClickMan,sort=nearest,limit=1,distance=..1] ~ ~-300 ~
scoreboard players set @a[scores={hasClickItem=0}] hasVillager 0


# 魔法実行処理

# 視覚を奪う lv.1
# 視覚を回復させる対象は完全にそして永久的に視力を失う。同じ呪文を逆向きに働かせて視力を回復させることもできる。
execute as @a[scores={hasClickItem=1,clicked=1..}] at @s run particle minecraft:smoke ~ ~-.5 ~ 1 1 1 1.0 100 force
execute as @a[scores={hasClickItem=1,clicked=1..}] at @s run effect give @e[tag=enemy,distance=..10,sort=nearest,limit=1] minecraft:slowness 10 1
execute as @a[scores={hasClickItem=1,clicked=1..}] at @s run effect clear @p minecraft:blindness
execute as @a[scores={hasClickItem=1,clicked=1..}] at @s run effect give @s minecraft:hunger 1 255 true

# 黒い束縛 lv.1
# 普通のゾンビを創造することができる。
function coc:magic/once/summon/zombie/lv1

# イブン＝グハジの粉 lv.1
# 目に見えないものを見えるようにすることができる呪文。
execute as @a[scores={hasClickItem=3,clicked=1..}] at @s run particle minecraft:crit ~ ~-.5 ~ 1 1 1 1.0 100 force
execute as @a[scores={hasClickItem=3,clicked=1..}] at @s run effect give @e[tag=enemy] minecraft:glowing 10 255 true
execute as @a[scores={hasClickItem=3,clicked=1..}] at @s run effect give @s minecraft:hunger 1 100

# 死の呪文
# 対象がわけのわからないまま炎に包まれてしまう呪文。
function coc:magic/flame/lv1

# ケアルラ (cura)
# 範囲回復魔法。
function coc:magic/heal/cura/lv1


# アイテムクリック初期化処理

scoreboard players set @a clicked 0