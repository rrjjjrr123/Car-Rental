class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.datetime :start_date
      t.datetime :order_date
      t.integer :rental_type
      t.integer :qty
      t.datetime :return_date
      t.float :total_amount
      t.datetime :payment_date
      t.string :vehicle_id
      t.integer :cust_id, index: true
      t.timestamps
    end
  end
end
