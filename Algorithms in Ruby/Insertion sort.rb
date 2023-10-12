#Alexandros Panagiotakopoulos - alexandrospanag.github.io

def insertion_sort(arr)
  for i in 1..arr.length-1
    key = arr[i]
    j = i - 1
    while j >= 0 && arr[j] > key
      arr[j+1] = arr[j]
      j -= 1
    end
    arr[j+1] = key
  end
  return arr
end

arr = Array.new(10) { rand(1..100) }
puts "Unsorted array: #{arr}"
puts "Sorted array: #{insertion_sort(arr)}"
