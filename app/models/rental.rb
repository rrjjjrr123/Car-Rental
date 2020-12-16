class Rental < ApplicationRecord
  belongs_to :customer, primary_key: :cust_id, foreign_key: :cust_id
  belongs_to :vehicle, primary_key: :vehicle_id, foreign_key: :vehicle_id

  delegate :description, :vehicle_type, to: :vehicle, prefix: true
  delegate :name,to: :customer, prefix: true

end
