class Customer < ApplicationRecord
  self.primary_key = 'cust_id'
  has_one :rental
end
