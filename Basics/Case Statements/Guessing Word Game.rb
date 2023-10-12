#Alexandros Panagiotakopoulos - alexandrospanag.github.io

secret_word = "mysecretword"
guess = ""

while guess != secret_word
  print "Enter guess: "
  guess = gets.chomp()
  if guess == secret_word
    puts "You win!"
  end
end
