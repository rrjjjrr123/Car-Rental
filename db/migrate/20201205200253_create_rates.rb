class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :rate_type
      t.integer :category
      t.integer :weekly
      t.integer :daily

      t.timestamps
    end
  end
end
