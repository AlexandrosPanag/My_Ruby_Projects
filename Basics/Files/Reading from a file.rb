#Alexandros Panagiotakopoulos - alexandrospanag.github.io


file = File.open("C:/Users/alexa/Desktop/students.txt", "r") do |file|
  file.each_line do |line|
    puts line
  end
end
