class Vehicle
  attr_reader    :brand
  attr_writer    :number_of_wheels
  attr_accessor  :total_passenger

  def initialize brand, model_name, number_of_wheels, fuel_type,total_passenger
    @brand = brand
    @model_name = model_name
    @number_of_wheels = number_of_wheels
    @fuel_type = fuel_type
    @total_passenger = total_passenger
  end

  def model_name
    @model_name
  end

  def vehicle_name
    brand + " " + model_name + " " + fuel_type
  end

  private

  def fuel_type
    @fuel_type
  end

end
