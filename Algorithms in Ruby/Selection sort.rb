#Alexandros Panagiotakopoulos - alexandrospanag.github.io

def selection_sort(arr)
  n = arr.length

  for i in 0..n-2
    min_index = i

    for j in i+1..n-1
      if arr[j] < arr[min_index]
        min_index = j
      end
    end

    if min_index != i
      arr[i], arr[min_index] = arr[min_index], arr[i]
    end
  end

  return arr
end

# Generate an array of 10 random integers between 1 and 100
arr = Array.new(10) { rand(1..100) }

puts "Unsorted array: #{arr}"
puts "Sorted array: #{selection_sort(arr)}"
