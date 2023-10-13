#Alexandros Panagiotakopoulos - alexandrospanag.github.io

# class Student
class Student
  attr_accessor :name, :age, :grade
  def initialize(name, age, pages) #initialize is a special method that is called when you create a new object
    puts ("New student created! Hello! " + name)
    @name = name
    @age = age
    @grade = grade
  end
end

#create a new student
student1 = Student.new("Alex", 15, 9)
student2 = Student.new("John", 16, 10)

puts student1.name
