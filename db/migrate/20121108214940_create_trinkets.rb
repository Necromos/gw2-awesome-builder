class CreateTrinkets < ActiveRecord::Migration
  def change
    create_table :trinkets do |t|
      t.string :name, limit: 96
      t.integer :level

      t.integer :armor
      t.integer :hit_points
      t.integer :attack_power
      t.integer :critical_damage
      t.integer :critical_chance
      t.integer :condition_damage
      t.integer :condition_duration
      t.integer :healing_power
      t.integer :boon_duration
      t.integer :magic_find

      t.belongs_to :slot

      t.string :gw2db_url
      t.string :icon_url

      t.timestamps
    end

    add_index :trinkets, :slot_id
  end
end
