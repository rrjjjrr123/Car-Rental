module ApplicationHelper

  def number_of_days(rental)
    (rental.return_date.to_date - rental.start_date.to_date).to_i
  end

  def remaining_balance(rental)
    vehicle = Vehicle.find_by(vehicle_id: rental&.vehicle_id)
    return  "$0.0" unless vehicle.present?

    remaining_balance = if vehicle.vehicle_type == 1 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 80 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 480 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 1 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
        number_of_days(rental) * 100 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 600 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 2 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 90 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 530 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 2 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
        number_of_days(rental) * 110 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 660 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 3 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 100 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 600 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 3 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
        number_of_days(rental) * 120 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 710 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 4 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 115 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 685 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 4 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
        number_of_days(rental) * 125 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 800 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 5 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 130 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 780 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 5 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
      elsif rental.rental_type == 7
      end
    elsif vehicle.vehicle_type == 6 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 115 - rental.total_amount
      elsif rental.rental_type == 7
        number_of_days(rental) * 685 - rental.total_amount
      end
    elsif vehicle.vehicle_type == 6 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
      elsif rental.rental_type == 7
      end
    end
    "$#{remaining_balance}"
  end

  def calcuate_rate(rental)
    vehicle = Vehicle.find_by(vehicle_id: rental&.vehicle_id)
    return  "$0.0" unless vehicle.present?

    remaining_balance = if vehicle.vehicle_type == 1 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 80
      elsif rental.rental_type == 7
        number_of_days(rental) * 480
      end
    elsif vehicle.vehicle_type == 1 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
        number_of_days(rental) * 100
      elsif rental.rental_type == 7
        number_of_days(rental) * 600
      end
    elsif vehicle.vehicle_type == 2 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 90
      elsif rental.rental_type == 7
        number_of_days(rental) * 530
      end
    elsif vehicle.vehicle_type == 2 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
        number_of_days(rental) * 110
      elsif rental.rental_type == 7
        number_of_days(rental) * 660
      end
    elsif vehicle.vehicle_type == 3 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 100
      elsif rental.rental_type == 7
        number_of_days(rental) * 600
      end
    elsif vehicle.vehicle_type == 3 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
        number_of_days(rental) * 120
      elsif rental.rental_type == 7
        number_of_days(rental) * 710
      end
    elsif vehicle.vehicle_type == 4 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 115
      elsif rental.rental_type == 7
        number_of_days(rental) * 685
      end
    elsif vehicle.vehicle_type == 4 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
        number_of_days(rental) * 125
      elsif rental.rental_type == 7
        number_of_days(rental) * 800
      end
    elsif vehicle.vehicle_type == 5 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 130
      elsif rental.rental_type == 7
        number_of_days(rental) * 780
      end
    elsif vehicle.vehicle_type == 5 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
      elsif rental.rental_type == 7
      end
    elsif vehicle.vehicle_type == 6 && Vehicle.categories[vehicle.category] == 0
      if rental.rental_type == 1
        number_of_days(rental) * 115
      elsif rental.rental_type == 7
        number_of_days(rental) * 685
      end
    elsif vehicle.vehicle_type == 6 && Vehicle.categories[vehicle.category] == 1
      if rental.rental_type == 1
      elsif rental.rental_type == 7
      end
    end
    remaining_balance
  end
end
