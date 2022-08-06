# ---------------------- true/false
single = false
pass_exam = true

# ---------------------- Integers and floats
width = 10    # Integer data type
length = 2.5  # Float data type
puts "area is #{length*width}"

# ---------------------- String
town = 'Surabaya'
town[0]              # result = S , take letters in order of 0 , remember not to use dots
town[4,3]            # result = bay , take from 4th letter 3
town[2..3]           # result = ra , take the 2nd to 3rd letter
town["aba"]          # checks if the word aba is in the town string, otherwise the result is nil
town.length          # result = 8 , count the number of letters
town.downcase        # becomes all lowercase
town.downcase!       # the contents of the town variable will change from S which is uppercase to lowercase
" eat bread ".strip!.capitalize # strip = remove spaces, capitalize = capitalize
town.count("a")      # count the number of letters a
town.empty?          # check whether the town variable contains contents or not
town.include? "baya" # check if it contains the word baya, if yes then true
town.index("aba")    # check the word aba in what position
b = "my name is joni"
b.split              # will return array["my", "name","is","joni"]
b = "aa//bb//ccc"
b.split("//")        # split by code //
"10.5".to_f          # becomes float data type
"100".to_i           # becomes integer data type
"ha" *3              # becomes ha ha ha
"%05d" % 123         # 00123, d = decimal or can only be numbers

# ---------------------- Symbol
:john                # create a symbol object with the name john
:red_box             # create a symbol object with the name red_box
:"red box"           # create a symbol object with a spaced name
:surabaya.to_s       # symbol converted to string
"surabaya".to_sym    # string used as symbol


# ---------------------- Array
# students = []               # create an empty array named students
student = Array.new(3) {90}   # [90,90,90]
student = Array.new(3) {      # create a 2 dimensional 3 x 2 array [[nil,nil], [nil,nil], [nil,nil]]
  Array.new(2)
}
student = %i[open close]      # [:open, :close] , array of symbols
student = %w[beni siti andri] # ["beni","siti","andri"]
student.size                  # 3 , it means many elements in the array
student.empty?                # false , is the contents of the array empty
student.first                 # beni, first element
student << "joni"             # put joni as the fourth student in the student array
[1,2] + [3,4]                 # [1,2,3,4] , joins 2 arrays with a plus sign
[1,2,3,2,7] - [2,3]           # [1,7] , delete element
[1,2,3].include? 2            # true, is the number 2 in the array
student.join "-"             # "beni-siti-andri", join the array contents with -
[1,2,3].push 4                # [1,2,3,4], inserts data in the back order
[1,2,3,4].pop                 # result = 4, the array becomes [1,2,3], meaning take the last one
[1,2,3].unshift 0             # [0,1,2,3], inserts element in front
[1,2,3].shift                 # result = 1, the array becomes [2,3], meaning take the leading one

# An array can be used to implement FIFO and LIFO programs.
# FIFO stands for First In, First Out.
#   use push to enter data
#   use shift to fetch data
# LIFO stands for Last In First Out.
#   use push to enter data
#   use pop to retrieve data

[1,2,3].map { |v| v * 10}      # [10,20,30], each object is fetched and processed
[2,1,3].sort                   # [1,2,3] , sorted
[1,2,3,4,5].select { |n| n.even? } # [2,4] , take the one that fits the conditions

# ---------------------- Hash
data1 = {min: 0, max: 100}
data1.class          # Hash
data1.size           #2 ,
data1[:min]          # 0 , take the value whose value / index is :min
data1["min"]         # nil , because the string "min" is different from the symbol :min
data1[:middle] = 50  # adds the hash element, so the content becomes 3:min, :max, :middle
data1.keys           # [:min, :max], displays a list of keys
data1.values         # [0, 100], returns a list of values
data1.has_key? :min  # true, is there a symbol :min
# loop hashes
data1.each do |k,v|  # will print the keys and values from the hash
   puts "#{k} = #{v}"
end

# ---------------------- Range
(1..5)               # 1,2,3,4,5
(1...5)              # 1,2,3,4
('a'..'c')           # 'a','b','c'
(1..7).class         # Range
(1..7).include? 6    # true, because 6 is in that range
(1..7) === 6         # true , meaning asking if 6 is in range
(1..7).begin         # 1
(1..7).end           # 7
(1..7).to_a          # [1,2,3,4,5,6,7]
(1..7).min           # 1
value = 10           # example using range with when
grade = case value
   when 0..45 then "E"
   when 46..55 then "D"
   when 56..69 then "C"
   when 70..79 then "B"
   when 80..100 then "A"
   else "invalid value"
end