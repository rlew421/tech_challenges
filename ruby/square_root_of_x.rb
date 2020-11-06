#
# Implement int sqrt(int x).
#
# Compute and return the square root of x, where x is guaranteed to be a non-negative integer.
#
# Since the return type is an integer, the decimal digits are truncated and only the integer part of the result is returned.
#
# Example 1:
#
# Input: 4
# Output: 2
# Example 2:
#
# Input: 8
# Output: 2
# Explanation: The square root of 8 is 2.82842..., and since
#              the decimal part is truncated, 2 is returned.

# @param {Integer} x
# @return {Integer}

# the square root of x is a number that when multiplied by itself produces x
# ex: 2 * 2 = 4
# use binary search to divide the dataset to get rid of numbers that can't be possible solutions

def my_sqrt(x)
    # create variables left and right to cut down on the numbers to search through
    left = 1
    right = x

    # edge cases: if x is 0 or 1, just return x since 0 and 1 are their own square roots
    return x if x < 2

    while left < right
        # find the midpoint of the range of numbers we're looking at
        midpoint = left + ((right - left) / 2).floor

        # multiply the midpoint by itself to see if it equals x. if the midpoint does equal x, return it
        if midpoint * midpoint == x
            return midpoint
        # if the midpoint multiplified by itself is greater than x, eliminate the right half of the dataset by setting right equal to the midpoint
        elsif midpoint * midpoint > x
            right = midpoint
        # if the midpoint multiplied by itself is less than x, eliminate the left half of the dataset by setting left equal to the midpoint + 1
        elsif midpoint * midpoint < x
            left = midpoint + 1
        end
    end

    # at the end, return left - 1 (if we don't find a perfect square root for the number and we've gone a digit too far, we have to round down by 1)
    return left - 1
end
