class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers, id: false do |t|
      t.integer :cust_id, null: false, unique: true, primary_key: true
      t.string :name
      t.string :phone

      t.timestamps
    end
    execute "SELECT setval('customers_cust_id_seq', 200)"
  end
end

