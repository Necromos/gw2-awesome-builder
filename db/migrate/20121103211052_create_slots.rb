class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.string :name

      t.timestamps
    end
  end
end
