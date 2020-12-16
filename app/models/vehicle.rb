class Vehicle < ApplicationRecord
  self.primary_key = 'vehicle_id'
  has_one :rental
  #enum vehicle_type: ["compact", "medium", "large", "suv", "truck", "van"]
  enum category: ["basic", "luxury"]

  after_initialize :generate_vehicle_id

  def generate_vehicle_id
    (0...17).map { (65 + rand(26)).chr }.join
  end

  
end
