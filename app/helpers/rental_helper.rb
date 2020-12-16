module RentalHelper
  
  def rental_date(date)
    date.to_date.strftime("%m-%d-%y")
  end
   
  # Calculate no. of days for vehicle
  def number_of_days(rental)
    (rental.return_date.to_date - rental.start_date.to_date).to_i
  end

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
