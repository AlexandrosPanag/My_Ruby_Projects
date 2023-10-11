# By Alexandros Panagiotakopoulos - alexandrospanag.github.io

# create an array
arr = [1, 2, 3, 4, 5]

# create a method to find the average element of the array
def find_average(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  average = sum.to_f / arr.length
  return average
end

# create a method to find the maximum element of the array
def find_max(arr)
  max = arr[0]
  arr.each do |num|
    if num > max
      max = num
    end
  end
  return max
end

# create a method to find the minimum element of the array
def find_min(arr)
  min = arr[0]
  arr.each do |num|
    if num < min
      min = num
    end
  end
  return min
end

# call the methods with the array as input
puts "Average: #{find_average(arr)}"
puts "Maximum: #{find_max(arr)}"
puts "Minimum: #{find_min(arr)}"
