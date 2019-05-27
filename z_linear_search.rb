# In Class Exercise: Linear Search
# Write a method, linear_search(array, target), that accepts an array and another input as target
# The method should use the linear search algorithm to return the position of the element where the target is found
# You may not use any Array or Enum methods except length or size
# You may not use any Enum derived iterations, only for, while or until


# 1. set index to zero
# 2. Loop through the array until i = array.length - 1
# 3. check if the value of the index = to the target
# 4. If true, return the index
# 5. afte finishes avaluating the condition, increase index by 1
# 6.




def linear_search(target, array)

	index = 0
	while index < array.length
		# this iterates throgh an array
		if array[index] == target
			return index
		end
		index+=1
	end
	return nil
	# ----------------------------------------
	# Done with until LOOP
	i = 0
	until i == array.length
		if array[i] == target
			return i
		end
	i+=1
	end
	return nil
end

random_numbers = [6,29,18,2,72,19,18,10,37]
p linear_search(18, random_numbers)
p linear_search(9, random_numbers)

