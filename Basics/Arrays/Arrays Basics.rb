food = Array["Burger", "Pizza", "Suvlaki"] #example of array creation
puts food[2] #print a specific array element (NOTE: Arrays start from 0)
puts food[-2] #grab from the back the second element (NOTE: Starts from 1)
puts food[0,2] #grab the first until the second element (NOTE: But dont grab the second 0,n-1)


food = Array.new #create a new array with null elements
food[0] = "Club sandwhich"
food[1] = "Sushi"
food[2] = "Cookies"
food[3] = "Gyros"
puts food.length #print the length of the food array
puts food.include? "Burger" #does the new array include the "Burger" item
puts food.reverse() #reverse all the array elements
puts food.sort() #print the elements sorted (alphabetically)
