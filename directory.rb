

#put all students into an array
students = [
  ["Arin Hanson", :february],
  ["Stan Smith", :february],
  ["Dan Evidan", :february],
  ["Rick Grimes", :march],
  ["Clint Eastwood", :march],
  ["Charlie Sheen", :march],
    ["Gavin Free", :december],
    ["Michael Jones", :december],
    ["Ed O'Brien", :december]
  ]



# then print array, with methods and shit
def print_header
  puts "The student of my cohort at Makers Academy"
  puts "---------------------------------"
end

  def print(students)
    students.each do |name|
      puts "#{name[0]} (#{name[1]} cohort)"
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