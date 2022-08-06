class Vehicle
  attr_reader :brand, :model, :fuel_type

  def initialize brand, model, number_of_wheel, fuel_type
    @brand = brand
    @model = model
    @number_of_wheel = number_of_wheel
    @fuel_type = fuel_type
  end

  def complete_name
    "#{brand} #{model} #{fuel_type}"
  end
end

class Car < Vehicle
  def initialize brand, model, number_of_wheel, fuel_type, number_of_door
    super brand,model,number_of_wheel,fuel_type
    @number_of_door = number_of_door
  end

  def open_door
    puts "#{complete_name} open door"
  end
end

class Motor < Vehicle
  def initialize brand, model, number_of_wheel, fuel_type, has_sidecar
    super brand,model,number_of_wheel,fuel_type
    @has_sidecar = has_sidecar
  end
end

# main program
# ---------------------------------
car_one = Car.new("Toyota", "Volvo", 4, "Gasoline",4)
puts car_one.complete_name
puts car_one.open_door
motor_one = Motor.new("Honda", "Cruiser Rebel 300", 2, "Gasoline", false)
puts motor_one.complete_name

# Program Output
# ---------------------------------
# Toyota Volvo Gasoline
# Toyota Volvo Gasoline open door

# Honda Cruiser Rebel 300 Gasoline