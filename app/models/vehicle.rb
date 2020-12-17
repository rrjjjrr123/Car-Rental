class Vehicle < ApplicationRecord
  self.primary_key = 'vehicle_id'
  has_one :rental
  #enum vehicle_type: ["compact", "medium", "large", "suv", "truck", "van"]
  enum category: ["basic", "luxury"]
  default_scope { order(created_at: :asc) }

  before_create :generate_vehicle_id

  scope :search, ->(val){ where("description LIKE ? OR (vehicle_id LIKE ?)", "%#{val}%", "%#{val}%") }

  def generate_vehicle_id
    self.vehicle_id = (0...17).map { (65 + rand(26)).chr }.join
  end
end
