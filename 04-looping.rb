class NumberSeries
  def initialize(start_number, end_number)
    @start_number = start_number
    @end_number = end_number
  end

  def using_while_do
    puts "Sample looping using while do"
    i = @start_number
    while i <= @end_number do 
      puts "number: #{i}"
      i = i + 1
    end
  end

  def using_each
    puts "Sample looping using each"
    puts "in ruby writing each can be replaced with map, collect and select"
    @data = [10,20,30,45,50,68,74,81]
    total = 0
    @data.each do |value|
      puts " #{value} "
      total = total + value
    end
    puts "The total number above is #{total}"
  end

  def map_collect_select_each
    @data = [1,2,3]
    @total = @data.map { |n| n*2 }
    puts "using map [1,2,3] = #{@total}"
    @total = @data.collect { |n| n*2 }
    puts "using collect [1,2,3] = #{@total}"
    @total = @data.select { |n| n*2 }
    puts "using select [1,2,3] = #{@total}"
    @total = @data.each { |n| n*2 }
    puts "using each [1,2,3] = #{@total}"
    puts "Looping using conditionn > 2"
    @total = @data.map { |n| n>2 }
    puts "check n>2 using map [1,2,3] = #{@total}"
    @total = @data.collect { |n| n>2 }
    puts "check n>2 using collect [1,2,3] = #{@total}"
    @total = @data.select { |n| n>2 }
    puts "check n>2 using select [1,2,3] = #{@total}"
    @total = @data.each { |n| n>2 }
    puts "check n>2 from each [1,2,3] = #{@total}"
    puts "From the result above, it can be summarized as follows:"
    puts "The statements map and collect are identical in that they add up a new array total from calculation."
    puts "select will total the array but only contain start_number data that matches the conditions."
    puts "Each will always return all the looped start_number data."
  end

  def using_for
    puts "Sample looping using for"
    for i in 1..10
      puts " #{i}"
    end
  end

end

# Main Program
series = NumberSeries.new(5,10)
series.using_while_do
series.using_each
series.using_for
series.map_collect_select_each

# # Program Output
# Sample looping using while do
# number: 5
# number: 6
# number: 7
# number: 8
# number: 9
# number: 10
# Sample looping using each
# in ruby writing each can be replaced with map, collect and select
#  10 
#  20 
#  30 
#  45 
#  50 
#  68 
#  74 
#  81 
# The total number above is 378
# Sample looping using for
#  1
#  2
#  3
#  4
#  5
#  6
#  7
#  8
#  9
#  10
# using map [1,2,3] = [2, 4, 6]
# using collect [1,2,3] = [2, 4, 6]
# using select [1,2,3] = [1, 2, 3]
# using each [1,2,3] = [1, 2, 3]
# Looping using conditionn > 2
# check n>2 using map [1,2,3] = [false, false, true]
# check n>2 using collect [1,2,3] = [false, false, true]
# check n>2 using select [1,2,3] = [3]
# check n>2 from each [1,2,3] = [1, 2, 3]
# From the result above, it can be summarized as follows:
# The statements map and collect are identical in that they add up a new array total from calculation.
# select will total the array but only contain start_number data that matches the conditions.
# Each will always return all the looped start_number data.