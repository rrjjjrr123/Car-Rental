class AddPaymentDueColumnToRental < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :payment_due, :float
  end
end
