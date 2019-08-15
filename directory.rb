require 'date'
student_count = 11

students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end


# with no filtering - while loop
def print(students)
  i = 0
  while i < students.length do
    student = students[i]
    puts "#{student[:name]} (#{student[:cohort]} cohort, who's favourite hobby is #{student[:hobby]})"
    i += 1
  end
end

=begin
# with no filtering
def print(students)
  students.each_with_index do |students,index|
    puts "#{index+1}. #{students[:name]} (#{students[:cohort]} cohort)"
  end
end
=end


=begin
# Prints name beginning with A
def print(students)
  students.each_with_index do |students,index|
  if students[:name].start_with?("a")
    puts "#{index+1}. #{students[:name]} (#{students[:cohort]} cohort)"
  end
  end
end
=end

=begin
# Prints students with names shorter than 12 chars
def print(students)
  students.each_with_index do |students,index|
  if students[:name].length < 12
    puts "#{index+1}. #{students[:name]} (#{students[:cohort]} cohort)"
  end
  end
end
=end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "to finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    puts "Please enter cohort month:"
    cohort = gets.chomp
    puts "Please enter favourite hobby"
    hobby = gets.chomp
    students << {name: name, cohort: cohort.to_sym, hobby: hobby.to_sym}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

students = input_students
print_header
print(students)
print_footer(students)
