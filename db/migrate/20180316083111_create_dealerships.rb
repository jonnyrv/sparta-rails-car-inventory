class CreateDealerships < ActiveRecord::Migration[5.1]
  def change
    create_table :dealerships do |t|
      t.string :name
      t.string :dealers_name
      t.string :car_id

      t.timestamps
    end
  end
end
