class Customer < ApplicationRecord
  self.primary_key = 'cust_id'
  has_one :rental

  scope :search, ->(val){ where("name like ? OR (cust_id::text LIKE ?)", "%#{val}%", "%#{val}%").order(name: :asc) }
end