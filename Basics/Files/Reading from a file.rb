#Alexandros Panagiotakopoulos - alexandrospanag.github.io


file = File.open("C:/Users/<username>/Desktop/students.txt", "r") do |file| #use your own path this is an example
  file.each_line do |line| 
    puts line
    #optional code to read from a single line puts file.readline()
  end
end
