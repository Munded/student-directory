#interaction menu
def interactive_menu
  students = []
  loop do
  #1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
  #2 read the input and save it into a variable
    selection = gets.chomp
  #3. do what the user has asked
    case selection
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9" 
      exit 
    else 
      puts "Me no understandy"
  end
end
end




#student input code

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get first name
  name = gets.chomp
  #while name is not empty, repeat code
  while !name.empty? do
    # add the student hash to array
    students << {:name => name, :cohort => :november}
     puts "Now we have #{students.length} students"
    # get another name from the user
    name = gets.chomp
  end
  students
end


# then print array, with methods and shit
def print_header
  puts "The student of my cohort at Makers Academy"
  puts "---------------------------------"
end

  def print(students)
    students.each_with_index do |student, i|
      puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#error can occur here if use "" and '', causing miscommunication to ruby
#print total
def print_footer(names)  
  puts "Overall, we have #{names.length} great students"
end
#Gotta call those methods

interactive_menu