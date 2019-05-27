# In Class Exercise: Binary Search
# Write a method, binary search(target, array), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found

# 1. start_index = 0
# 2. set last index = arrat.length - 1
# 3 LOOP while start index <= last index
# 3.a Find the middle (last_index + start_index)
# 4.check if value at middle == target

# 5.if it is return middle (index)

# 6.if it is not , then check if target is > than middle

# 7.start index = middle + 1
# 8. 
# 9. 
# 10.  

def binary_search(target, array)
	# index = 0
	# # mid = index
	# mid = array.length / 2

	# while array[mid] == target
	# 	return mid

	# 	if target < array[mid]
	# 		mid2= (array[0..mid].length)/2

	# 		if array[mid2] == target
	# 			return mid2
	# 		elsif array[mid2] <= target
				
	# 			return 
	# 		elsif target > mid
	# 		mid3 = (array[mid..-1].length)/2
	# 		return mid3
	# 		end
	# 	end
	# index+=1
	# end
	start_index = 0
	last_index = array.length-1
	while start_index < last_index
		middle = (last_index + start_index)/2
		if middle == target
			return middle
		elsif middle < target
			start_index = middle + 1
		elsif array[middle]> target
			last_index = middle -1
		end
		return -1
	end
end

test_array = (100..200).to_a
puts binary_search(135, test_array) == 35

test_array = [13, 19, 24, 29, 32, 37, 43]
puts binary_search(35, test_array) == -1