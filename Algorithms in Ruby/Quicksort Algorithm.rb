#Alexandros Panagiotakopoulos - alexandrospanag.github.io

def quicksort(arr)
  return arr if arr.length <= 1

  pivot = arr.sample
  left, right = arr.partition { |el| el < pivot }

  return *quicksort(left), pivot, *quicksort(right)
end

# Example usage:
arr = [3, 6, 1, 9, 4, 2, 8, 7, 5]
puts quicksort(arr)
