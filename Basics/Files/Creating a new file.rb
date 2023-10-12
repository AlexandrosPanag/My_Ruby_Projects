#Alexandros Panagiotakopoulos - alexandrospanag.github.io


file = File.open("mynewfile.txt", "w") do |file| #note in windows you need to specify the full path
  file.write("This is a new file!")
end
