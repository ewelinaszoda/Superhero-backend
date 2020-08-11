class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :img
      t.integer :intelligence
      t.integer :strength
      t.integer :speed
      t.integer :power
      t.integer :likes, :default => 0
      t.timestamps
    end
  end
end
