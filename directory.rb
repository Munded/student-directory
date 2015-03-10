



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
      if students ~= /^T/
      puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#error can occur here if use "" and '', causing miscommunication to ruby
#print total
def print_footer(names)  
  puts "Overall, we have #{names.length} great students"
end
#Gotta call those methods
students = input_students
print_header
print(students)
print_footer(students)