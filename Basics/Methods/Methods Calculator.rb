# By Alexandros Panagiotakopoulos - alexandrospanag.github.io

#call each method to do an operation and return the result
def add_numbers(num1, num2)
  sum = num1 + num2
  return sum
end

def subtract_numbers(num1, num2)
  difference = num1 - num2
  return difference
end

def multiply_numbers(num1, num2)
  product = num1 * num2
  return product
end

def divide_numbers(num1, num2)
  quotient = num1 / num2
  return quotient
end

#take input from user
puts "Enter the first number: "
num1 = gets.chomp()
puts "Enter the second number: "
num2 = gets.chomp()

sum = add_numbers(num1.to_i, num2.to_i)
difference = subtract_numbers(num1.to_i, num2.to_i)
product = multiply_numbers(num1.to_i, num2.to_i)
quotient = divide_numbers(num1.to_i, num2.to_i)

puts "The sum of #{num1} and #{num2} is #{sum}."
puts "The difference between #{num1} and #{num2} is #{difference}."
puts "The product of #{num1} and #{num2} is #{product}."
puts "The quotient of #{num1} and #{num2} is #{quotient}."
