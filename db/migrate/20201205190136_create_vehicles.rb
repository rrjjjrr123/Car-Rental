class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles, id: false, primary_key: :vehicle_id do |t|
      t.string :vehicle_id
      t.string :description
      t.integer :year
      t.integer :category
      t.integer :vehicle_type

      t.timestamps
    end
  end
end
