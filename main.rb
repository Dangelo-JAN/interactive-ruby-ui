require_relative "teacher"
require_relative "student"

puts "Welcome to School Library App"

puts "Do you want to create a student (1) or a teacher (2)? [input number]: "

personType = gets.chomp.to_i

if personType == 1
  newStudent = Studen.new
else
  newTeacher = Teacher.new
end
