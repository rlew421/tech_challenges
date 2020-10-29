# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
#
# Follow up: If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
#
#
#
# Example 1:
#
# Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.
# Example 2:
#
# Input: nums = [1]
# Output: 1
# Example 3:
#
# Input: nums = [0]
# Output: 0
# Example 4:
#
# Input: nums = [-1]
# Output: -1
# Example 5:
#
# Input: nums = [-2147483647]
# Output: -2147483647
#
#
# Constraints:
#
# 1 <= nums.length <= 2 * 104
# -231 <= nums[i] <= 231 - 1

# @param {Integer[]} nums
# @return {Integer}

# write a method that finds the subarray with the largest sum and returns that sum
# we need variables to keep track of the current array and another to keep track the greatest total

def max_sub_array(nums)
    # create a variable to keep track of the current array (add/subtract each element as we iterate over it)
    max_current = nums[0]
    # create another variable to keep track of the max total. this also starts at num[0]
    max_total = nums[0]

    # iterate through each number in the nums array
    nums.each do |num|
      # if the number we're on is greater than the max_current plus that number, then we set the max_current equal to the number
      max_current = (num > max_current + num) ? num : max_current + num
      max_total = max_current if max_current > max_total
    end
  max_total
end
