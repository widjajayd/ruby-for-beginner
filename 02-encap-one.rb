class Human
  attr_reader :name

  def initialize(name, height, blood_type)
    @name = name
    @height = height
    @blood_type = blood_type
    @condition = nil
  end

  def run
    @condition = "Running"
  end

  def walk
    @condition = "Walking"
  end

  def jump
    @condition = "Jumping"
  end

  def doing_what?
    @condition
  end
end

# main program

first_person = Human.new("John",170,"O")
second_person = Human.new("Jenn",160,"A")
first_person.run
second_person.jump
puts "#{first_person.name} now is #{first_person.doing_what?}"
puts "#{second_person.name} now is #{second_person.doing_what?}"

# Output
# John now is Running
# Jenn now is Jumping