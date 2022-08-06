class Exam
attr_reader :grade, :note, :reward, :name

def initialize(name, course, score)
  @name = name
  @course = course
  @score = score
end

def check_note
  # simple if else example
  # if the score is less than 60 then it Fails
  # otherwise he will Pass
  if @score < 60
    @note = "Fail"
  else
    @note = "Pass"
  end
end  

def check_note_short_version
  @note = @score < 60 ? "Fail" : "Pass"
end

def find_grade
  # example if else that has more than 2 possibilities
  # grade requirements are as follows:
  # 0  - 45  will get E
  # 46 - 55  will get D
  # 56 - 69  will get C
  # 70 - 79  will get B
  # 80 - 100 will get A
  @grade = if @score <= 45 
            "E"
          elsif @score <= 55
            "D"
          elsif @score <= 69
            "C"
          elsif @score <= 79
            "B"
          else
            "A"
          end
end

def find_grade_with_case_when
  # sometimes simpler use of the case - When
  # compared to if
  @grade = case @score
           when 0..45
             "E"
           when 46..55
             "D"
           when 56..69
             "C"
           when 70..79
             "B"
           when 80..100
             "A"
           else
             "Error or Not Possible"
           end
end

def check_reward
  # for example, if the child passes, he gets a bicycle reward
  @reward = "Bycycle" if @note == "Pass"
end

def check_reward_with_unless
  # give a reward, as long as the note doesn't fail
  @reward = "Bycycle" unless @note == "Fail"
end

def give_entertainment_reward
  # if there is no reward, give candy 
  @reward ||= "candy"
end

def check_super_reward
  # here is the practice of logic and by writing &&
  # and logic or by writing ||
  # students will get a super reward in the form of a Motor Cycle if
  #   Math course and score >= 95 or
  #   Physics course and score >= 85
  if @course == "Math" && @score >= 95 || @course == "Physics" && @score >= 85
    @reward = "Motor Cycle"
  end
end
end

# main program
# first person
first_person = Exam.new('John', 'Math', 75)
first_person.find_grade_with_case_when
first_person.check_note_short_version
first_person.check_reward
first_person.check_super_reward
first_person.give_entertainment_reward
puts "#{first_person.name} get grade #{first_person.grade} and #{first_person.note}"
puts "#{first_person.name} get reward #{first_person.reward}"
# second Person
second_person = Exam.new('Jenn', 'Physics', 35)
second_person.find_grade_with_case_when
second_person.check_note_short_version
second_person.check_reward
second_person.check_super_reward
second_person.give_entertainment_reward
puts "#{second_person.name} get grade #{second_person.grade} and #{second_person.note}"
puts "#{second_person.name} get reward #{second_person.reward}"

# Program Output
# John get grade B and Pass
# John get reward Bycycle
# Jenn get grade E and Fail
# Jenn get reward candy