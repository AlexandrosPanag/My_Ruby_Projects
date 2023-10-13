#Alexandros Panagiotakopoulos - alexandrospanag.github.io

#class junior
class Junior
  def beginner
    puts "This programmer knows c, c++"
  end
end

#class senior
class Senior < Junior #Inherit the method from junior
  def senior
    puts "This programmer also knows ruby, python, java, javascript"
  end
end

jrprogrammer = Junior.new
jrprogrammer.beginner
srprogrammer = Senior.new
srprogrammer.beginner #note how senior inherited the method from junior without creating a def begginer method
srprogrammer.senior
