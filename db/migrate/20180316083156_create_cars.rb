class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.string :engine_size
      t.string :body_type
      t.string :owner_id
      t.string :dealership_id

      t.timestamps
    end
  end
end
