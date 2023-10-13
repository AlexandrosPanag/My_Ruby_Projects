#Alexandros Panagiotakopoulos - alexandrospanag.github.io

# class Student
class Student
  attr_accessor :name, :major, :grade
  def initialize(name, major, grade) #initialize is a special method that is called when you create a new object
    puts ("New student created! Hello! " + name)
    @name = name
    @major = major
    @grade = grade
  end

  def has_scholarship
    if @grade >= 8
      puts (name+" has scholarship")
    else
      puts (name+" does not have scholarship")
    end
  end
end

student1 = Student.new("Alex", "art", 8)
student2 = Student.new("John", "computer science", 5)


puts student1.has_scholarship
puts student2.has_scholarship
