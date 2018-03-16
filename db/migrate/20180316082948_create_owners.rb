class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :age
      t.string :email_address
      t.integer :phone_number
      t.string :car_id

      t.timestamps
    end
  end
end
