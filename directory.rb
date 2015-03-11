#create global array to add info to
@students = []

#print header
def print_header
  puts "The student of my cohort at Makers Academy"
  puts "---------------------------------"
end

#iterate through student array, print the student's name and cohort, and print count
def print_student_list
    @students.each_with_index do |student, i|
      puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# print footer with added count of items in the student array
def print_footer
  puts "Overall, we have #{@students.length} great students"
end

#input student interface, asks for user input, the loops whilst input is not empty, and adds info to student array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  name = gets.chomp
  
  while !name.empty? do
    
    @students << {:name => name, :cohort => :november}
     puts "Now we have #{@students.length} students"
    
    name = gets.chomp
  end
  @students
end



# the menu for the interactive menu
def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "4. Load the list from students.csv"
    puts "9. Exit"
end

#show_students display, calls the header, student list and footer functions
def show_students
  print_header
  print_student_list
  print_footer
end

#process that responds to user input in the interactive menu
def process(selection)
case selection
      when "1"
        input_students
      when "2"
        show_students  
      when "3"
        save_students
      when "4"
        load_students
      when "9" 
        exit 
    else 
      puts "Me no understandy"
  puts " "
  end
end

#interactive menu function the calls the menu and the process
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
end
end

#save inputted students into directory
def save_students
  #open file for writing, second arguement is file access mode
  file = File.open("students.csv", "w")
  #iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "Student Directory Updated"
  puts ""
end


#Load previously written directory in read-only, so noone would read
def load_students
  #open students.csv in read only
  file = File.open("students.csv", "r")
  #iterate and read through each line
  file.readlines.each do |line|
    #for each line, split split into name and cohort, parallel assignment
    name, cohort = line.chomp.split(',')
    #Add name and cohort to students
    @students << {:name => name, :cohort => cohort.to_sym}
  end
  #always close file when opening
  file.close
end

interactive_menu