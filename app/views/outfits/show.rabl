object @outfit
attributes :armor,
           :attack_power,
           :hit_points,
           :healing_power,
           :condition_duration,
           :condition_damage,
           :critical_chance,
           :critical_damage,
           :boon_duration

child(:suit) do
  extends "suits/show"
end

child(:jewelry) do
  extends "jewelries/show"
end
