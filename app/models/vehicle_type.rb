class VehicleType < ApplicationRecord

  def self.id_with_names
    vehicle_types = {}
    self.all.order(id: :asc).each do |vehicle_type|
      vehicle_types[vehicle_type.name.sub(" ", "_").to_sym] = vehicle_type.id
    end
    vehicle_types
  end
end
