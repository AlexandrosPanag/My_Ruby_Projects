#Alexandros Panagiotakopoulos - alexandrospanag.github.io

# class Student
class Student
  attr_accessor :name, :age, :grade
end

#create a new student
student1 = Student.new()
student1.name = "Akis"
student1.age = 15
student1.grade = 9

puts student1.name

student2 = Student.new()
student2.name = "Giannis"
student2.age = 16
student2.grade = 10

puts student2.age
