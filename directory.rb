

#put all students into an array
students = [
  "Arin Hanson",
  "Stan Smith",
  "Dan Evidan",
  "Rick Grimes",
  "Clint Eastwood",
  "Charlie Sheen",
  "Gavin Free",
  "Michael Jones",
  "Ed O'Brien",
  ]



# then print array, with methods and shit
def print_header
  puts "The student of my cohort at Makers Academy"
  puts "---------------------------------"
end

def print(names)
  names.each do |name|
      puts name
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