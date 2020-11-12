# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
#
# Follow up: Could you implement a solution with a linear runtime complexity and without using extra memory?
#
#
#
# Example 1:
#
# Input: nums = [2,2,1]
# Output: 1
# Example 2:
#
# Input: nums = [4,1,2,1,2]
# Output: 4
# Example 3:
#
# Input: nums = [1]
# Output: 1
#
#
# Constraints:
#
# 1 <= nums.length <= 3 * 104
# -3 * 104 <= nums[i] <= 3 * 104
# Each element in the array appears twice except for one element which appears only once.

# @param {Integer[]} nums
# @return {Integer}

# i can iterate through each number and use variables pointer_1 and pointer_2
# pointer_1 can point to the first number in the array while pointer_2 keeps increment (moving to the right) to find that character's second instance
# if pointer_2 finds a second instance of the character, then pointer_1 shifts to the right
# the process repeats to check if the next character in the array has a match

# i could also use an array
# the first time i encounter a number, add it to the array
# the second time i encounter a number, remove it from the array
# whichever number is left in the array at the end is the number that only appears once

def single_number(nums)
    # create an array to hold the number when i encounter it
    single_number = []

    # iterate through the nums array
    nums.each do |num|
        # if the num is in the array, remove it
        if single_number.include?(num)
            single_number.delete(num)
        # if the num is not in the array, add it
        else
            single_number << num
        end
    end

    # at the end, return the number in this array because if it's still in the array, i know it's the only one
    single_number[0]
end
