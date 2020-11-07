# Given a 32-bit signed integer, reverse digits of an integer.
#
# Note:
# Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
#
#
#
# Example 1:
#
# Input: x = 123
# Output: 321
# Example 2:
#
# Input: x = -123
# Output: -321
# Example 3:
#
# Input: x = 120
# Output: 21
# Example 4:
#
# Input: x = 0
# Output: 0
#
#
# Constraints:
#
# -231 <= x <= 231 - 1

# @param {Integer} x
# @return {Integer}

# the function should return the digits of x in reverse
# if x has a negative sign in front of it, the negative sign should be preserved where it is
# if there is a trailing zero, remove it because zeros can't exist in the reversed format
# if the number is a zero, then zero is the output

def reverse(x)
    # create a variable to keep track of our reversed number
    reversed = 0

    # first, account for an edge case that returns 0 if x is 0
    return 0 if x == 0

    # second, account for the case that x is negative
    if x < 0
        x * -1
    end

    # reverse the integer
    # while x is greater than 0 (we know we're done when x hits 0)
    while x > 0
        # multiply reversed times 10 and add to the remainder of x divided by 10. at the end of the first iteration, reversed equals 3
        reversed = (reversed * 10) + (x % 10)
        # the next step is to remove the 3 from 123 and make x equal 12. we divide the number by 10, so divide 123/10, which is 12.3, but we only want the 12, so we call floor on 12.3
        x = (x/10).floor
    end

    # at the end, we return the reversed number based on whether x was originally positive or negative. if the x was negative, we multiply reversed by -1 and return that. if x was positive, we just return reversed.
    x < 0 ? (reversed * -1) : reversed
end
