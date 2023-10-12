#Alexandros Panagiotakopoulos - alexandrospanag.github.io

def merge_sort(arr)
  return arr if arr.size <= 1

  mid = arr.size / 2
  left = arr[0...mid]
  right = arr[mid...arr.size]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end

# Generate a random array of 10 elements between 0 and 99
arr = Array.new(10) { rand(100) }
puts "Original array: #{arr}"
puts "Sorted array: #{merge_sort(arr)}"
