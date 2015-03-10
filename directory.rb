

#put all students into an array
students = [
  {:name => "Arin Hanson", :cohort => :february},
  {:name => "Stan Smith", :cohort => :february},
  {:name => "Dan Evidan", :cohort => :february},
  {:name => "Rick Grimes", :cohort => :march},
  {:name => "Clint Eastwood", :cohort => :march},
  {:name => "Charlie Sheen", :cohort => :march},
  {:name => "Gavin Free", :cohort => :december},
  {:name => "Michael Jones", :cohort => :december},
  {:name => "Ed O'Brien", :cohort => :december}
  ]



# then print array, with methods and shit
def print_header
  puts "The student of my cohort at Makers Academy"
  puts "---------------------------------"
end

  def print(students)
    students.each do |student|
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#error can occur here if use "" and '', causing miscommunication to ruby
#print total
def print_footer(names)  
  puts "Overall, we have #{names.length} great students"
end
#Gotta call those methods
print_header
print(students)
print_footer(students)