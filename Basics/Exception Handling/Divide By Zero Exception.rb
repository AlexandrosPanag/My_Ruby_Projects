#Alexandros Panagiotakopoulos - alexandrospanag.github.io

begin
  result = 1 / 0
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
end
