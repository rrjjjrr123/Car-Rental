class AddPrimaryKeyToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :cust_id, :int, null: false, unique: true, serial: true,  primary_key: true
  end
end
