module RentalHelper
  
  def rental_date(date)
    date.to_date.strftime("%m-%d-%y")
  end
   
  # Calculate no. of days for vehicle
  

  def vehicle_type(rental)
    case rental.vehicle.vehicle_type
    when 1
      "Compact"
    when 2
      "Medium"
    when 3
      "Large"
    when 4
      "SUV"
    when 5
     "Truck"
    when 6
      "VAN"
    else
    end
  end
end
