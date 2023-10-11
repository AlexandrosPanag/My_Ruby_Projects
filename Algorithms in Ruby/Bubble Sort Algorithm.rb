#Alexandros Panagiotakopoulos - alexandrospanag.github.io

def bubblesort(arr)
  n = arr.length

  loop do
    swapped = false

    (n-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end

    break if not swapped
  end

  arr
end


# Generate an array of random elements
arr = Array.new(10) { rand(1..100) }

# Sort the array using bubblesort
sorted_arr = bubblesort(arr)

# Print the sorted array
puts sorted_arr
