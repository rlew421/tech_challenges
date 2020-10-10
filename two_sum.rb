# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
#
# You can return the answer in any order.
#
#
#
# Example 1:
#
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Output: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:
#
# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:
#
# Input: nums = [3,3], target = 6
# Output: [0,1]
#
#
# Constraints:
#
# 2 <= nums.length <= 105
# -109 <= nums[i] <= 109
# -109 <= target <= 109
# Only one valid answer exists.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums_array, target_integer)
# Create a new hash where the keys are the original nums and the values are the difference between each number and the target integer
# Create an empty hash
    hash = {}
# Iterate over each number and its index in the numbers array
    nums_array.each_with_index do |number, i|
        # Subtract each number from the target integer to get the difference
        difference = target_integer - number
        # if the difference between a number and the target integer exists, return the index of the element where the difference exists
        return [hash[difference], i] if hash[difference]
        # if the difference between a number and the target integer doesn't exist, return the index of the original number we're iterating over
        hash[number] = i
    end
end
