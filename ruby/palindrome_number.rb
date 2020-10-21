# Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.
#
# Follow up: Could you solve it without converting the integer to a string?
#
#
#
# Example 1:
#
# Input: x = 121
# Output: true
# Example 2:
#
# Input: x = -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
# Example 3:
#
# Input: x = 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
# Example 4:
#
# Input: x = -101
# Output: false
#
#
# Constraints:
#
# -231 <= x <= 231 - 1

# @param {Integer} x
# @return {Boolean}

# Given an integer, we could split this integer into an array of numbers
    # If number[0] == number[-1] and if each number as we work our way inwards is equal to its counterpart, then the number is a palindrome. But, I think this approach would be complicated and take too long

# An integer is a palindrome if:
    # it reads the same forwards and backwards
    # is not a negative number
    # does not end in any 0's because in the case of when the numbers 10 or 100 are reversed, the 0's disappear and the number is just 1

def is_palindrome(number)
    # First, knock out the edge cases of negative numbers and numbers that end in 0
    # If the numbers is less than 0 OR if the number is evenly divisible by 10 with a remainder of 0 AND the number is not 0, then the number is not a palindrome. The number can't both be evenly divisible by 10 and not 0 if it is a palindrome.
    if (number < 0 || number % 10 == 0 && number != 0)
        false
    end

    # Set a variable called reverted_number equal to 0. This variable keeps track of the reverse of the original number.
    reverted_number = 0
    # While the number is greater than the reverted_number
    while(number > reverted_number)
    # To get the reverted number, we get the remainder of the number divided by 10. To check that the first number is equal to this remainder, we multiply the reverted number (originally 0) by 10 and add the two together.
        reverted_number = reverted_number * 10 + number % 10
    # We divide the original number by 10 to knock off the last digit
        number /= 10
    end

    # If the integer length is odd, we can get rid of the middle digit by dividing the reverted_number by 10
    # If the number is 242, the end of the while loop will return number = 24 and the reverted_number as 242.
    # Since the middle digit in the palindrome will equal itself, we can get rid of it. 242/10 will be 24.
    number == reverted_number || number == reverted_number/10
end
