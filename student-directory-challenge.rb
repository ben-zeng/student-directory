@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
  # add the student hash to the array
  @students << {name: name, cohort: :november}
  puts "Now we have #{@students.count} students"
  # get another name from the user
  name = gets.chomp
  end
  # return the array of students
  @students
end





def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end



def print_student_list
  @students.each_with_index do |students,index|
    puts "#{index+1}. #{students[:name]} (#{students[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process (selection)
  case selection
    when "1"
      @students = input_students
      if @students.count == 0
        puts "No students"
      end
    when "2"
      show_students
    when "3"
      save_students
    when "9"
      exit
    else
      puts " invalid entry, try again"
    end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def interactive_menu
loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu
