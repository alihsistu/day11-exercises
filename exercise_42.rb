# Exercise 42
# Write a method, compress_string(string), that accepts a string as input
# The method should return a new string where streaks of consecutive characters are compressed to a number followed by the character.
# For example "aaabbc" is compressed to "3a2bc".
# -------------------------------------
# 1 for each letter check how many of that letter are there in the array
# 2 if u know how many then
# 3 if there is one letter of its kine then just print is
# 4 if there are more 
# 5 multiply the charachter by the length of that letter's repetition
# 6 concatenate the results and print them
# -------------------------------------
# Write Your method code here
def compress_string(string)
    array = string.chars
    array.each do |el|
        return el.times
        if el.time == 1
            one = el
        end
        return el.time + el
    end
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, string, expected)
    actual = compress_string(string)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1,"aaabbc", "3a2bc")
    check_solution(2, "xxyyyyzz", "2x4y2z")
    check_solution(3, "qqqqq", "5q")
    check_solution(4, "mississippi", "mi2si2si2pi")
end

# Execute the tests.
run_tests()