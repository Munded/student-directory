@students = []

def print_header
  puts "The student of my cohort at Makers Academy"
  puts "---------------------------------"
end

def print_student_list
    @students.each_with_index do |student, i|
      puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.length} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  #get first name
  name = gets.chomp
  #while name is not empty, repeat code
  while !name.empty? do
    # add the student hash to array
    @students << {:name => name, :cohort => :november}
     puts "Now we have #{@students.length} students"
    # get another name from the user
    name = gets.chomp
  end
  @students
end




def print_menu
  puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
case selection
      when "1"
        input_students
      when "2"
        show_students  
      when "9" 
        exit 
    else 
      puts "Me no understandy"
  end
end


def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
end
end


interactive_menu