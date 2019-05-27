# Exercise 38
# You will write a method, is_sorted?(array), that accepts an array of integers
# The method should return true if the elements are in increasing order, false otherwise.
# You may not use the Array#sort method in your solution
# -----------------------------------------
# Pseudocode
# 1 clone the array to array2
# 2 write a sorting method for array 2
# 3 check if array2 == array
# 4 if yes, return true
# 5 if no, return false
# -----------------------------------------
# Write Your method code here
def is_sorted?(array)

    array2 = []
    array2 = array.dup
    comparison = array2.length - 1
    comparison.times do |end_of_sorted|
        min_value_index = end_of_sorted
        for current_index in (end_of_sorted + 1)..comparison
            min_value_index = end_of_sorted if array[current_index] < array[min_value_index]
        end
        array[end_of_sorted], array[min_value_index] = array[min_value_index], array[end_of_sorted] if min_value_index != end_of_sorted
        end
    
    if array != array2
        return false
    elsif array == array2
        return true
    end
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = is_sorted?(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [1, 4, 10, 13, 15], true)
    check_solution(2, [1, 4, 10, 10, 13, 15], true)
    check_solution(3, [1, 2, 5, 3, 4 ], false)
end

# Execute the tests.
run_tests()