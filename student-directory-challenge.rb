def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
  # add the student hash to the array
  students << {name: name, cohort: :november}
  puts "Now we have #{students.count} students"
  # get another name from the user
  name = gets.chomp
  end
  # return the array of students
  students
end





def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end



def print(students)
  students.each_with_index do |students,index|
    puts "#{index+1}. #{students[:name]} (#{students[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def interactive_menu
  # create an empty array
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
      when "1"
        students = input_students
        if students.count == 0
          puts "No students"
        end
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit
      else
        puts " invalid entry, try again"
      end
  end
end

interactive_menu
