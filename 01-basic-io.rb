def long_method
  print "Input Celcius : "
  celcius = gets
  fahrenheit = (celcius.to_i * 9 / 5) + 32
  print "Fahrenheit = "
  print fahrenheit
  puts "."
end

def short_method
  print "Input Celcius : "
  print "Fahrenheit = ", gets.to_i * 9 / 5 + 32, ".\n"
end

# main program
long_method
short_method

# program output
# Input Celcius : 36
# Fahrenheit = 96.
# Input Celcius : 30
# Fahrenheit = 86.