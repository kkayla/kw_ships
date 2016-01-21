class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :max_container
      t.string :boat_location

      t.timestamps null: false

    end
  end
end
