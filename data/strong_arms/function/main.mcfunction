# Optimized loop
schedule function strong_arms:main 5t append

# Toggle
scoreboard players enable @a strong_arms
tellraw @a[scores={strong_arms=1}] [{"text": "Strong Arms: "}, {"text": "ON", "color": "green"}]
tellraw @a[scores={strong_arms=0}] [{"text": "Strong Arms: "}, {"text": "OFF", "color": "red"}]
scoreboard players set @a[scores={strong_arms=1}] strong_arms -1
scoreboard players set @a[scores={strong_arms=0}] strong_arms 2
scoreboard players set @a[scores={strong_arms=3}] strong_arms 1

# Give No Attack Cooldown
execute as @a[scores={strong_arms=-1}] run attribute @s attack_speed base set 1000
execute as @a[scores={strong_arms=2}] run attribute @s attack_speed base set 4