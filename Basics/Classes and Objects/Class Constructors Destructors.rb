# By Alexandros Panagiotakopoulos 
# Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
# alexandrospanag.github.io
# Date: 2024-2025

class ExampleClass
  def initialize(name)
    @name = name
    puts "Constructor: #{@name} has been created."
  end

  def finalize
    puts "Destructor: #{@name} is being destroyed."
  end
end

# Example usage
example = ExampleClass.new("SampleObject")

# Perform some operations
puts "Doing some work with #{example.instance_variable_get(:@name)}."

# Call the custom destructor method
example.finalize

# The object will be garbage collected automatically by Ruby