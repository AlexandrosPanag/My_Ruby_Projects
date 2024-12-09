# Alexandros Panagiotakopoulos - alexandrospanag.github.io
# 12-09-2024

class BinaryToGray # Class to convert binary to gray code
  def initialize(binary_string) # Initialize the binary string 
    @binary_string = binary_string # Set the binary string
  end

  def to_gray_code # Convert the binary string to gray code
    binary_numbers = @binary_string.split.map { |binary| binary.to_i(2) } # Convert the binary string to integers
    gray_numbers = binary_numbers.map { |binary| binary ^ (binary >> 1) } # Convert the binary numbers to gray code
    gray_numbers.map { |gray| gray.to_s(2).rjust(@binary_string.split.first.length, '0') }.join(' ') # Convert the gray code to binary string
  end
end

# Example usage
binary_string = "011000001"
converter = BinaryToGray.new(binary_string) # Create a new instance of the BinaryToGray class
gray_code_string = converter.to_gray_code # Convert the binary string to gray code
puts "Binary string: #{binary_string}" # Output the binary string
puts "Gray code string: #{gray_code_string}" # Output the gray code string