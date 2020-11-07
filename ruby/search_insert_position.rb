#
# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
#
#
#
# Example 1:
#
# Input: nums = [1,3,5,6], target = 5
# Output: 2
# Example 2:
#
# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Example 3:
#
# Input: nums = [1,3,5,6], target = 7
# Output: 4
# Example 4:
#
# Input: nums = [1,3,5,6], target = 0
# Output: 0
# Example 5:
#
# Input: nums = [1], target = 0
# Output: 0
#
#
# Constraints:
#
# 1 <= nums.length <= 104
# -104 <= nums[i] <= 104
# nums contains distinct values sorted in ascending order.
# -104 <= target <= 104

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

# the numbers are sorted from lowest to highest and there are no repeats
# two tasks:
# if the target exists within nums, find its index
# if the target doesn't exist within nums, return index of where it should be in the array
# ex: nums = [1,3,5,6], target = 2

def search_insert(nums, target)
    # if target exists within nums array, find it and return its index
    # we need each_with_index
    nums.each_with_index do |num, index|
        # if the number equals the target, return that number's index. no number equals 2.
        if num == target
            return index
        # if the number is less than the target, use the next keyword to move on to the next number in the array. 1 is less than 2. move to the next number in the array, which is 3.
        elsif num < target
            next
        # if the number is greater than the target, return its index. we're now on the number 3. 3 is greater than 2, so return its index, which is 1.
        else
            return index
        end
    end
end
