#Alexandros Panagiotakopoulos - alexandrospanag.github.io

def radix_sort(arr)
  max = arr.max
  exp = 1
  while max / exp > 0
    counting_sort(arr, exp)
    exp *= 10
  end
  arr
end

def counting_sort(arr, exp)
  output = Array.new(arr.length)
  count = Array.new(10, 0)
  arr.each { |num| count[(num / exp) % 10] += 1 }
  (1...10).each { |i| count[i] += count[i - 1] }
  (arr.length - 1).downto(0) do |i|
    output[count[(arr[i] / exp) % 10] - 1] = arr[i]
    count[(arr[i] / exp) % 10] -= 1
  end
  arr.each_index { |i| arr[i] = output[i] }
end

arr = Array.new(10) { rand(1..100) }
puts "Unsorted array: #{arr}"
puts "Sorted array: #{radix_sort(arr)}"
